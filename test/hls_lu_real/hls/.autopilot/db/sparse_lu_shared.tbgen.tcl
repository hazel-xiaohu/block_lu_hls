set moduleName sparse_lu_shared
set isTopModule 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set isPipelined_legacy 0
set pipeline_type none
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
set cdfgNum 21
set C_modelName {sparse_lu_shared}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ a_row int 32 regular {axi_master 0}  }
	{ a_col int 32 regular {axi_master 0}  }
	{ a_val int 32 regular {axi_master 0}  }
	{ l_row int 32 regular {axi_master 0}  }
	{ l_col int 32 regular {axi_master 0}  }
	{ l_val int 32 regular {axi_master 2}  }
	{ u_row int 32 regular {axi_master 0}  }
	{ u_col int 32 regular {axi_master 0}  }
	{ u_val int 32 regular {axi_master 2}  }
	{ x_row int 32 regular {axi_master 0}  }
	{ x_col int 32 regular {axi_master 0}  }
	{ x_val int 32 regular {axi_master 2}  }
	{ operation int 32 regular {axi_slave 0}  }
	{ A_rcsr int 64 regular {axi_slave 0}  }
	{ A_cid int 64 regular {axi_slave 0}  }
	{ A_val_r int 64 regular {axi_slave 0}  }
	{ L_rcsr int 64 regular {axi_slave 0}  }
	{ L_cid int 64 regular {axi_slave 0}  }
	{ L_val_r int 64 regular {axi_slave 0}  }
	{ U_rcsr int 64 regular {axi_slave 0}  }
	{ U_cid int 64 regular {axi_slave 0}  }
	{ U_val_r int 64 regular {axi_slave 0}  }
	{ X_rcsr int 64 regular {axi_slave 0}  }
	{ X_cid int 64 regular {axi_slave 0}  }
	{ X_val_r int 64 regular {axi_slave 0}  }
	{ n int 32 regular {axi_slave 0}  }
	{ a_nnz int 32 regular {axi_slave 0}  }
	{ l_nnz int 32 regular {axi_slave 0}  }
	{ u_nnz int 32 regular {axi_slave 0}  }
	{ x_rows int 32 regular {axi_slave 0}  }
	{ x_cols int 32 regular {axi_slave 0}  }
	{ x_nnz int 32 regular {axi_slave 0}  }
	{ pivot_eps float 32 regular {axi_slave 0}  }
	{ status int 32 regular {axi_slave 1}  }
	{ failed_row int 32 regular {axi_slave 1}  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "a_row", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READONLY", "id_num" : 1, "bitSlice":[ {"cElement": [{"cName": "A_rcsr","offset": { "type": "dynamic","port_name": "A_rcsr","bundle": "control_r"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "a_col", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READONLY", "id_num" : 1, "bitSlice":[ {"cElement": [{"cName": "A_cid","offset": { "type": "dynamic","port_name": "A_cid","bundle": "control_r"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "a_val", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READONLY", "id_num" : 1, "bitSlice":[ {"cElement": [{"cName": "A_val_r","offset": { "type": "dynamic","port_name": "A_val_r","bundle": "control_r"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "l_row", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READONLY", "id_num" : 1, "bitSlice":[ {"cElement": [{"cName": "L_rcsr","offset": { "type": "dynamic","port_name": "L_rcsr","bundle": "control_r"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "l_col", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READONLY", "id_num" : 1, "bitSlice":[ {"cElement": [{"cName": "L_cid","offset": { "type": "dynamic","port_name": "L_cid","bundle": "control_r"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "l_val", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READWRITE", "id_num" : 1, "bitSlice":[ {"cElement": [{"cName": "L_val_r","offset": { "type": "dynamic","port_name": "L_val_r","bundle": "control_r"},"direction": "READWRITE"}]}]} , 
 	{ "Name" : "u_row", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READONLY", "id_num" : 1, "bitSlice":[ {"cElement": [{"cName": "U_rcsr","offset": { "type": "dynamic","port_name": "U_rcsr","bundle": "control_r"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "u_col", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READONLY", "id_num" : 1, "bitSlice":[ {"cElement": [{"cName": "U_cid","offset": { "type": "dynamic","port_name": "U_cid","bundle": "control_r"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "u_val", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READWRITE", "id_num" : 1, "bitSlice":[ {"cElement": [{"cName": "U_val_r","offset": { "type": "dynamic","port_name": "U_val_r","bundle": "control_r"},"direction": "READWRITE"}]}]} , 
 	{ "Name" : "x_row", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READONLY", "id_num" : 1, "bitSlice":[ {"cElement": [{"cName": "X_rcsr","offset": { "type": "dynamic","port_name": "X_rcsr","bundle": "control_r"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "x_col", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READONLY", "id_num" : 1, "bitSlice":[ {"cElement": [{"cName": "X_cid","offset": { "type": "dynamic","port_name": "X_cid","bundle": "control_r"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "x_val", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READWRITE", "id_num" : 1, "bitSlice":[ {"cElement": [{"cName": "X_val_r","offset": { "type": "dynamic","port_name": "X_val_r","bundle": "control_r"},"direction": "READWRITE"}]}]} , 
 	{ "Name" : "operation", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":16}, "offset_end" : {"in":23}} , 
 	{ "Name" : "A_rcsr", "interface" : "axi_slave", "bundle":"control_r","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":16}, "offset_end" : {"in":27}} , 
 	{ "Name" : "A_cid", "interface" : "axi_slave", "bundle":"control_r","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":28}, "offset_end" : {"in":39}} , 
 	{ "Name" : "A_val_r", "interface" : "axi_slave", "bundle":"control_r","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":40}, "offset_end" : {"in":51}} , 
 	{ "Name" : "L_rcsr", "interface" : "axi_slave", "bundle":"control_r","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":52}, "offset_end" : {"in":63}} , 
 	{ "Name" : "L_cid", "interface" : "axi_slave", "bundle":"control_r","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":64}, "offset_end" : {"in":75}} , 
 	{ "Name" : "L_val_r", "interface" : "axi_slave", "bundle":"control_r","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":76}, "offset_end" : {"in":87}} , 
 	{ "Name" : "U_rcsr", "interface" : "axi_slave", "bundle":"control_r","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":88}, "offset_end" : {"in":99}} , 
 	{ "Name" : "U_cid", "interface" : "axi_slave", "bundle":"control_r","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":100}, "offset_end" : {"in":111}} , 
 	{ "Name" : "U_val_r", "interface" : "axi_slave", "bundle":"control_r","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":112}, "offset_end" : {"in":123}} , 
 	{ "Name" : "X_rcsr", "interface" : "axi_slave", "bundle":"control_r","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":124}, "offset_end" : {"in":135}} , 
 	{ "Name" : "X_cid", "interface" : "axi_slave", "bundle":"control_r","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":136}, "offset_end" : {"in":147}} , 
 	{ "Name" : "X_val_r", "interface" : "axi_slave", "bundle":"control_r","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":148}, "offset_end" : {"in":159}} , 
 	{ "Name" : "n", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":24}, "offset_end" : {"in":31}} , 
 	{ "Name" : "a_nnz", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":32}, "offset_end" : {"in":39}} , 
 	{ "Name" : "l_nnz", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":40}, "offset_end" : {"in":47}} , 
 	{ "Name" : "u_nnz", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":48}, "offset_end" : {"in":55}} , 
 	{ "Name" : "x_rows", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":56}, "offset_end" : {"in":63}} , 
 	{ "Name" : "x_cols", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":64}, "offset_end" : {"in":71}} , 
 	{ "Name" : "x_nnz", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":72}, "offset_end" : {"in":79}} , 
 	{ "Name" : "pivot_eps", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":80}, "offset_end" : {"in":87}} , 
 	{ "Name" : "status", "interface" : "axi_slave", "bundle":"control","type":"ap_vld","bitwidth" : 32, "direction" : "WRITEONLY", "offset" : {"out":88}, "offset_end" : {"out":95}} , 
 	{ "Name" : "failed_row", "interface" : "axi_slave", "bundle":"control","type":"ap_vld","bitwidth" : 32, "direction" : "WRITEONLY", "offset" : {"out":104}, "offset_end" : {"out":111}} ]}
# RTL Port declarations: 
set portNum 577
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ m_axi_a_row_AWVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_a_row_AWREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_a_row_AWADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_a_row_AWID sc_out sc_lv 1 signal 0 } 
	{ m_axi_a_row_AWLEN sc_out sc_lv 8 signal 0 } 
	{ m_axi_a_row_AWSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_a_row_AWBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_a_row_AWLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_a_row_AWCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_a_row_AWPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_a_row_AWQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_a_row_AWREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_a_row_AWUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_a_row_WVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_a_row_WREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_a_row_WDATA sc_out sc_lv 32 signal 0 } 
	{ m_axi_a_row_WSTRB sc_out sc_lv 4 signal 0 } 
	{ m_axi_a_row_WLAST sc_out sc_logic 1 signal 0 } 
	{ m_axi_a_row_WID sc_out sc_lv 1 signal 0 } 
	{ m_axi_a_row_WUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_a_row_ARVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_a_row_ARREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_a_row_ARADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_a_row_ARID sc_out sc_lv 1 signal 0 } 
	{ m_axi_a_row_ARLEN sc_out sc_lv 8 signal 0 } 
	{ m_axi_a_row_ARSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_a_row_ARBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_a_row_ARLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_a_row_ARCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_a_row_ARPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_a_row_ARQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_a_row_ARREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_a_row_ARUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_a_row_RVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_a_row_RREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_a_row_RDATA sc_in sc_lv 32 signal 0 } 
	{ m_axi_a_row_RLAST sc_in sc_logic 1 signal 0 } 
	{ m_axi_a_row_RID sc_in sc_lv 1 signal 0 } 
	{ m_axi_a_row_RUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_a_row_RRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_a_row_BVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_a_row_BREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_a_row_BRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_a_row_BID sc_in sc_lv 1 signal 0 } 
	{ m_axi_a_row_BUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_a_col_AWVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_a_col_AWREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_a_col_AWADDR sc_out sc_lv 64 signal 1 } 
	{ m_axi_a_col_AWID sc_out sc_lv 1 signal 1 } 
	{ m_axi_a_col_AWLEN sc_out sc_lv 8 signal 1 } 
	{ m_axi_a_col_AWSIZE sc_out sc_lv 3 signal 1 } 
	{ m_axi_a_col_AWBURST sc_out sc_lv 2 signal 1 } 
	{ m_axi_a_col_AWLOCK sc_out sc_lv 2 signal 1 } 
	{ m_axi_a_col_AWCACHE sc_out sc_lv 4 signal 1 } 
	{ m_axi_a_col_AWPROT sc_out sc_lv 3 signal 1 } 
	{ m_axi_a_col_AWQOS sc_out sc_lv 4 signal 1 } 
	{ m_axi_a_col_AWREGION sc_out sc_lv 4 signal 1 } 
	{ m_axi_a_col_AWUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_a_col_WVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_a_col_WREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_a_col_WDATA sc_out sc_lv 32 signal 1 } 
	{ m_axi_a_col_WSTRB sc_out sc_lv 4 signal 1 } 
	{ m_axi_a_col_WLAST sc_out sc_logic 1 signal 1 } 
	{ m_axi_a_col_WID sc_out sc_lv 1 signal 1 } 
	{ m_axi_a_col_WUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_a_col_ARVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_a_col_ARREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_a_col_ARADDR sc_out sc_lv 64 signal 1 } 
	{ m_axi_a_col_ARID sc_out sc_lv 1 signal 1 } 
	{ m_axi_a_col_ARLEN sc_out sc_lv 8 signal 1 } 
	{ m_axi_a_col_ARSIZE sc_out sc_lv 3 signal 1 } 
	{ m_axi_a_col_ARBURST sc_out sc_lv 2 signal 1 } 
	{ m_axi_a_col_ARLOCK sc_out sc_lv 2 signal 1 } 
	{ m_axi_a_col_ARCACHE sc_out sc_lv 4 signal 1 } 
	{ m_axi_a_col_ARPROT sc_out sc_lv 3 signal 1 } 
	{ m_axi_a_col_ARQOS sc_out sc_lv 4 signal 1 } 
	{ m_axi_a_col_ARREGION sc_out sc_lv 4 signal 1 } 
	{ m_axi_a_col_ARUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_a_col_RVALID sc_in sc_logic 1 signal 1 } 
	{ m_axi_a_col_RREADY sc_out sc_logic 1 signal 1 } 
	{ m_axi_a_col_RDATA sc_in sc_lv 32 signal 1 } 
	{ m_axi_a_col_RLAST sc_in sc_logic 1 signal 1 } 
	{ m_axi_a_col_RID sc_in sc_lv 1 signal 1 } 
	{ m_axi_a_col_RUSER sc_in sc_lv 1 signal 1 } 
	{ m_axi_a_col_RRESP sc_in sc_lv 2 signal 1 } 
	{ m_axi_a_col_BVALID sc_in sc_logic 1 signal 1 } 
	{ m_axi_a_col_BREADY sc_out sc_logic 1 signal 1 } 
	{ m_axi_a_col_BRESP sc_in sc_lv 2 signal 1 } 
	{ m_axi_a_col_BID sc_in sc_lv 1 signal 1 } 
	{ m_axi_a_col_BUSER sc_in sc_lv 1 signal 1 } 
	{ m_axi_a_val_AWVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_a_val_AWREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_a_val_AWADDR sc_out sc_lv 64 signal 2 } 
	{ m_axi_a_val_AWID sc_out sc_lv 1 signal 2 } 
	{ m_axi_a_val_AWLEN sc_out sc_lv 8 signal 2 } 
	{ m_axi_a_val_AWSIZE sc_out sc_lv 3 signal 2 } 
	{ m_axi_a_val_AWBURST sc_out sc_lv 2 signal 2 } 
	{ m_axi_a_val_AWLOCK sc_out sc_lv 2 signal 2 } 
	{ m_axi_a_val_AWCACHE sc_out sc_lv 4 signal 2 } 
	{ m_axi_a_val_AWPROT sc_out sc_lv 3 signal 2 } 
	{ m_axi_a_val_AWQOS sc_out sc_lv 4 signal 2 } 
	{ m_axi_a_val_AWREGION sc_out sc_lv 4 signal 2 } 
	{ m_axi_a_val_AWUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_a_val_WVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_a_val_WREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_a_val_WDATA sc_out sc_lv 32 signal 2 } 
	{ m_axi_a_val_WSTRB sc_out sc_lv 4 signal 2 } 
	{ m_axi_a_val_WLAST sc_out sc_logic 1 signal 2 } 
	{ m_axi_a_val_WID sc_out sc_lv 1 signal 2 } 
	{ m_axi_a_val_WUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_a_val_ARVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_a_val_ARREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_a_val_ARADDR sc_out sc_lv 64 signal 2 } 
	{ m_axi_a_val_ARID sc_out sc_lv 1 signal 2 } 
	{ m_axi_a_val_ARLEN sc_out sc_lv 8 signal 2 } 
	{ m_axi_a_val_ARSIZE sc_out sc_lv 3 signal 2 } 
	{ m_axi_a_val_ARBURST sc_out sc_lv 2 signal 2 } 
	{ m_axi_a_val_ARLOCK sc_out sc_lv 2 signal 2 } 
	{ m_axi_a_val_ARCACHE sc_out sc_lv 4 signal 2 } 
	{ m_axi_a_val_ARPROT sc_out sc_lv 3 signal 2 } 
	{ m_axi_a_val_ARQOS sc_out sc_lv 4 signal 2 } 
	{ m_axi_a_val_ARREGION sc_out sc_lv 4 signal 2 } 
	{ m_axi_a_val_ARUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_a_val_RVALID sc_in sc_logic 1 signal 2 } 
	{ m_axi_a_val_RREADY sc_out sc_logic 1 signal 2 } 
	{ m_axi_a_val_RDATA sc_in sc_lv 32 signal 2 } 
	{ m_axi_a_val_RLAST sc_in sc_logic 1 signal 2 } 
	{ m_axi_a_val_RID sc_in sc_lv 1 signal 2 } 
	{ m_axi_a_val_RUSER sc_in sc_lv 1 signal 2 } 
	{ m_axi_a_val_RRESP sc_in sc_lv 2 signal 2 } 
	{ m_axi_a_val_BVALID sc_in sc_logic 1 signal 2 } 
	{ m_axi_a_val_BREADY sc_out sc_logic 1 signal 2 } 
	{ m_axi_a_val_BRESP sc_in sc_lv 2 signal 2 } 
	{ m_axi_a_val_BID sc_in sc_lv 1 signal 2 } 
	{ m_axi_a_val_BUSER sc_in sc_lv 1 signal 2 } 
	{ m_axi_l_row_AWVALID sc_out sc_logic 1 signal 3 } 
	{ m_axi_l_row_AWREADY sc_in sc_logic 1 signal 3 } 
	{ m_axi_l_row_AWADDR sc_out sc_lv 64 signal 3 } 
	{ m_axi_l_row_AWID sc_out sc_lv 1 signal 3 } 
	{ m_axi_l_row_AWLEN sc_out sc_lv 8 signal 3 } 
	{ m_axi_l_row_AWSIZE sc_out sc_lv 3 signal 3 } 
	{ m_axi_l_row_AWBURST sc_out sc_lv 2 signal 3 } 
	{ m_axi_l_row_AWLOCK sc_out sc_lv 2 signal 3 } 
	{ m_axi_l_row_AWCACHE sc_out sc_lv 4 signal 3 } 
	{ m_axi_l_row_AWPROT sc_out sc_lv 3 signal 3 } 
	{ m_axi_l_row_AWQOS sc_out sc_lv 4 signal 3 } 
	{ m_axi_l_row_AWREGION sc_out sc_lv 4 signal 3 } 
	{ m_axi_l_row_AWUSER sc_out sc_lv 1 signal 3 } 
	{ m_axi_l_row_WVALID sc_out sc_logic 1 signal 3 } 
	{ m_axi_l_row_WREADY sc_in sc_logic 1 signal 3 } 
	{ m_axi_l_row_WDATA sc_out sc_lv 32 signal 3 } 
	{ m_axi_l_row_WSTRB sc_out sc_lv 4 signal 3 } 
	{ m_axi_l_row_WLAST sc_out sc_logic 1 signal 3 } 
	{ m_axi_l_row_WID sc_out sc_lv 1 signal 3 } 
	{ m_axi_l_row_WUSER sc_out sc_lv 1 signal 3 } 
	{ m_axi_l_row_ARVALID sc_out sc_logic 1 signal 3 } 
	{ m_axi_l_row_ARREADY sc_in sc_logic 1 signal 3 } 
	{ m_axi_l_row_ARADDR sc_out sc_lv 64 signal 3 } 
	{ m_axi_l_row_ARID sc_out sc_lv 1 signal 3 } 
	{ m_axi_l_row_ARLEN sc_out sc_lv 8 signal 3 } 
	{ m_axi_l_row_ARSIZE sc_out sc_lv 3 signal 3 } 
	{ m_axi_l_row_ARBURST sc_out sc_lv 2 signal 3 } 
	{ m_axi_l_row_ARLOCK sc_out sc_lv 2 signal 3 } 
	{ m_axi_l_row_ARCACHE sc_out sc_lv 4 signal 3 } 
	{ m_axi_l_row_ARPROT sc_out sc_lv 3 signal 3 } 
	{ m_axi_l_row_ARQOS sc_out sc_lv 4 signal 3 } 
	{ m_axi_l_row_ARREGION sc_out sc_lv 4 signal 3 } 
	{ m_axi_l_row_ARUSER sc_out sc_lv 1 signal 3 } 
	{ m_axi_l_row_RVALID sc_in sc_logic 1 signal 3 } 
	{ m_axi_l_row_RREADY sc_out sc_logic 1 signal 3 } 
	{ m_axi_l_row_RDATA sc_in sc_lv 32 signal 3 } 
	{ m_axi_l_row_RLAST sc_in sc_logic 1 signal 3 } 
	{ m_axi_l_row_RID sc_in sc_lv 1 signal 3 } 
	{ m_axi_l_row_RUSER sc_in sc_lv 1 signal 3 } 
	{ m_axi_l_row_RRESP sc_in sc_lv 2 signal 3 } 
	{ m_axi_l_row_BVALID sc_in sc_logic 1 signal 3 } 
	{ m_axi_l_row_BREADY sc_out sc_logic 1 signal 3 } 
	{ m_axi_l_row_BRESP sc_in sc_lv 2 signal 3 } 
	{ m_axi_l_row_BID sc_in sc_lv 1 signal 3 } 
	{ m_axi_l_row_BUSER sc_in sc_lv 1 signal 3 } 
	{ m_axi_l_col_AWVALID sc_out sc_logic 1 signal 4 } 
	{ m_axi_l_col_AWREADY sc_in sc_logic 1 signal 4 } 
	{ m_axi_l_col_AWADDR sc_out sc_lv 64 signal 4 } 
	{ m_axi_l_col_AWID sc_out sc_lv 1 signal 4 } 
	{ m_axi_l_col_AWLEN sc_out sc_lv 8 signal 4 } 
	{ m_axi_l_col_AWSIZE sc_out sc_lv 3 signal 4 } 
	{ m_axi_l_col_AWBURST sc_out sc_lv 2 signal 4 } 
	{ m_axi_l_col_AWLOCK sc_out sc_lv 2 signal 4 } 
	{ m_axi_l_col_AWCACHE sc_out sc_lv 4 signal 4 } 
	{ m_axi_l_col_AWPROT sc_out sc_lv 3 signal 4 } 
	{ m_axi_l_col_AWQOS sc_out sc_lv 4 signal 4 } 
	{ m_axi_l_col_AWREGION sc_out sc_lv 4 signal 4 } 
	{ m_axi_l_col_AWUSER sc_out sc_lv 1 signal 4 } 
	{ m_axi_l_col_WVALID sc_out sc_logic 1 signal 4 } 
	{ m_axi_l_col_WREADY sc_in sc_logic 1 signal 4 } 
	{ m_axi_l_col_WDATA sc_out sc_lv 32 signal 4 } 
	{ m_axi_l_col_WSTRB sc_out sc_lv 4 signal 4 } 
	{ m_axi_l_col_WLAST sc_out sc_logic 1 signal 4 } 
	{ m_axi_l_col_WID sc_out sc_lv 1 signal 4 } 
	{ m_axi_l_col_WUSER sc_out sc_lv 1 signal 4 } 
	{ m_axi_l_col_ARVALID sc_out sc_logic 1 signal 4 } 
	{ m_axi_l_col_ARREADY sc_in sc_logic 1 signal 4 } 
	{ m_axi_l_col_ARADDR sc_out sc_lv 64 signal 4 } 
	{ m_axi_l_col_ARID sc_out sc_lv 1 signal 4 } 
	{ m_axi_l_col_ARLEN sc_out sc_lv 8 signal 4 } 
	{ m_axi_l_col_ARSIZE sc_out sc_lv 3 signal 4 } 
	{ m_axi_l_col_ARBURST sc_out sc_lv 2 signal 4 } 
	{ m_axi_l_col_ARLOCK sc_out sc_lv 2 signal 4 } 
	{ m_axi_l_col_ARCACHE sc_out sc_lv 4 signal 4 } 
	{ m_axi_l_col_ARPROT sc_out sc_lv 3 signal 4 } 
	{ m_axi_l_col_ARQOS sc_out sc_lv 4 signal 4 } 
	{ m_axi_l_col_ARREGION sc_out sc_lv 4 signal 4 } 
	{ m_axi_l_col_ARUSER sc_out sc_lv 1 signal 4 } 
	{ m_axi_l_col_RVALID sc_in sc_logic 1 signal 4 } 
	{ m_axi_l_col_RREADY sc_out sc_logic 1 signal 4 } 
	{ m_axi_l_col_RDATA sc_in sc_lv 32 signal 4 } 
	{ m_axi_l_col_RLAST sc_in sc_logic 1 signal 4 } 
	{ m_axi_l_col_RID sc_in sc_lv 1 signal 4 } 
	{ m_axi_l_col_RUSER sc_in sc_lv 1 signal 4 } 
	{ m_axi_l_col_RRESP sc_in sc_lv 2 signal 4 } 
	{ m_axi_l_col_BVALID sc_in sc_logic 1 signal 4 } 
	{ m_axi_l_col_BREADY sc_out sc_logic 1 signal 4 } 
	{ m_axi_l_col_BRESP sc_in sc_lv 2 signal 4 } 
	{ m_axi_l_col_BID sc_in sc_lv 1 signal 4 } 
	{ m_axi_l_col_BUSER sc_in sc_lv 1 signal 4 } 
	{ m_axi_l_val_AWVALID sc_out sc_logic 1 signal 5 } 
	{ m_axi_l_val_AWREADY sc_in sc_logic 1 signal 5 } 
	{ m_axi_l_val_AWADDR sc_out sc_lv 64 signal 5 } 
	{ m_axi_l_val_AWID sc_out sc_lv 1 signal 5 } 
	{ m_axi_l_val_AWLEN sc_out sc_lv 8 signal 5 } 
	{ m_axi_l_val_AWSIZE sc_out sc_lv 3 signal 5 } 
	{ m_axi_l_val_AWBURST sc_out sc_lv 2 signal 5 } 
	{ m_axi_l_val_AWLOCK sc_out sc_lv 2 signal 5 } 
	{ m_axi_l_val_AWCACHE sc_out sc_lv 4 signal 5 } 
	{ m_axi_l_val_AWPROT sc_out sc_lv 3 signal 5 } 
	{ m_axi_l_val_AWQOS sc_out sc_lv 4 signal 5 } 
	{ m_axi_l_val_AWREGION sc_out sc_lv 4 signal 5 } 
	{ m_axi_l_val_AWUSER sc_out sc_lv 1 signal 5 } 
	{ m_axi_l_val_WVALID sc_out sc_logic 1 signal 5 } 
	{ m_axi_l_val_WREADY sc_in sc_logic 1 signal 5 } 
	{ m_axi_l_val_WDATA sc_out sc_lv 32 signal 5 } 
	{ m_axi_l_val_WSTRB sc_out sc_lv 4 signal 5 } 
	{ m_axi_l_val_WLAST sc_out sc_logic 1 signal 5 } 
	{ m_axi_l_val_WID sc_out sc_lv 1 signal 5 } 
	{ m_axi_l_val_WUSER sc_out sc_lv 1 signal 5 } 
	{ m_axi_l_val_ARVALID sc_out sc_logic 1 signal 5 } 
	{ m_axi_l_val_ARREADY sc_in sc_logic 1 signal 5 } 
	{ m_axi_l_val_ARADDR sc_out sc_lv 64 signal 5 } 
	{ m_axi_l_val_ARID sc_out sc_lv 1 signal 5 } 
	{ m_axi_l_val_ARLEN sc_out sc_lv 8 signal 5 } 
	{ m_axi_l_val_ARSIZE sc_out sc_lv 3 signal 5 } 
	{ m_axi_l_val_ARBURST sc_out sc_lv 2 signal 5 } 
	{ m_axi_l_val_ARLOCK sc_out sc_lv 2 signal 5 } 
	{ m_axi_l_val_ARCACHE sc_out sc_lv 4 signal 5 } 
	{ m_axi_l_val_ARPROT sc_out sc_lv 3 signal 5 } 
	{ m_axi_l_val_ARQOS sc_out sc_lv 4 signal 5 } 
	{ m_axi_l_val_ARREGION sc_out sc_lv 4 signal 5 } 
	{ m_axi_l_val_ARUSER sc_out sc_lv 1 signal 5 } 
	{ m_axi_l_val_RVALID sc_in sc_logic 1 signal 5 } 
	{ m_axi_l_val_RREADY sc_out sc_logic 1 signal 5 } 
	{ m_axi_l_val_RDATA sc_in sc_lv 32 signal 5 } 
	{ m_axi_l_val_RLAST sc_in sc_logic 1 signal 5 } 
	{ m_axi_l_val_RID sc_in sc_lv 1 signal 5 } 
	{ m_axi_l_val_RUSER sc_in sc_lv 1 signal 5 } 
	{ m_axi_l_val_RRESP sc_in sc_lv 2 signal 5 } 
	{ m_axi_l_val_BVALID sc_in sc_logic 1 signal 5 } 
	{ m_axi_l_val_BREADY sc_out sc_logic 1 signal 5 } 
	{ m_axi_l_val_BRESP sc_in sc_lv 2 signal 5 } 
	{ m_axi_l_val_BID sc_in sc_lv 1 signal 5 } 
	{ m_axi_l_val_BUSER sc_in sc_lv 1 signal 5 } 
	{ m_axi_u_row_AWVALID sc_out sc_logic 1 signal 6 } 
	{ m_axi_u_row_AWREADY sc_in sc_logic 1 signal 6 } 
	{ m_axi_u_row_AWADDR sc_out sc_lv 64 signal 6 } 
	{ m_axi_u_row_AWID sc_out sc_lv 1 signal 6 } 
	{ m_axi_u_row_AWLEN sc_out sc_lv 8 signal 6 } 
	{ m_axi_u_row_AWSIZE sc_out sc_lv 3 signal 6 } 
	{ m_axi_u_row_AWBURST sc_out sc_lv 2 signal 6 } 
	{ m_axi_u_row_AWLOCK sc_out sc_lv 2 signal 6 } 
	{ m_axi_u_row_AWCACHE sc_out sc_lv 4 signal 6 } 
	{ m_axi_u_row_AWPROT sc_out sc_lv 3 signal 6 } 
	{ m_axi_u_row_AWQOS sc_out sc_lv 4 signal 6 } 
	{ m_axi_u_row_AWREGION sc_out sc_lv 4 signal 6 } 
	{ m_axi_u_row_AWUSER sc_out sc_lv 1 signal 6 } 
	{ m_axi_u_row_WVALID sc_out sc_logic 1 signal 6 } 
	{ m_axi_u_row_WREADY sc_in sc_logic 1 signal 6 } 
	{ m_axi_u_row_WDATA sc_out sc_lv 32 signal 6 } 
	{ m_axi_u_row_WSTRB sc_out sc_lv 4 signal 6 } 
	{ m_axi_u_row_WLAST sc_out sc_logic 1 signal 6 } 
	{ m_axi_u_row_WID sc_out sc_lv 1 signal 6 } 
	{ m_axi_u_row_WUSER sc_out sc_lv 1 signal 6 } 
	{ m_axi_u_row_ARVALID sc_out sc_logic 1 signal 6 } 
	{ m_axi_u_row_ARREADY sc_in sc_logic 1 signal 6 } 
	{ m_axi_u_row_ARADDR sc_out sc_lv 64 signal 6 } 
	{ m_axi_u_row_ARID sc_out sc_lv 1 signal 6 } 
	{ m_axi_u_row_ARLEN sc_out sc_lv 8 signal 6 } 
	{ m_axi_u_row_ARSIZE sc_out sc_lv 3 signal 6 } 
	{ m_axi_u_row_ARBURST sc_out sc_lv 2 signal 6 } 
	{ m_axi_u_row_ARLOCK sc_out sc_lv 2 signal 6 } 
	{ m_axi_u_row_ARCACHE sc_out sc_lv 4 signal 6 } 
	{ m_axi_u_row_ARPROT sc_out sc_lv 3 signal 6 } 
	{ m_axi_u_row_ARQOS sc_out sc_lv 4 signal 6 } 
	{ m_axi_u_row_ARREGION sc_out sc_lv 4 signal 6 } 
	{ m_axi_u_row_ARUSER sc_out sc_lv 1 signal 6 } 
	{ m_axi_u_row_RVALID sc_in sc_logic 1 signal 6 } 
	{ m_axi_u_row_RREADY sc_out sc_logic 1 signal 6 } 
	{ m_axi_u_row_RDATA sc_in sc_lv 32 signal 6 } 
	{ m_axi_u_row_RLAST sc_in sc_logic 1 signal 6 } 
	{ m_axi_u_row_RID sc_in sc_lv 1 signal 6 } 
	{ m_axi_u_row_RUSER sc_in sc_lv 1 signal 6 } 
	{ m_axi_u_row_RRESP sc_in sc_lv 2 signal 6 } 
	{ m_axi_u_row_BVALID sc_in sc_logic 1 signal 6 } 
	{ m_axi_u_row_BREADY sc_out sc_logic 1 signal 6 } 
	{ m_axi_u_row_BRESP sc_in sc_lv 2 signal 6 } 
	{ m_axi_u_row_BID sc_in sc_lv 1 signal 6 } 
	{ m_axi_u_row_BUSER sc_in sc_lv 1 signal 6 } 
	{ m_axi_u_col_AWVALID sc_out sc_logic 1 signal 7 } 
	{ m_axi_u_col_AWREADY sc_in sc_logic 1 signal 7 } 
	{ m_axi_u_col_AWADDR sc_out sc_lv 64 signal 7 } 
	{ m_axi_u_col_AWID sc_out sc_lv 1 signal 7 } 
	{ m_axi_u_col_AWLEN sc_out sc_lv 8 signal 7 } 
	{ m_axi_u_col_AWSIZE sc_out sc_lv 3 signal 7 } 
	{ m_axi_u_col_AWBURST sc_out sc_lv 2 signal 7 } 
	{ m_axi_u_col_AWLOCK sc_out sc_lv 2 signal 7 } 
	{ m_axi_u_col_AWCACHE sc_out sc_lv 4 signal 7 } 
	{ m_axi_u_col_AWPROT sc_out sc_lv 3 signal 7 } 
	{ m_axi_u_col_AWQOS sc_out sc_lv 4 signal 7 } 
	{ m_axi_u_col_AWREGION sc_out sc_lv 4 signal 7 } 
	{ m_axi_u_col_AWUSER sc_out sc_lv 1 signal 7 } 
	{ m_axi_u_col_WVALID sc_out sc_logic 1 signal 7 } 
	{ m_axi_u_col_WREADY sc_in sc_logic 1 signal 7 } 
	{ m_axi_u_col_WDATA sc_out sc_lv 32 signal 7 } 
	{ m_axi_u_col_WSTRB sc_out sc_lv 4 signal 7 } 
	{ m_axi_u_col_WLAST sc_out sc_logic 1 signal 7 } 
	{ m_axi_u_col_WID sc_out sc_lv 1 signal 7 } 
	{ m_axi_u_col_WUSER sc_out sc_lv 1 signal 7 } 
	{ m_axi_u_col_ARVALID sc_out sc_logic 1 signal 7 } 
	{ m_axi_u_col_ARREADY sc_in sc_logic 1 signal 7 } 
	{ m_axi_u_col_ARADDR sc_out sc_lv 64 signal 7 } 
	{ m_axi_u_col_ARID sc_out sc_lv 1 signal 7 } 
	{ m_axi_u_col_ARLEN sc_out sc_lv 8 signal 7 } 
	{ m_axi_u_col_ARSIZE sc_out sc_lv 3 signal 7 } 
	{ m_axi_u_col_ARBURST sc_out sc_lv 2 signal 7 } 
	{ m_axi_u_col_ARLOCK sc_out sc_lv 2 signal 7 } 
	{ m_axi_u_col_ARCACHE sc_out sc_lv 4 signal 7 } 
	{ m_axi_u_col_ARPROT sc_out sc_lv 3 signal 7 } 
	{ m_axi_u_col_ARQOS sc_out sc_lv 4 signal 7 } 
	{ m_axi_u_col_ARREGION sc_out sc_lv 4 signal 7 } 
	{ m_axi_u_col_ARUSER sc_out sc_lv 1 signal 7 } 
	{ m_axi_u_col_RVALID sc_in sc_logic 1 signal 7 } 
	{ m_axi_u_col_RREADY sc_out sc_logic 1 signal 7 } 
	{ m_axi_u_col_RDATA sc_in sc_lv 32 signal 7 } 
	{ m_axi_u_col_RLAST sc_in sc_logic 1 signal 7 } 
	{ m_axi_u_col_RID sc_in sc_lv 1 signal 7 } 
	{ m_axi_u_col_RUSER sc_in sc_lv 1 signal 7 } 
	{ m_axi_u_col_RRESP sc_in sc_lv 2 signal 7 } 
	{ m_axi_u_col_BVALID sc_in sc_logic 1 signal 7 } 
	{ m_axi_u_col_BREADY sc_out sc_logic 1 signal 7 } 
	{ m_axi_u_col_BRESP sc_in sc_lv 2 signal 7 } 
	{ m_axi_u_col_BID sc_in sc_lv 1 signal 7 } 
	{ m_axi_u_col_BUSER sc_in sc_lv 1 signal 7 } 
	{ m_axi_u_val_AWVALID sc_out sc_logic 1 signal 8 } 
	{ m_axi_u_val_AWREADY sc_in sc_logic 1 signal 8 } 
	{ m_axi_u_val_AWADDR sc_out sc_lv 64 signal 8 } 
	{ m_axi_u_val_AWID sc_out sc_lv 1 signal 8 } 
	{ m_axi_u_val_AWLEN sc_out sc_lv 8 signal 8 } 
	{ m_axi_u_val_AWSIZE sc_out sc_lv 3 signal 8 } 
	{ m_axi_u_val_AWBURST sc_out sc_lv 2 signal 8 } 
	{ m_axi_u_val_AWLOCK sc_out sc_lv 2 signal 8 } 
	{ m_axi_u_val_AWCACHE sc_out sc_lv 4 signal 8 } 
	{ m_axi_u_val_AWPROT sc_out sc_lv 3 signal 8 } 
	{ m_axi_u_val_AWQOS sc_out sc_lv 4 signal 8 } 
	{ m_axi_u_val_AWREGION sc_out sc_lv 4 signal 8 } 
	{ m_axi_u_val_AWUSER sc_out sc_lv 1 signal 8 } 
	{ m_axi_u_val_WVALID sc_out sc_logic 1 signal 8 } 
	{ m_axi_u_val_WREADY sc_in sc_logic 1 signal 8 } 
	{ m_axi_u_val_WDATA sc_out sc_lv 32 signal 8 } 
	{ m_axi_u_val_WSTRB sc_out sc_lv 4 signal 8 } 
	{ m_axi_u_val_WLAST sc_out sc_logic 1 signal 8 } 
	{ m_axi_u_val_WID sc_out sc_lv 1 signal 8 } 
	{ m_axi_u_val_WUSER sc_out sc_lv 1 signal 8 } 
	{ m_axi_u_val_ARVALID sc_out sc_logic 1 signal 8 } 
	{ m_axi_u_val_ARREADY sc_in sc_logic 1 signal 8 } 
	{ m_axi_u_val_ARADDR sc_out sc_lv 64 signal 8 } 
	{ m_axi_u_val_ARID sc_out sc_lv 1 signal 8 } 
	{ m_axi_u_val_ARLEN sc_out sc_lv 8 signal 8 } 
	{ m_axi_u_val_ARSIZE sc_out sc_lv 3 signal 8 } 
	{ m_axi_u_val_ARBURST sc_out sc_lv 2 signal 8 } 
	{ m_axi_u_val_ARLOCK sc_out sc_lv 2 signal 8 } 
	{ m_axi_u_val_ARCACHE sc_out sc_lv 4 signal 8 } 
	{ m_axi_u_val_ARPROT sc_out sc_lv 3 signal 8 } 
	{ m_axi_u_val_ARQOS sc_out sc_lv 4 signal 8 } 
	{ m_axi_u_val_ARREGION sc_out sc_lv 4 signal 8 } 
	{ m_axi_u_val_ARUSER sc_out sc_lv 1 signal 8 } 
	{ m_axi_u_val_RVALID sc_in sc_logic 1 signal 8 } 
	{ m_axi_u_val_RREADY sc_out sc_logic 1 signal 8 } 
	{ m_axi_u_val_RDATA sc_in sc_lv 32 signal 8 } 
	{ m_axi_u_val_RLAST sc_in sc_logic 1 signal 8 } 
	{ m_axi_u_val_RID sc_in sc_lv 1 signal 8 } 
	{ m_axi_u_val_RUSER sc_in sc_lv 1 signal 8 } 
	{ m_axi_u_val_RRESP sc_in sc_lv 2 signal 8 } 
	{ m_axi_u_val_BVALID sc_in sc_logic 1 signal 8 } 
	{ m_axi_u_val_BREADY sc_out sc_logic 1 signal 8 } 
	{ m_axi_u_val_BRESP sc_in sc_lv 2 signal 8 } 
	{ m_axi_u_val_BID sc_in sc_lv 1 signal 8 } 
	{ m_axi_u_val_BUSER sc_in sc_lv 1 signal 8 } 
	{ m_axi_x_row_AWVALID sc_out sc_logic 1 signal 9 } 
	{ m_axi_x_row_AWREADY sc_in sc_logic 1 signal 9 } 
	{ m_axi_x_row_AWADDR sc_out sc_lv 64 signal 9 } 
	{ m_axi_x_row_AWID sc_out sc_lv 1 signal 9 } 
	{ m_axi_x_row_AWLEN sc_out sc_lv 8 signal 9 } 
	{ m_axi_x_row_AWSIZE sc_out sc_lv 3 signal 9 } 
	{ m_axi_x_row_AWBURST sc_out sc_lv 2 signal 9 } 
	{ m_axi_x_row_AWLOCK sc_out sc_lv 2 signal 9 } 
	{ m_axi_x_row_AWCACHE sc_out sc_lv 4 signal 9 } 
	{ m_axi_x_row_AWPROT sc_out sc_lv 3 signal 9 } 
	{ m_axi_x_row_AWQOS sc_out sc_lv 4 signal 9 } 
	{ m_axi_x_row_AWREGION sc_out sc_lv 4 signal 9 } 
	{ m_axi_x_row_AWUSER sc_out sc_lv 1 signal 9 } 
	{ m_axi_x_row_WVALID sc_out sc_logic 1 signal 9 } 
	{ m_axi_x_row_WREADY sc_in sc_logic 1 signal 9 } 
	{ m_axi_x_row_WDATA sc_out sc_lv 32 signal 9 } 
	{ m_axi_x_row_WSTRB sc_out sc_lv 4 signal 9 } 
	{ m_axi_x_row_WLAST sc_out sc_logic 1 signal 9 } 
	{ m_axi_x_row_WID sc_out sc_lv 1 signal 9 } 
	{ m_axi_x_row_WUSER sc_out sc_lv 1 signal 9 } 
	{ m_axi_x_row_ARVALID sc_out sc_logic 1 signal 9 } 
	{ m_axi_x_row_ARREADY sc_in sc_logic 1 signal 9 } 
	{ m_axi_x_row_ARADDR sc_out sc_lv 64 signal 9 } 
	{ m_axi_x_row_ARID sc_out sc_lv 1 signal 9 } 
	{ m_axi_x_row_ARLEN sc_out sc_lv 8 signal 9 } 
	{ m_axi_x_row_ARSIZE sc_out sc_lv 3 signal 9 } 
	{ m_axi_x_row_ARBURST sc_out sc_lv 2 signal 9 } 
	{ m_axi_x_row_ARLOCK sc_out sc_lv 2 signal 9 } 
	{ m_axi_x_row_ARCACHE sc_out sc_lv 4 signal 9 } 
	{ m_axi_x_row_ARPROT sc_out sc_lv 3 signal 9 } 
	{ m_axi_x_row_ARQOS sc_out sc_lv 4 signal 9 } 
	{ m_axi_x_row_ARREGION sc_out sc_lv 4 signal 9 } 
	{ m_axi_x_row_ARUSER sc_out sc_lv 1 signal 9 } 
	{ m_axi_x_row_RVALID sc_in sc_logic 1 signal 9 } 
	{ m_axi_x_row_RREADY sc_out sc_logic 1 signal 9 } 
	{ m_axi_x_row_RDATA sc_in sc_lv 32 signal 9 } 
	{ m_axi_x_row_RLAST sc_in sc_logic 1 signal 9 } 
	{ m_axi_x_row_RID sc_in sc_lv 1 signal 9 } 
	{ m_axi_x_row_RUSER sc_in sc_lv 1 signal 9 } 
	{ m_axi_x_row_RRESP sc_in sc_lv 2 signal 9 } 
	{ m_axi_x_row_BVALID sc_in sc_logic 1 signal 9 } 
	{ m_axi_x_row_BREADY sc_out sc_logic 1 signal 9 } 
	{ m_axi_x_row_BRESP sc_in sc_lv 2 signal 9 } 
	{ m_axi_x_row_BID sc_in sc_lv 1 signal 9 } 
	{ m_axi_x_row_BUSER sc_in sc_lv 1 signal 9 } 
	{ m_axi_x_col_AWVALID sc_out sc_logic 1 signal 10 } 
	{ m_axi_x_col_AWREADY sc_in sc_logic 1 signal 10 } 
	{ m_axi_x_col_AWADDR sc_out sc_lv 64 signal 10 } 
	{ m_axi_x_col_AWID sc_out sc_lv 1 signal 10 } 
	{ m_axi_x_col_AWLEN sc_out sc_lv 8 signal 10 } 
	{ m_axi_x_col_AWSIZE sc_out sc_lv 3 signal 10 } 
	{ m_axi_x_col_AWBURST sc_out sc_lv 2 signal 10 } 
	{ m_axi_x_col_AWLOCK sc_out sc_lv 2 signal 10 } 
	{ m_axi_x_col_AWCACHE sc_out sc_lv 4 signal 10 } 
	{ m_axi_x_col_AWPROT sc_out sc_lv 3 signal 10 } 
	{ m_axi_x_col_AWQOS sc_out sc_lv 4 signal 10 } 
	{ m_axi_x_col_AWREGION sc_out sc_lv 4 signal 10 } 
	{ m_axi_x_col_AWUSER sc_out sc_lv 1 signal 10 } 
	{ m_axi_x_col_WVALID sc_out sc_logic 1 signal 10 } 
	{ m_axi_x_col_WREADY sc_in sc_logic 1 signal 10 } 
	{ m_axi_x_col_WDATA sc_out sc_lv 32 signal 10 } 
	{ m_axi_x_col_WSTRB sc_out sc_lv 4 signal 10 } 
	{ m_axi_x_col_WLAST sc_out sc_logic 1 signal 10 } 
	{ m_axi_x_col_WID sc_out sc_lv 1 signal 10 } 
	{ m_axi_x_col_WUSER sc_out sc_lv 1 signal 10 } 
	{ m_axi_x_col_ARVALID sc_out sc_logic 1 signal 10 } 
	{ m_axi_x_col_ARREADY sc_in sc_logic 1 signal 10 } 
	{ m_axi_x_col_ARADDR sc_out sc_lv 64 signal 10 } 
	{ m_axi_x_col_ARID sc_out sc_lv 1 signal 10 } 
	{ m_axi_x_col_ARLEN sc_out sc_lv 8 signal 10 } 
	{ m_axi_x_col_ARSIZE sc_out sc_lv 3 signal 10 } 
	{ m_axi_x_col_ARBURST sc_out sc_lv 2 signal 10 } 
	{ m_axi_x_col_ARLOCK sc_out sc_lv 2 signal 10 } 
	{ m_axi_x_col_ARCACHE sc_out sc_lv 4 signal 10 } 
	{ m_axi_x_col_ARPROT sc_out sc_lv 3 signal 10 } 
	{ m_axi_x_col_ARQOS sc_out sc_lv 4 signal 10 } 
	{ m_axi_x_col_ARREGION sc_out sc_lv 4 signal 10 } 
	{ m_axi_x_col_ARUSER sc_out sc_lv 1 signal 10 } 
	{ m_axi_x_col_RVALID sc_in sc_logic 1 signal 10 } 
	{ m_axi_x_col_RREADY sc_out sc_logic 1 signal 10 } 
	{ m_axi_x_col_RDATA sc_in sc_lv 32 signal 10 } 
	{ m_axi_x_col_RLAST sc_in sc_logic 1 signal 10 } 
	{ m_axi_x_col_RID sc_in sc_lv 1 signal 10 } 
	{ m_axi_x_col_RUSER sc_in sc_lv 1 signal 10 } 
	{ m_axi_x_col_RRESP sc_in sc_lv 2 signal 10 } 
	{ m_axi_x_col_BVALID sc_in sc_logic 1 signal 10 } 
	{ m_axi_x_col_BREADY sc_out sc_logic 1 signal 10 } 
	{ m_axi_x_col_BRESP sc_in sc_lv 2 signal 10 } 
	{ m_axi_x_col_BID sc_in sc_lv 1 signal 10 } 
	{ m_axi_x_col_BUSER sc_in sc_lv 1 signal 10 } 
	{ m_axi_x_val_AWVALID sc_out sc_logic 1 signal 11 } 
	{ m_axi_x_val_AWREADY sc_in sc_logic 1 signal 11 } 
	{ m_axi_x_val_AWADDR sc_out sc_lv 64 signal 11 } 
	{ m_axi_x_val_AWID sc_out sc_lv 1 signal 11 } 
	{ m_axi_x_val_AWLEN sc_out sc_lv 8 signal 11 } 
	{ m_axi_x_val_AWSIZE sc_out sc_lv 3 signal 11 } 
	{ m_axi_x_val_AWBURST sc_out sc_lv 2 signal 11 } 
	{ m_axi_x_val_AWLOCK sc_out sc_lv 2 signal 11 } 
	{ m_axi_x_val_AWCACHE sc_out sc_lv 4 signal 11 } 
	{ m_axi_x_val_AWPROT sc_out sc_lv 3 signal 11 } 
	{ m_axi_x_val_AWQOS sc_out sc_lv 4 signal 11 } 
	{ m_axi_x_val_AWREGION sc_out sc_lv 4 signal 11 } 
	{ m_axi_x_val_AWUSER sc_out sc_lv 1 signal 11 } 
	{ m_axi_x_val_WVALID sc_out sc_logic 1 signal 11 } 
	{ m_axi_x_val_WREADY sc_in sc_logic 1 signal 11 } 
	{ m_axi_x_val_WDATA sc_out sc_lv 32 signal 11 } 
	{ m_axi_x_val_WSTRB sc_out sc_lv 4 signal 11 } 
	{ m_axi_x_val_WLAST sc_out sc_logic 1 signal 11 } 
	{ m_axi_x_val_WID sc_out sc_lv 1 signal 11 } 
	{ m_axi_x_val_WUSER sc_out sc_lv 1 signal 11 } 
	{ m_axi_x_val_ARVALID sc_out sc_logic 1 signal 11 } 
	{ m_axi_x_val_ARREADY sc_in sc_logic 1 signal 11 } 
	{ m_axi_x_val_ARADDR sc_out sc_lv 64 signal 11 } 
	{ m_axi_x_val_ARID sc_out sc_lv 1 signal 11 } 
	{ m_axi_x_val_ARLEN sc_out sc_lv 8 signal 11 } 
	{ m_axi_x_val_ARSIZE sc_out sc_lv 3 signal 11 } 
	{ m_axi_x_val_ARBURST sc_out sc_lv 2 signal 11 } 
	{ m_axi_x_val_ARLOCK sc_out sc_lv 2 signal 11 } 
	{ m_axi_x_val_ARCACHE sc_out sc_lv 4 signal 11 } 
	{ m_axi_x_val_ARPROT sc_out sc_lv 3 signal 11 } 
	{ m_axi_x_val_ARQOS sc_out sc_lv 4 signal 11 } 
	{ m_axi_x_val_ARREGION sc_out sc_lv 4 signal 11 } 
	{ m_axi_x_val_ARUSER sc_out sc_lv 1 signal 11 } 
	{ m_axi_x_val_RVALID sc_in sc_logic 1 signal 11 } 
	{ m_axi_x_val_RREADY sc_out sc_logic 1 signal 11 } 
	{ m_axi_x_val_RDATA sc_in sc_lv 32 signal 11 } 
	{ m_axi_x_val_RLAST sc_in sc_logic 1 signal 11 } 
	{ m_axi_x_val_RID sc_in sc_lv 1 signal 11 } 
	{ m_axi_x_val_RUSER sc_in sc_lv 1 signal 11 } 
	{ m_axi_x_val_RRESP sc_in sc_lv 2 signal 11 } 
	{ m_axi_x_val_BVALID sc_in sc_logic 1 signal 11 } 
	{ m_axi_x_val_BREADY sc_out sc_logic 1 signal 11 } 
	{ m_axi_x_val_BRESP sc_in sc_lv 2 signal 11 } 
	{ m_axi_x_val_BID sc_in sc_lv 1 signal 11 } 
	{ m_axi_x_val_BUSER sc_in sc_lv 1 signal 11 } 
	{ s_axi_control_AWVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_AWREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_AWADDR sc_in sc_lv 7 signal -1 } 
	{ s_axi_control_WVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_WREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_WDATA sc_in sc_lv 32 signal -1 } 
	{ s_axi_control_WSTRB sc_in sc_lv 4 signal -1 } 
	{ s_axi_control_ARVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_ARREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_ARADDR sc_in sc_lv 7 signal -1 } 
	{ s_axi_control_RVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_RREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_RDATA sc_out sc_lv 32 signal -1 } 
	{ s_axi_control_RRESP sc_out sc_lv 2 signal -1 } 
	{ s_axi_control_BVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_BREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_BRESP sc_out sc_lv 2 signal -1 } 
	{ interrupt sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_r_AWVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_r_AWREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_r_AWADDR sc_in sc_lv 8 signal -1 } 
	{ s_axi_control_r_WVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_r_WREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_r_WDATA sc_in sc_lv 32 signal -1 } 
	{ s_axi_control_r_WSTRB sc_in sc_lv 4 signal -1 } 
	{ s_axi_control_r_ARVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_r_ARREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_r_ARADDR sc_in sc_lv 8 signal -1 } 
	{ s_axi_control_r_RVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_r_RREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_r_RDATA sc_out sc_lv 32 signal -1 } 
	{ s_axi_control_r_RRESP sc_out sc_lv 2 signal -1 } 
	{ s_axi_control_r_BVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_r_BREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_r_BRESP sc_out sc_lv 2 signal -1 } 
}
set NewPortList {[ 
	{ "name": "s_axi_control_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "control", "role": "AWADDR" },"address":[{"name":"sparse_lu_shared","role":"start","value":"0","valid_bit":"0"},{"name":"sparse_lu_shared","role":"continue","value":"0","valid_bit":"4"},{"name":"sparse_lu_shared","role":"auto_start","value":"0","valid_bit":"7"},{"name":"operation","role":"data","value":"16"},{"name":"n","role":"data","value":"24"},{"name":"a_nnz","role":"data","value":"32"},{"name":"l_nnz","role":"data","value":"40"},{"name":"u_nnz","role":"data","value":"48"},{"name":"x_rows","role":"data","value":"56"},{"name":"x_cols","role":"data","value":"64"},{"name":"x_nnz","role":"data","value":"72"},{"name":"pivot_eps","role":"data","value":"80"}] },
	{ "name": "s_axi_control_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "AWVALID" } },
	{ "name": "s_axi_control_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "AWREADY" } },
	{ "name": "s_axi_control_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "WVALID" } },
	{ "name": "s_axi_control_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "WREADY" } },
	{ "name": "s_axi_control_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "control", "role": "WDATA" } },
	{ "name": "s_axi_control_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "control", "role": "WSTRB" } },
	{ "name": "s_axi_control_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "control", "role": "ARADDR" },"address":[{"name":"sparse_lu_shared","role":"start","value":"0","valid_bit":"0"},{"name":"sparse_lu_shared","role":"done","value":"0","valid_bit":"1"},{"name":"sparse_lu_shared","role":"idle","value":"0","valid_bit":"2"},{"name":"sparse_lu_shared","role":"ready","value":"0","valid_bit":"3"},{"name":"sparse_lu_shared","role":"auto_start","value":"0","valid_bit":"7"},{"name":"status","role":"data","value":"88"}, {"name":"status","role":"valid","value":"92","valid_bit":"0"},{"name":"failed_row","role":"data","value":"104"}, {"name":"failed_row","role":"valid","value":"108","valid_bit":"0"}] },
	{ "name": "s_axi_control_ARVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "ARVALID" } },
	{ "name": "s_axi_control_ARREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "ARREADY" } },
	{ "name": "s_axi_control_RVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "RVALID" } },
	{ "name": "s_axi_control_RREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "RREADY" } },
	{ "name": "s_axi_control_RDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "control", "role": "RDATA" } },
	{ "name": "s_axi_control_RRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "control", "role": "RRESP" } },
	{ "name": "s_axi_control_BVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "BVALID" } },
	{ "name": "s_axi_control_BREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "BREADY" } },
	{ "name": "s_axi_control_BRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "control", "role": "BRESP" } },
	{ "name": "interrupt", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "interrupt" } },
	{ "name": "s_axi_control_r_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "control_r", "role": "AWADDR" },"address":[{"name":"A_rcsr","role":"data","value":"16"},{"name":"A_cid","role":"data","value":"28"},{"name":"A_val_r","role":"data","value":"40"},{"name":"L_rcsr","role":"data","value":"52"},{"name":"L_cid","role":"data","value":"64"},{"name":"L_val_r","role":"data","value":"76"},{"name":"U_rcsr","role":"data","value":"88"},{"name":"U_cid","role":"data","value":"100"},{"name":"U_val_r","role":"data","value":"112"},{"name":"X_rcsr","role":"data","value":"124"},{"name":"X_cid","role":"data","value":"136"},{"name":"X_val_r","role":"data","value":"148"}] },
	{ "name": "s_axi_control_r_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control_r", "role": "AWVALID" } },
	{ "name": "s_axi_control_r_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control_r", "role": "AWREADY" } },
	{ "name": "s_axi_control_r_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control_r", "role": "WVALID" } },
	{ "name": "s_axi_control_r_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control_r", "role": "WREADY" } },
	{ "name": "s_axi_control_r_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "control_r", "role": "WDATA" } },
	{ "name": "s_axi_control_r_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "control_r", "role": "WSTRB" } },
	{ "name": "s_axi_control_r_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "control_r", "role": "ARADDR" },"address":[] },
	{ "name": "s_axi_control_r_ARVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control_r", "role": "ARVALID" } },
	{ "name": "s_axi_control_r_ARREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control_r", "role": "ARREADY" } },
	{ "name": "s_axi_control_r_RVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control_r", "role": "RVALID" } },
	{ "name": "s_axi_control_r_RREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control_r", "role": "RREADY" } },
	{ "name": "s_axi_control_r_RDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "control_r", "role": "RDATA" } },
	{ "name": "s_axi_control_r_RRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "control_r", "role": "RRESP" } },
	{ "name": "s_axi_control_r_BVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control_r", "role": "BVALID" } },
	{ "name": "s_axi_control_r_BREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control_r", "role": "BREADY" } },
	{ "name": "s_axi_control_r_BRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "control_r", "role": "BRESP" } }, 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "m_axi_a_row_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a_row", "role": "AWVALID" }} , 
 	{ "name": "m_axi_a_row_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a_row", "role": "AWREADY" }} , 
 	{ "name": "m_axi_a_row_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "a_row", "role": "AWADDR" }} , 
 	{ "name": "m_axi_a_row_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "a_row", "role": "AWID" }} , 
 	{ "name": "m_axi_a_row_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "a_row", "role": "AWLEN" }} , 
 	{ "name": "m_axi_a_row_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "a_row", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_a_row_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "a_row", "role": "AWBURST" }} , 
 	{ "name": "m_axi_a_row_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "a_row", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_a_row_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "a_row", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_a_row_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "a_row", "role": "AWPROT" }} , 
 	{ "name": "m_axi_a_row_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "a_row", "role": "AWQOS" }} , 
 	{ "name": "m_axi_a_row_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "a_row", "role": "AWREGION" }} , 
 	{ "name": "m_axi_a_row_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "a_row", "role": "AWUSER" }} , 
 	{ "name": "m_axi_a_row_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a_row", "role": "WVALID" }} , 
 	{ "name": "m_axi_a_row_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a_row", "role": "WREADY" }} , 
 	{ "name": "m_axi_a_row_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "a_row", "role": "WDATA" }} , 
 	{ "name": "m_axi_a_row_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "a_row", "role": "WSTRB" }} , 
 	{ "name": "m_axi_a_row_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a_row", "role": "WLAST" }} , 
 	{ "name": "m_axi_a_row_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "a_row", "role": "WID" }} , 
 	{ "name": "m_axi_a_row_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "a_row", "role": "WUSER" }} , 
 	{ "name": "m_axi_a_row_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a_row", "role": "ARVALID" }} , 
 	{ "name": "m_axi_a_row_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a_row", "role": "ARREADY" }} , 
 	{ "name": "m_axi_a_row_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "a_row", "role": "ARADDR" }} , 
 	{ "name": "m_axi_a_row_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "a_row", "role": "ARID" }} , 
 	{ "name": "m_axi_a_row_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "a_row", "role": "ARLEN" }} , 
 	{ "name": "m_axi_a_row_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "a_row", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_a_row_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "a_row", "role": "ARBURST" }} , 
 	{ "name": "m_axi_a_row_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "a_row", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_a_row_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "a_row", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_a_row_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "a_row", "role": "ARPROT" }} , 
 	{ "name": "m_axi_a_row_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "a_row", "role": "ARQOS" }} , 
 	{ "name": "m_axi_a_row_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "a_row", "role": "ARREGION" }} , 
 	{ "name": "m_axi_a_row_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "a_row", "role": "ARUSER" }} , 
 	{ "name": "m_axi_a_row_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a_row", "role": "RVALID" }} , 
 	{ "name": "m_axi_a_row_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a_row", "role": "RREADY" }} , 
 	{ "name": "m_axi_a_row_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "a_row", "role": "RDATA" }} , 
 	{ "name": "m_axi_a_row_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a_row", "role": "RLAST" }} , 
 	{ "name": "m_axi_a_row_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "a_row", "role": "RID" }} , 
 	{ "name": "m_axi_a_row_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "a_row", "role": "RUSER" }} , 
 	{ "name": "m_axi_a_row_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "a_row", "role": "RRESP" }} , 
 	{ "name": "m_axi_a_row_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a_row", "role": "BVALID" }} , 
 	{ "name": "m_axi_a_row_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a_row", "role": "BREADY" }} , 
 	{ "name": "m_axi_a_row_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "a_row", "role": "BRESP" }} , 
 	{ "name": "m_axi_a_row_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "a_row", "role": "BID" }} , 
 	{ "name": "m_axi_a_row_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "a_row", "role": "BUSER" }} , 
 	{ "name": "m_axi_a_col_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a_col", "role": "AWVALID" }} , 
 	{ "name": "m_axi_a_col_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a_col", "role": "AWREADY" }} , 
 	{ "name": "m_axi_a_col_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "a_col", "role": "AWADDR" }} , 
 	{ "name": "m_axi_a_col_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "a_col", "role": "AWID" }} , 
 	{ "name": "m_axi_a_col_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "a_col", "role": "AWLEN" }} , 
 	{ "name": "m_axi_a_col_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "a_col", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_a_col_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "a_col", "role": "AWBURST" }} , 
 	{ "name": "m_axi_a_col_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "a_col", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_a_col_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "a_col", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_a_col_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "a_col", "role": "AWPROT" }} , 
 	{ "name": "m_axi_a_col_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "a_col", "role": "AWQOS" }} , 
 	{ "name": "m_axi_a_col_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "a_col", "role": "AWREGION" }} , 
 	{ "name": "m_axi_a_col_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "a_col", "role": "AWUSER" }} , 
 	{ "name": "m_axi_a_col_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a_col", "role": "WVALID" }} , 
 	{ "name": "m_axi_a_col_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a_col", "role": "WREADY" }} , 
 	{ "name": "m_axi_a_col_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "a_col", "role": "WDATA" }} , 
 	{ "name": "m_axi_a_col_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "a_col", "role": "WSTRB" }} , 
 	{ "name": "m_axi_a_col_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a_col", "role": "WLAST" }} , 
 	{ "name": "m_axi_a_col_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "a_col", "role": "WID" }} , 
 	{ "name": "m_axi_a_col_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "a_col", "role": "WUSER" }} , 
 	{ "name": "m_axi_a_col_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a_col", "role": "ARVALID" }} , 
 	{ "name": "m_axi_a_col_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a_col", "role": "ARREADY" }} , 
 	{ "name": "m_axi_a_col_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "a_col", "role": "ARADDR" }} , 
 	{ "name": "m_axi_a_col_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "a_col", "role": "ARID" }} , 
 	{ "name": "m_axi_a_col_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "a_col", "role": "ARLEN" }} , 
 	{ "name": "m_axi_a_col_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "a_col", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_a_col_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "a_col", "role": "ARBURST" }} , 
 	{ "name": "m_axi_a_col_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "a_col", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_a_col_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "a_col", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_a_col_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "a_col", "role": "ARPROT" }} , 
 	{ "name": "m_axi_a_col_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "a_col", "role": "ARQOS" }} , 
 	{ "name": "m_axi_a_col_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "a_col", "role": "ARREGION" }} , 
 	{ "name": "m_axi_a_col_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "a_col", "role": "ARUSER" }} , 
 	{ "name": "m_axi_a_col_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a_col", "role": "RVALID" }} , 
 	{ "name": "m_axi_a_col_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a_col", "role": "RREADY" }} , 
 	{ "name": "m_axi_a_col_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "a_col", "role": "RDATA" }} , 
 	{ "name": "m_axi_a_col_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a_col", "role": "RLAST" }} , 
 	{ "name": "m_axi_a_col_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "a_col", "role": "RID" }} , 
 	{ "name": "m_axi_a_col_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "a_col", "role": "RUSER" }} , 
 	{ "name": "m_axi_a_col_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "a_col", "role": "RRESP" }} , 
 	{ "name": "m_axi_a_col_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a_col", "role": "BVALID" }} , 
 	{ "name": "m_axi_a_col_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a_col", "role": "BREADY" }} , 
 	{ "name": "m_axi_a_col_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "a_col", "role": "BRESP" }} , 
 	{ "name": "m_axi_a_col_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "a_col", "role": "BID" }} , 
 	{ "name": "m_axi_a_col_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "a_col", "role": "BUSER" }} , 
 	{ "name": "m_axi_a_val_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a_val", "role": "AWVALID" }} , 
 	{ "name": "m_axi_a_val_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a_val", "role": "AWREADY" }} , 
 	{ "name": "m_axi_a_val_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "a_val", "role": "AWADDR" }} , 
 	{ "name": "m_axi_a_val_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "a_val", "role": "AWID" }} , 
 	{ "name": "m_axi_a_val_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "a_val", "role": "AWLEN" }} , 
 	{ "name": "m_axi_a_val_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "a_val", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_a_val_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "a_val", "role": "AWBURST" }} , 
 	{ "name": "m_axi_a_val_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "a_val", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_a_val_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "a_val", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_a_val_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "a_val", "role": "AWPROT" }} , 
 	{ "name": "m_axi_a_val_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "a_val", "role": "AWQOS" }} , 
 	{ "name": "m_axi_a_val_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "a_val", "role": "AWREGION" }} , 
 	{ "name": "m_axi_a_val_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "a_val", "role": "AWUSER" }} , 
 	{ "name": "m_axi_a_val_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a_val", "role": "WVALID" }} , 
 	{ "name": "m_axi_a_val_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a_val", "role": "WREADY" }} , 
 	{ "name": "m_axi_a_val_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "a_val", "role": "WDATA" }} , 
 	{ "name": "m_axi_a_val_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "a_val", "role": "WSTRB" }} , 
 	{ "name": "m_axi_a_val_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a_val", "role": "WLAST" }} , 
 	{ "name": "m_axi_a_val_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "a_val", "role": "WID" }} , 
 	{ "name": "m_axi_a_val_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "a_val", "role": "WUSER" }} , 
 	{ "name": "m_axi_a_val_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a_val", "role": "ARVALID" }} , 
 	{ "name": "m_axi_a_val_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a_val", "role": "ARREADY" }} , 
 	{ "name": "m_axi_a_val_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "a_val", "role": "ARADDR" }} , 
 	{ "name": "m_axi_a_val_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "a_val", "role": "ARID" }} , 
 	{ "name": "m_axi_a_val_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "a_val", "role": "ARLEN" }} , 
 	{ "name": "m_axi_a_val_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "a_val", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_a_val_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "a_val", "role": "ARBURST" }} , 
 	{ "name": "m_axi_a_val_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "a_val", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_a_val_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "a_val", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_a_val_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "a_val", "role": "ARPROT" }} , 
 	{ "name": "m_axi_a_val_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "a_val", "role": "ARQOS" }} , 
 	{ "name": "m_axi_a_val_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "a_val", "role": "ARREGION" }} , 
 	{ "name": "m_axi_a_val_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "a_val", "role": "ARUSER" }} , 
 	{ "name": "m_axi_a_val_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a_val", "role": "RVALID" }} , 
 	{ "name": "m_axi_a_val_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a_val", "role": "RREADY" }} , 
 	{ "name": "m_axi_a_val_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "a_val", "role": "RDATA" }} , 
 	{ "name": "m_axi_a_val_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a_val", "role": "RLAST" }} , 
 	{ "name": "m_axi_a_val_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "a_val", "role": "RID" }} , 
 	{ "name": "m_axi_a_val_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "a_val", "role": "RUSER" }} , 
 	{ "name": "m_axi_a_val_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "a_val", "role": "RRESP" }} , 
 	{ "name": "m_axi_a_val_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a_val", "role": "BVALID" }} , 
 	{ "name": "m_axi_a_val_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a_val", "role": "BREADY" }} , 
 	{ "name": "m_axi_a_val_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "a_val", "role": "BRESP" }} , 
 	{ "name": "m_axi_a_val_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "a_val", "role": "BID" }} , 
 	{ "name": "m_axi_a_val_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "a_val", "role": "BUSER" }} , 
 	{ "name": "m_axi_l_row_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "l_row", "role": "AWVALID" }} , 
 	{ "name": "m_axi_l_row_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "l_row", "role": "AWREADY" }} , 
 	{ "name": "m_axi_l_row_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "l_row", "role": "AWADDR" }} , 
 	{ "name": "m_axi_l_row_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "l_row", "role": "AWID" }} , 
 	{ "name": "m_axi_l_row_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "l_row", "role": "AWLEN" }} , 
 	{ "name": "m_axi_l_row_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "l_row", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_l_row_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "l_row", "role": "AWBURST" }} , 
 	{ "name": "m_axi_l_row_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "l_row", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_l_row_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "l_row", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_l_row_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "l_row", "role": "AWPROT" }} , 
 	{ "name": "m_axi_l_row_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "l_row", "role": "AWQOS" }} , 
 	{ "name": "m_axi_l_row_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "l_row", "role": "AWREGION" }} , 
 	{ "name": "m_axi_l_row_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "l_row", "role": "AWUSER" }} , 
 	{ "name": "m_axi_l_row_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "l_row", "role": "WVALID" }} , 
 	{ "name": "m_axi_l_row_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "l_row", "role": "WREADY" }} , 
 	{ "name": "m_axi_l_row_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "l_row", "role": "WDATA" }} , 
 	{ "name": "m_axi_l_row_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "l_row", "role": "WSTRB" }} , 
 	{ "name": "m_axi_l_row_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "l_row", "role": "WLAST" }} , 
 	{ "name": "m_axi_l_row_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "l_row", "role": "WID" }} , 
 	{ "name": "m_axi_l_row_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "l_row", "role": "WUSER" }} , 
 	{ "name": "m_axi_l_row_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "l_row", "role": "ARVALID" }} , 
 	{ "name": "m_axi_l_row_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "l_row", "role": "ARREADY" }} , 
 	{ "name": "m_axi_l_row_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "l_row", "role": "ARADDR" }} , 
 	{ "name": "m_axi_l_row_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "l_row", "role": "ARID" }} , 
 	{ "name": "m_axi_l_row_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "l_row", "role": "ARLEN" }} , 
 	{ "name": "m_axi_l_row_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "l_row", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_l_row_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "l_row", "role": "ARBURST" }} , 
 	{ "name": "m_axi_l_row_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "l_row", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_l_row_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "l_row", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_l_row_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "l_row", "role": "ARPROT" }} , 
 	{ "name": "m_axi_l_row_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "l_row", "role": "ARQOS" }} , 
 	{ "name": "m_axi_l_row_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "l_row", "role": "ARREGION" }} , 
 	{ "name": "m_axi_l_row_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "l_row", "role": "ARUSER" }} , 
 	{ "name": "m_axi_l_row_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "l_row", "role": "RVALID" }} , 
 	{ "name": "m_axi_l_row_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "l_row", "role": "RREADY" }} , 
 	{ "name": "m_axi_l_row_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "l_row", "role": "RDATA" }} , 
 	{ "name": "m_axi_l_row_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "l_row", "role": "RLAST" }} , 
 	{ "name": "m_axi_l_row_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "l_row", "role": "RID" }} , 
 	{ "name": "m_axi_l_row_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "l_row", "role": "RUSER" }} , 
 	{ "name": "m_axi_l_row_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "l_row", "role": "RRESP" }} , 
 	{ "name": "m_axi_l_row_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "l_row", "role": "BVALID" }} , 
 	{ "name": "m_axi_l_row_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "l_row", "role": "BREADY" }} , 
 	{ "name": "m_axi_l_row_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "l_row", "role": "BRESP" }} , 
 	{ "name": "m_axi_l_row_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "l_row", "role": "BID" }} , 
 	{ "name": "m_axi_l_row_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "l_row", "role": "BUSER" }} , 
 	{ "name": "m_axi_l_col_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "l_col", "role": "AWVALID" }} , 
 	{ "name": "m_axi_l_col_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "l_col", "role": "AWREADY" }} , 
 	{ "name": "m_axi_l_col_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "l_col", "role": "AWADDR" }} , 
 	{ "name": "m_axi_l_col_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "l_col", "role": "AWID" }} , 
 	{ "name": "m_axi_l_col_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "l_col", "role": "AWLEN" }} , 
 	{ "name": "m_axi_l_col_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "l_col", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_l_col_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "l_col", "role": "AWBURST" }} , 
 	{ "name": "m_axi_l_col_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "l_col", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_l_col_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "l_col", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_l_col_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "l_col", "role": "AWPROT" }} , 
 	{ "name": "m_axi_l_col_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "l_col", "role": "AWQOS" }} , 
 	{ "name": "m_axi_l_col_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "l_col", "role": "AWREGION" }} , 
 	{ "name": "m_axi_l_col_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "l_col", "role": "AWUSER" }} , 
 	{ "name": "m_axi_l_col_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "l_col", "role": "WVALID" }} , 
 	{ "name": "m_axi_l_col_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "l_col", "role": "WREADY" }} , 
 	{ "name": "m_axi_l_col_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "l_col", "role": "WDATA" }} , 
 	{ "name": "m_axi_l_col_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "l_col", "role": "WSTRB" }} , 
 	{ "name": "m_axi_l_col_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "l_col", "role": "WLAST" }} , 
 	{ "name": "m_axi_l_col_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "l_col", "role": "WID" }} , 
 	{ "name": "m_axi_l_col_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "l_col", "role": "WUSER" }} , 
 	{ "name": "m_axi_l_col_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "l_col", "role": "ARVALID" }} , 
 	{ "name": "m_axi_l_col_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "l_col", "role": "ARREADY" }} , 
 	{ "name": "m_axi_l_col_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "l_col", "role": "ARADDR" }} , 
 	{ "name": "m_axi_l_col_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "l_col", "role": "ARID" }} , 
 	{ "name": "m_axi_l_col_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "l_col", "role": "ARLEN" }} , 
 	{ "name": "m_axi_l_col_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "l_col", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_l_col_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "l_col", "role": "ARBURST" }} , 
 	{ "name": "m_axi_l_col_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "l_col", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_l_col_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "l_col", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_l_col_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "l_col", "role": "ARPROT" }} , 
 	{ "name": "m_axi_l_col_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "l_col", "role": "ARQOS" }} , 
 	{ "name": "m_axi_l_col_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "l_col", "role": "ARREGION" }} , 
 	{ "name": "m_axi_l_col_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "l_col", "role": "ARUSER" }} , 
 	{ "name": "m_axi_l_col_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "l_col", "role": "RVALID" }} , 
 	{ "name": "m_axi_l_col_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "l_col", "role": "RREADY" }} , 
 	{ "name": "m_axi_l_col_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "l_col", "role": "RDATA" }} , 
 	{ "name": "m_axi_l_col_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "l_col", "role": "RLAST" }} , 
 	{ "name": "m_axi_l_col_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "l_col", "role": "RID" }} , 
 	{ "name": "m_axi_l_col_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "l_col", "role": "RUSER" }} , 
 	{ "name": "m_axi_l_col_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "l_col", "role": "RRESP" }} , 
 	{ "name": "m_axi_l_col_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "l_col", "role": "BVALID" }} , 
 	{ "name": "m_axi_l_col_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "l_col", "role": "BREADY" }} , 
 	{ "name": "m_axi_l_col_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "l_col", "role": "BRESP" }} , 
 	{ "name": "m_axi_l_col_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "l_col", "role": "BID" }} , 
 	{ "name": "m_axi_l_col_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "l_col", "role": "BUSER" }} , 
 	{ "name": "m_axi_l_val_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "l_val", "role": "AWVALID" }} , 
 	{ "name": "m_axi_l_val_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "l_val", "role": "AWREADY" }} , 
 	{ "name": "m_axi_l_val_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "l_val", "role": "AWADDR" }} , 
 	{ "name": "m_axi_l_val_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "l_val", "role": "AWID" }} , 
 	{ "name": "m_axi_l_val_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "l_val", "role": "AWLEN" }} , 
 	{ "name": "m_axi_l_val_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "l_val", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_l_val_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "l_val", "role": "AWBURST" }} , 
 	{ "name": "m_axi_l_val_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "l_val", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_l_val_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "l_val", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_l_val_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "l_val", "role": "AWPROT" }} , 
 	{ "name": "m_axi_l_val_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "l_val", "role": "AWQOS" }} , 
 	{ "name": "m_axi_l_val_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "l_val", "role": "AWREGION" }} , 
 	{ "name": "m_axi_l_val_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "l_val", "role": "AWUSER" }} , 
 	{ "name": "m_axi_l_val_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "l_val", "role": "WVALID" }} , 
 	{ "name": "m_axi_l_val_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "l_val", "role": "WREADY" }} , 
 	{ "name": "m_axi_l_val_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "l_val", "role": "WDATA" }} , 
 	{ "name": "m_axi_l_val_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "l_val", "role": "WSTRB" }} , 
 	{ "name": "m_axi_l_val_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "l_val", "role": "WLAST" }} , 
 	{ "name": "m_axi_l_val_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "l_val", "role": "WID" }} , 
 	{ "name": "m_axi_l_val_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "l_val", "role": "WUSER" }} , 
 	{ "name": "m_axi_l_val_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "l_val", "role": "ARVALID" }} , 
 	{ "name": "m_axi_l_val_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "l_val", "role": "ARREADY" }} , 
 	{ "name": "m_axi_l_val_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "l_val", "role": "ARADDR" }} , 
 	{ "name": "m_axi_l_val_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "l_val", "role": "ARID" }} , 
 	{ "name": "m_axi_l_val_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "l_val", "role": "ARLEN" }} , 
 	{ "name": "m_axi_l_val_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "l_val", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_l_val_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "l_val", "role": "ARBURST" }} , 
 	{ "name": "m_axi_l_val_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "l_val", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_l_val_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "l_val", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_l_val_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "l_val", "role": "ARPROT" }} , 
 	{ "name": "m_axi_l_val_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "l_val", "role": "ARQOS" }} , 
 	{ "name": "m_axi_l_val_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "l_val", "role": "ARREGION" }} , 
 	{ "name": "m_axi_l_val_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "l_val", "role": "ARUSER" }} , 
 	{ "name": "m_axi_l_val_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "l_val", "role": "RVALID" }} , 
 	{ "name": "m_axi_l_val_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "l_val", "role": "RREADY" }} , 
 	{ "name": "m_axi_l_val_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "l_val", "role": "RDATA" }} , 
 	{ "name": "m_axi_l_val_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "l_val", "role": "RLAST" }} , 
 	{ "name": "m_axi_l_val_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "l_val", "role": "RID" }} , 
 	{ "name": "m_axi_l_val_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "l_val", "role": "RUSER" }} , 
 	{ "name": "m_axi_l_val_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "l_val", "role": "RRESP" }} , 
 	{ "name": "m_axi_l_val_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "l_val", "role": "BVALID" }} , 
 	{ "name": "m_axi_l_val_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "l_val", "role": "BREADY" }} , 
 	{ "name": "m_axi_l_val_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "l_val", "role": "BRESP" }} , 
 	{ "name": "m_axi_l_val_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "l_val", "role": "BID" }} , 
 	{ "name": "m_axi_l_val_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "l_val", "role": "BUSER" }} , 
 	{ "name": "m_axi_u_row_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u_row", "role": "AWVALID" }} , 
 	{ "name": "m_axi_u_row_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u_row", "role": "AWREADY" }} , 
 	{ "name": "m_axi_u_row_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "u_row", "role": "AWADDR" }} , 
 	{ "name": "m_axi_u_row_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "u_row", "role": "AWID" }} , 
 	{ "name": "m_axi_u_row_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "u_row", "role": "AWLEN" }} , 
 	{ "name": "m_axi_u_row_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "u_row", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_u_row_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "u_row", "role": "AWBURST" }} , 
 	{ "name": "m_axi_u_row_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "u_row", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_u_row_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "u_row", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_u_row_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "u_row", "role": "AWPROT" }} , 
 	{ "name": "m_axi_u_row_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "u_row", "role": "AWQOS" }} , 
 	{ "name": "m_axi_u_row_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "u_row", "role": "AWREGION" }} , 
 	{ "name": "m_axi_u_row_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "u_row", "role": "AWUSER" }} , 
 	{ "name": "m_axi_u_row_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u_row", "role": "WVALID" }} , 
 	{ "name": "m_axi_u_row_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u_row", "role": "WREADY" }} , 
 	{ "name": "m_axi_u_row_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "u_row", "role": "WDATA" }} , 
 	{ "name": "m_axi_u_row_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "u_row", "role": "WSTRB" }} , 
 	{ "name": "m_axi_u_row_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u_row", "role": "WLAST" }} , 
 	{ "name": "m_axi_u_row_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "u_row", "role": "WID" }} , 
 	{ "name": "m_axi_u_row_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "u_row", "role": "WUSER" }} , 
 	{ "name": "m_axi_u_row_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u_row", "role": "ARVALID" }} , 
 	{ "name": "m_axi_u_row_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u_row", "role": "ARREADY" }} , 
 	{ "name": "m_axi_u_row_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "u_row", "role": "ARADDR" }} , 
 	{ "name": "m_axi_u_row_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "u_row", "role": "ARID" }} , 
 	{ "name": "m_axi_u_row_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "u_row", "role": "ARLEN" }} , 
 	{ "name": "m_axi_u_row_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "u_row", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_u_row_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "u_row", "role": "ARBURST" }} , 
 	{ "name": "m_axi_u_row_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "u_row", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_u_row_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "u_row", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_u_row_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "u_row", "role": "ARPROT" }} , 
 	{ "name": "m_axi_u_row_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "u_row", "role": "ARQOS" }} , 
 	{ "name": "m_axi_u_row_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "u_row", "role": "ARREGION" }} , 
 	{ "name": "m_axi_u_row_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "u_row", "role": "ARUSER" }} , 
 	{ "name": "m_axi_u_row_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u_row", "role": "RVALID" }} , 
 	{ "name": "m_axi_u_row_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u_row", "role": "RREADY" }} , 
 	{ "name": "m_axi_u_row_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "u_row", "role": "RDATA" }} , 
 	{ "name": "m_axi_u_row_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u_row", "role": "RLAST" }} , 
 	{ "name": "m_axi_u_row_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "u_row", "role": "RID" }} , 
 	{ "name": "m_axi_u_row_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "u_row", "role": "RUSER" }} , 
 	{ "name": "m_axi_u_row_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "u_row", "role": "RRESP" }} , 
 	{ "name": "m_axi_u_row_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u_row", "role": "BVALID" }} , 
 	{ "name": "m_axi_u_row_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u_row", "role": "BREADY" }} , 
 	{ "name": "m_axi_u_row_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "u_row", "role": "BRESP" }} , 
 	{ "name": "m_axi_u_row_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "u_row", "role": "BID" }} , 
 	{ "name": "m_axi_u_row_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "u_row", "role": "BUSER" }} , 
 	{ "name": "m_axi_u_col_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u_col", "role": "AWVALID" }} , 
 	{ "name": "m_axi_u_col_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u_col", "role": "AWREADY" }} , 
 	{ "name": "m_axi_u_col_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "u_col", "role": "AWADDR" }} , 
 	{ "name": "m_axi_u_col_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "u_col", "role": "AWID" }} , 
 	{ "name": "m_axi_u_col_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "u_col", "role": "AWLEN" }} , 
 	{ "name": "m_axi_u_col_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "u_col", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_u_col_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "u_col", "role": "AWBURST" }} , 
 	{ "name": "m_axi_u_col_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "u_col", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_u_col_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "u_col", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_u_col_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "u_col", "role": "AWPROT" }} , 
 	{ "name": "m_axi_u_col_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "u_col", "role": "AWQOS" }} , 
 	{ "name": "m_axi_u_col_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "u_col", "role": "AWREGION" }} , 
 	{ "name": "m_axi_u_col_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "u_col", "role": "AWUSER" }} , 
 	{ "name": "m_axi_u_col_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u_col", "role": "WVALID" }} , 
 	{ "name": "m_axi_u_col_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u_col", "role": "WREADY" }} , 
 	{ "name": "m_axi_u_col_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "u_col", "role": "WDATA" }} , 
 	{ "name": "m_axi_u_col_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "u_col", "role": "WSTRB" }} , 
 	{ "name": "m_axi_u_col_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u_col", "role": "WLAST" }} , 
 	{ "name": "m_axi_u_col_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "u_col", "role": "WID" }} , 
 	{ "name": "m_axi_u_col_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "u_col", "role": "WUSER" }} , 
 	{ "name": "m_axi_u_col_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u_col", "role": "ARVALID" }} , 
 	{ "name": "m_axi_u_col_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u_col", "role": "ARREADY" }} , 
 	{ "name": "m_axi_u_col_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "u_col", "role": "ARADDR" }} , 
 	{ "name": "m_axi_u_col_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "u_col", "role": "ARID" }} , 
 	{ "name": "m_axi_u_col_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "u_col", "role": "ARLEN" }} , 
 	{ "name": "m_axi_u_col_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "u_col", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_u_col_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "u_col", "role": "ARBURST" }} , 
 	{ "name": "m_axi_u_col_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "u_col", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_u_col_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "u_col", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_u_col_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "u_col", "role": "ARPROT" }} , 
 	{ "name": "m_axi_u_col_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "u_col", "role": "ARQOS" }} , 
 	{ "name": "m_axi_u_col_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "u_col", "role": "ARREGION" }} , 
 	{ "name": "m_axi_u_col_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "u_col", "role": "ARUSER" }} , 
 	{ "name": "m_axi_u_col_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u_col", "role": "RVALID" }} , 
 	{ "name": "m_axi_u_col_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u_col", "role": "RREADY" }} , 
 	{ "name": "m_axi_u_col_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "u_col", "role": "RDATA" }} , 
 	{ "name": "m_axi_u_col_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u_col", "role": "RLAST" }} , 
 	{ "name": "m_axi_u_col_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "u_col", "role": "RID" }} , 
 	{ "name": "m_axi_u_col_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "u_col", "role": "RUSER" }} , 
 	{ "name": "m_axi_u_col_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "u_col", "role": "RRESP" }} , 
 	{ "name": "m_axi_u_col_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u_col", "role": "BVALID" }} , 
 	{ "name": "m_axi_u_col_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u_col", "role": "BREADY" }} , 
 	{ "name": "m_axi_u_col_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "u_col", "role": "BRESP" }} , 
 	{ "name": "m_axi_u_col_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "u_col", "role": "BID" }} , 
 	{ "name": "m_axi_u_col_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "u_col", "role": "BUSER" }} , 
 	{ "name": "m_axi_u_val_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u_val", "role": "AWVALID" }} , 
 	{ "name": "m_axi_u_val_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u_val", "role": "AWREADY" }} , 
 	{ "name": "m_axi_u_val_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "u_val", "role": "AWADDR" }} , 
 	{ "name": "m_axi_u_val_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "u_val", "role": "AWID" }} , 
 	{ "name": "m_axi_u_val_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "u_val", "role": "AWLEN" }} , 
 	{ "name": "m_axi_u_val_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "u_val", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_u_val_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "u_val", "role": "AWBURST" }} , 
 	{ "name": "m_axi_u_val_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "u_val", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_u_val_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "u_val", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_u_val_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "u_val", "role": "AWPROT" }} , 
 	{ "name": "m_axi_u_val_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "u_val", "role": "AWQOS" }} , 
 	{ "name": "m_axi_u_val_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "u_val", "role": "AWREGION" }} , 
 	{ "name": "m_axi_u_val_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "u_val", "role": "AWUSER" }} , 
 	{ "name": "m_axi_u_val_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u_val", "role": "WVALID" }} , 
 	{ "name": "m_axi_u_val_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u_val", "role": "WREADY" }} , 
 	{ "name": "m_axi_u_val_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "u_val", "role": "WDATA" }} , 
 	{ "name": "m_axi_u_val_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "u_val", "role": "WSTRB" }} , 
 	{ "name": "m_axi_u_val_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u_val", "role": "WLAST" }} , 
 	{ "name": "m_axi_u_val_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "u_val", "role": "WID" }} , 
 	{ "name": "m_axi_u_val_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "u_val", "role": "WUSER" }} , 
 	{ "name": "m_axi_u_val_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u_val", "role": "ARVALID" }} , 
 	{ "name": "m_axi_u_val_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u_val", "role": "ARREADY" }} , 
 	{ "name": "m_axi_u_val_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "u_val", "role": "ARADDR" }} , 
 	{ "name": "m_axi_u_val_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "u_val", "role": "ARID" }} , 
 	{ "name": "m_axi_u_val_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "u_val", "role": "ARLEN" }} , 
 	{ "name": "m_axi_u_val_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "u_val", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_u_val_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "u_val", "role": "ARBURST" }} , 
 	{ "name": "m_axi_u_val_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "u_val", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_u_val_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "u_val", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_u_val_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "u_val", "role": "ARPROT" }} , 
 	{ "name": "m_axi_u_val_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "u_val", "role": "ARQOS" }} , 
 	{ "name": "m_axi_u_val_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "u_val", "role": "ARREGION" }} , 
 	{ "name": "m_axi_u_val_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "u_val", "role": "ARUSER" }} , 
 	{ "name": "m_axi_u_val_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u_val", "role": "RVALID" }} , 
 	{ "name": "m_axi_u_val_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u_val", "role": "RREADY" }} , 
 	{ "name": "m_axi_u_val_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "u_val", "role": "RDATA" }} , 
 	{ "name": "m_axi_u_val_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u_val", "role": "RLAST" }} , 
 	{ "name": "m_axi_u_val_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "u_val", "role": "RID" }} , 
 	{ "name": "m_axi_u_val_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "u_val", "role": "RUSER" }} , 
 	{ "name": "m_axi_u_val_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "u_val", "role": "RRESP" }} , 
 	{ "name": "m_axi_u_val_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u_val", "role": "BVALID" }} , 
 	{ "name": "m_axi_u_val_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u_val", "role": "BREADY" }} , 
 	{ "name": "m_axi_u_val_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "u_val", "role": "BRESP" }} , 
 	{ "name": "m_axi_u_val_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "u_val", "role": "BID" }} , 
 	{ "name": "m_axi_u_val_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "u_val", "role": "BUSER" }} , 
 	{ "name": "m_axi_x_row_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_row", "role": "AWVALID" }} , 
 	{ "name": "m_axi_x_row_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_row", "role": "AWREADY" }} , 
 	{ "name": "m_axi_x_row_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "x_row", "role": "AWADDR" }} , 
 	{ "name": "m_axi_x_row_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "x_row", "role": "AWID" }} , 
 	{ "name": "m_axi_x_row_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "x_row", "role": "AWLEN" }} , 
 	{ "name": "m_axi_x_row_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "x_row", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_x_row_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "x_row", "role": "AWBURST" }} , 
 	{ "name": "m_axi_x_row_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "x_row", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_x_row_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "x_row", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_x_row_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "x_row", "role": "AWPROT" }} , 
 	{ "name": "m_axi_x_row_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "x_row", "role": "AWQOS" }} , 
 	{ "name": "m_axi_x_row_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "x_row", "role": "AWREGION" }} , 
 	{ "name": "m_axi_x_row_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "x_row", "role": "AWUSER" }} , 
 	{ "name": "m_axi_x_row_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_row", "role": "WVALID" }} , 
 	{ "name": "m_axi_x_row_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_row", "role": "WREADY" }} , 
 	{ "name": "m_axi_x_row_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_row", "role": "WDATA" }} , 
 	{ "name": "m_axi_x_row_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "x_row", "role": "WSTRB" }} , 
 	{ "name": "m_axi_x_row_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_row", "role": "WLAST" }} , 
 	{ "name": "m_axi_x_row_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "x_row", "role": "WID" }} , 
 	{ "name": "m_axi_x_row_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "x_row", "role": "WUSER" }} , 
 	{ "name": "m_axi_x_row_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_row", "role": "ARVALID" }} , 
 	{ "name": "m_axi_x_row_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_row", "role": "ARREADY" }} , 
 	{ "name": "m_axi_x_row_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "x_row", "role": "ARADDR" }} , 
 	{ "name": "m_axi_x_row_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "x_row", "role": "ARID" }} , 
 	{ "name": "m_axi_x_row_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "x_row", "role": "ARLEN" }} , 
 	{ "name": "m_axi_x_row_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "x_row", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_x_row_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "x_row", "role": "ARBURST" }} , 
 	{ "name": "m_axi_x_row_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "x_row", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_x_row_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "x_row", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_x_row_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "x_row", "role": "ARPROT" }} , 
 	{ "name": "m_axi_x_row_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "x_row", "role": "ARQOS" }} , 
 	{ "name": "m_axi_x_row_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "x_row", "role": "ARREGION" }} , 
 	{ "name": "m_axi_x_row_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "x_row", "role": "ARUSER" }} , 
 	{ "name": "m_axi_x_row_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_row", "role": "RVALID" }} , 
 	{ "name": "m_axi_x_row_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_row", "role": "RREADY" }} , 
 	{ "name": "m_axi_x_row_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_row", "role": "RDATA" }} , 
 	{ "name": "m_axi_x_row_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_row", "role": "RLAST" }} , 
 	{ "name": "m_axi_x_row_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "x_row", "role": "RID" }} , 
 	{ "name": "m_axi_x_row_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "x_row", "role": "RUSER" }} , 
 	{ "name": "m_axi_x_row_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "x_row", "role": "RRESP" }} , 
 	{ "name": "m_axi_x_row_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_row", "role": "BVALID" }} , 
 	{ "name": "m_axi_x_row_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_row", "role": "BREADY" }} , 
 	{ "name": "m_axi_x_row_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "x_row", "role": "BRESP" }} , 
 	{ "name": "m_axi_x_row_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "x_row", "role": "BID" }} , 
 	{ "name": "m_axi_x_row_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "x_row", "role": "BUSER" }} , 
 	{ "name": "m_axi_x_col_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_col", "role": "AWVALID" }} , 
 	{ "name": "m_axi_x_col_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_col", "role": "AWREADY" }} , 
 	{ "name": "m_axi_x_col_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "x_col", "role": "AWADDR" }} , 
 	{ "name": "m_axi_x_col_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "x_col", "role": "AWID" }} , 
 	{ "name": "m_axi_x_col_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "x_col", "role": "AWLEN" }} , 
 	{ "name": "m_axi_x_col_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "x_col", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_x_col_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "x_col", "role": "AWBURST" }} , 
 	{ "name": "m_axi_x_col_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "x_col", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_x_col_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "x_col", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_x_col_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "x_col", "role": "AWPROT" }} , 
 	{ "name": "m_axi_x_col_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "x_col", "role": "AWQOS" }} , 
 	{ "name": "m_axi_x_col_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "x_col", "role": "AWREGION" }} , 
 	{ "name": "m_axi_x_col_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "x_col", "role": "AWUSER" }} , 
 	{ "name": "m_axi_x_col_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_col", "role": "WVALID" }} , 
 	{ "name": "m_axi_x_col_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_col", "role": "WREADY" }} , 
 	{ "name": "m_axi_x_col_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_col", "role": "WDATA" }} , 
 	{ "name": "m_axi_x_col_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "x_col", "role": "WSTRB" }} , 
 	{ "name": "m_axi_x_col_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_col", "role": "WLAST" }} , 
 	{ "name": "m_axi_x_col_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "x_col", "role": "WID" }} , 
 	{ "name": "m_axi_x_col_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "x_col", "role": "WUSER" }} , 
 	{ "name": "m_axi_x_col_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_col", "role": "ARVALID" }} , 
 	{ "name": "m_axi_x_col_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_col", "role": "ARREADY" }} , 
 	{ "name": "m_axi_x_col_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "x_col", "role": "ARADDR" }} , 
 	{ "name": "m_axi_x_col_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "x_col", "role": "ARID" }} , 
 	{ "name": "m_axi_x_col_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "x_col", "role": "ARLEN" }} , 
 	{ "name": "m_axi_x_col_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "x_col", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_x_col_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "x_col", "role": "ARBURST" }} , 
 	{ "name": "m_axi_x_col_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "x_col", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_x_col_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "x_col", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_x_col_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "x_col", "role": "ARPROT" }} , 
 	{ "name": "m_axi_x_col_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "x_col", "role": "ARQOS" }} , 
 	{ "name": "m_axi_x_col_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "x_col", "role": "ARREGION" }} , 
 	{ "name": "m_axi_x_col_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "x_col", "role": "ARUSER" }} , 
 	{ "name": "m_axi_x_col_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_col", "role": "RVALID" }} , 
 	{ "name": "m_axi_x_col_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_col", "role": "RREADY" }} , 
 	{ "name": "m_axi_x_col_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_col", "role": "RDATA" }} , 
 	{ "name": "m_axi_x_col_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_col", "role": "RLAST" }} , 
 	{ "name": "m_axi_x_col_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "x_col", "role": "RID" }} , 
 	{ "name": "m_axi_x_col_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "x_col", "role": "RUSER" }} , 
 	{ "name": "m_axi_x_col_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "x_col", "role": "RRESP" }} , 
 	{ "name": "m_axi_x_col_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_col", "role": "BVALID" }} , 
 	{ "name": "m_axi_x_col_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_col", "role": "BREADY" }} , 
 	{ "name": "m_axi_x_col_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "x_col", "role": "BRESP" }} , 
 	{ "name": "m_axi_x_col_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "x_col", "role": "BID" }} , 
 	{ "name": "m_axi_x_col_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "x_col", "role": "BUSER" }} , 
 	{ "name": "m_axi_x_val_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_val", "role": "AWVALID" }} , 
 	{ "name": "m_axi_x_val_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_val", "role": "AWREADY" }} , 
 	{ "name": "m_axi_x_val_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "x_val", "role": "AWADDR" }} , 
 	{ "name": "m_axi_x_val_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "x_val", "role": "AWID" }} , 
 	{ "name": "m_axi_x_val_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "x_val", "role": "AWLEN" }} , 
 	{ "name": "m_axi_x_val_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "x_val", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_x_val_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "x_val", "role": "AWBURST" }} , 
 	{ "name": "m_axi_x_val_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "x_val", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_x_val_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "x_val", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_x_val_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "x_val", "role": "AWPROT" }} , 
 	{ "name": "m_axi_x_val_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "x_val", "role": "AWQOS" }} , 
 	{ "name": "m_axi_x_val_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "x_val", "role": "AWREGION" }} , 
 	{ "name": "m_axi_x_val_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "x_val", "role": "AWUSER" }} , 
 	{ "name": "m_axi_x_val_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_val", "role": "WVALID" }} , 
 	{ "name": "m_axi_x_val_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_val", "role": "WREADY" }} , 
 	{ "name": "m_axi_x_val_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_val", "role": "WDATA" }} , 
 	{ "name": "m_axi_x_val_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "x_val", "role": "WSTRB" }} , 
 	{ "name": "m_axi_x_val_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_val", "role": "WLAST" }} , 
 	{ "name": "m_axi_x_val_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "x_val", "role": "WID" }} , 
 	{ "name": "m_axi_x_val_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "x_val", "role": "WUSER" }} , 
 	{ "name": "m_axi_x_val_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_val", "role": "ARVALID" }} , 
 	{ "name": "m_axi_x_val_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_val", "role": "ARREADY" }} , 
 	{ "name": "m_axi_x_val_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "x_val", "role": "ARADDR" }} , 
 	{ "name": "m_axi_x_val_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "x_val", "role": "ARID" }} , 
 	{ "name": "m_axi_x_val_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "x_val", "role": "ARLEN" }} , 
 	{ "name": "m_axi_x_val_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "x_val", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_x_val_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "x_val", "role": "ARBURST" }} , 
 	{ "name": "m_axi_x_val_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "x_val", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_x_val_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "x_val", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_x_val_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "x_val", "role": "ARPROT" }} , 
 	{ "name": "m_axi_x_val_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "x_val", "role": "ARQOS" }} , 
 	{ "name": "m_axi_x_val_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "x_val", "role": "ARREGION" }} , 
 	{ "name": "m_axi_x_val_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "x_val", "role": "ARUSER" }} , 
 	{ "name": "m_axi_x_val_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_val", "role": "RVALID" }} , 
 	{ "name": "m_axi_x_val_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_val", "role": "RREADY" }} , 
 	{ "name": "m_axi_x_val_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_val", "role": "RDATA" }} , 
 	{ "name": "m_axi_x_val_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_val", "role": "RLAST" }} , 
 	{ "name": "m_axi_x_val_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "x_val", "role": "RID" }} , 
 	{ "name": "m_axi_x_val_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "x_val", "role": "RUSER" }} , 
 	{ "name": "m_axi_x_val_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "x_val", "role": "RRESP" }} , 
 	{ "name": "m_axi_x_val_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_val", "role": "BVALID" }} , 
 	{ "name": "m_axi_x_val_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_val", "role": "BREADY" }} , 
 	{ "name": "m_axi_x_val_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "x_val", "role": "BRESP" }} , 
 	{ "name": "m_axi_x_val_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "x_val", "role": "BID" }} , 
 	{ "name": "m_axi_x_val_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "x_val", "role": "BUSER" }}  ]}

set ArgLastReadFirstWriteLatency {
	sparse_lu_shared {
		a_row {Type I LastRead 34 FirstWrite -1}
		a_col {Type I LastRead 10 FirstWrite -1}
		a_val {Type I LastRead 21 FirstWrite -1}
		l_row {Type I LastRead 37 FirstWrite -1}
		l_col {Type I LastRead 39 FirstWrite -1}
		l_val {Type IO LastRead 51 FirstWrite -1}
		u_row {Type I LastRead 37 FirstWrite -1}
		u_col {Type I LastRead 39 FirstWrite -1}
		u_val {Type IO LastRead 51 FirstWrite -1}
		x_row {Type I LastRead 41 FirstWrite -1}
		x_col {Type I LastRead 43 FirstWrite -1}
		x_val {Type IO LastRead 53 FirstWrite -1}
		operation {Type I LastRead 0 FirstWrite -1}
		A_rcsr {Type I LastRead 0 FirstWrite -1}
		A_cid {Type I LastRead 0 FirstWrite -1}
		A_val_r {Type I LastRead 0 FirstWrite -1}
		L_rcsr {Type I LastRead 0 FirstWrite -1}
		L_cid {Type I LastRead 0 FirstWrite -1}
		L_val_r {Type I LastRead 0 FirstWrite -1}
		U_rcsr {Type I LastRead 0 FirstWrite -1}
		U_cid {Type I LastRead 0 FirstWrite -1}
		U_val_r {Type I LastRead 0 FirstWrite -1}
		X_rcsr {Type I LastRead 0 FirstWrite -1}
		X_cid {Type I LastRead 0 FirstWrite -1}
		X_val_r {Type I LastRead 0 FirstWrite -1}
		n {Type I LastRead 0 FirstWrite -1}
		a_nnz {Type I LastRead 0 FirstWrite -1}
		l_nnz {Type I LastRead 0 FirstWrite -1}
		u_nnz {Type I LastRead 0 FirstWrite -1}
		x_rows {Type I LastRead 0 FirstWrite -1}
		x_cols {Type I LastRead 0 FirstWrite -1}
		x_nnz {Type I LastRead 0 FirstWrite -1}
		pivot_eps {Type I LastRead 0 FirstWrite -1}
		status {Type O LastRead -1 FirstWrite 0}
		failed_row {Type O LastRead -1 FirstWrite 0}}
	sparse_lu_shared_Pipeline_VITIS_LOOP_23_1_VITIS_LOOP_24_2 {
		select_ln24 {Type I LastRead 0 FirstWrite -1}
		mul_ln22 {Type I LastRead 0 FirstWrite -1}
		n {Type I LastRead 0 FirstWrite -1}
		lower_pos {Type O LastRead -1 FirstWrite 2}
		lower_pos_1 {Type O LastRead -1 FirstWrite 2}
		lower_pos_2 {Type O LastRead -1 FirstWrite 2}
		lower_pos_3 {Type O LastRead -1 FirstWrite 2}
		upper_pos {Type O LastRead -1 FirstWrite 2}
		upper_pos_1 {Type O LastRead -1 FirstWrite 2}
		upper_pos_2 {Type O LastRead -1 FirstWrite 2}
		upper_pos_3 {Type O LastRead -1 FirstWrite 2}
		factor {Type O LastRead -1 FirstWrite 2}
		factor_1 {Type O LastRead -1 FirstWrite 2}
		factor_2 {Type O LastRead -1 FirstWrite 2}
		factor_3 {Type O LastRead -1 FirstWrite 2}}
	sparse_lu_shared_Pipeline_VITIS_LOOP_44_1_VITIS_LOOP_45_2 {
		mul_ln43 {Type I LastRead 0 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}
		block_pos {Type O LastRead -1 FirstWrite 0}
		block_pos_1 {Type O LastRead -1 FirstWrite 0}
		block_pos_2 {Type O LastRead -1 FirstWrite 0}
		block_pos_3 {Type O LastRead -1 FirstWrite 0}
		block_pos_4 {Type O LastRead -1 FirstWrite 0}
		block_pos_5 {Type O LastRead -1 FirstWrite 0}
		block_pos_6 {Type O LastRead -1 FirstWrite 0}
		block_pos_7 {Type O LastRead -1 FirstWrite 0}
		block_pos_8 {Type O LastRead -1 FirstWrite 0}
		block_pos_9 {Type O LastRead -1 FirstWrite 0}
		block_pos_10 {Type O LastRead -1 FirstWrite 0}
		block_pos_11 {Type O LastRead -1 FirstWrite 0}
		block_pos_12 {Type O LastRead -1 FirstWrite 0}
		block_pos_13 {Type O LastRead -1 FirstWrite 0}
		block_pos_14 {Type O LastRead -1 FirstWrite 0}
		block_pos_15 {Type O LastRead -1 FirstWrite 0}
		block_r {Type O LastRead -1 FirstWrite 0}
		block_1 {Type O LastRead -1 FirstWrite 0}
		block_2 {Type O LastRead -1 FirstWrite 0}
		block_3 {Type O LastRead -1 FirstWrite 0}
		block_4 {Type O LastRead -1 FirstWrite 0}
		block_5 {Type O LastRead -1 FirstWrite 0}
		block_6 {Type O LastRead -1 FirstWrite 0}
		block_7 {Type O LastRead -1 FirstWrite 0}
		block_8 {Type O LastRead -1 FirstWrite 0}
		block_9 {Type O LastRead -1 FirstWrite 0}
		block_10 {Type O LastRead -1 FirstWrite 0}
		block_11 {Type O LastRead -1 FirstWrite 0}
		block_12 {Type O LastRead -1 FirstWrite 0}
		block_13 {Type O LastRead -1 FirstWrite 0}
		block_14 {Type O LastRead -1 FirstWrite 0}
		block_15 {Type O LastRead -1 FirstWrite 0}}
	sparse_lu_shared_Pipeline_VITIS_LOOP_110_2 {
		zext_ln110 {Type I LastRead 0 FirstWrite -1}
		x_val {Type I LastRead 20 FirstWrite -1}
		x_col {Type I LastRead 10 FirstWrite -1}
		empty_68 {Type I LastRead 0 FirstWrite -1}
		X_val_r {Type I LastRead 0 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}
		X_cid {Type I LastRead 0 FirstWrite -1}
		zext_ln116_1 {Type I LastRead 0 FirstWrite -1}
		block_pos {Type O LastRead -1 FirstWrite 11}
		block_pos_1 {Type O LastRead -1 FirstWrite 11}
		block_pos_2 {Type O LastRead -1 FirstWrite 11}
		block_pos_3 {Type O LastRead -1 FirstWrite 11}
		block_pos_4 {Type O LastRead -1 FirstWrite 11}
		block_pos_5 {Type O LastRead -1 FirstWrite 11}
		block_pos_6 {Type O LastRead -1 FirstWrite 11}
		block_pos_7 {Type O LastRead -1 FirstWrite 11}
		block_pos_8 {Type O LastRead -1 FirstWrite 11}
		block_pos_9 {Type O LastRead -1 FirstWrite 11}
		block_pos_10 {Type O LastRead -1 FirstWrite 11}
		block_pos_11 {Type O LastRead -1 FirstWrite 11}
		block_pos_12 {Type O LastRead -1 FirstWrite 11}
		block_pos_13 {Type O LastRead -1 FirstWrite 11}
		block_pos_14 {Type O LastRead -1 FirstWrite 11}
		block_pos_15 {Type O LastRead -1 FirstWrite 11}
		block_r {Type O LastRead -1 FirstWrite 21}
		block_1 {Type O LastRead -1 FirstWrite 21}
		block_2 {Type O LastRead -1 FirstWrite 21}
		block_3 {Type O LastRead -1 FirstWrite 21}
		block_4 {Type O LastRead -1 FirstWrite 21}
		block_5 {Type O LastRead -1 FirstWrite 21}
		block_6 {Type O LastRead -1 FirstWrite 21}
		block_7 {Type O LastRead -1 FirstWrite 21}
		block_8 {Type O LastRead -1 FirstWrite 21}
		block_9 {Type O LastRead -1 FirstWrite 21}
		block_10 {Type O LastRead -1 FirstWrite 21}
		block_11 {Type O LastRead -1 FirstWrite 21}
		block_12 {Type O LastRead -1 FirstWrite 21}
		block_13 {Type O LastRead -1 FirstWrite 21}
		block_14 {Type O LastRead -1 FirstWrite 21}
		block_15 {Type O LastRead -1 FirstWrite 21}
		x_cols {Type I LastRead 0 FirstWrite -1}}
	cache_triangular_pattern {
		u_row {Type I LastRead 30 FirstWrite -1}
		row_ptr {Type I LastRead 0 FirstWrite -1}
		u_col {Type I LastRead 10 FirstWrite -1}
		col_idx {Type I LastRead 9 FirstWrite -1}
		u_val {Type I LastRead 20 FirstWrite -1}
		values {Type I LastRead 9 FirstWrite -1}
		n {Type I LastRead 9 FirstWrite -1}
		nnz {Type I LastRead 9 FirstWrite -1}
		lower {Type I LastRead 9 FirstWrite -1}
		load_values {Type I LastRead 9 FirstWrite -1}
		position_0 {Type IO LastRead 33 FirstWrite 11}
		position_1 {Type IO LastRead 33 FirstWrite 11}
		position_2 {Type IO LastRead 33 FirstWrite 11}
		position_3 {Type IO LastRead 33 FirstWrite 11}
		factor_val_0 {Type O LastRead -1 FirstWrite 21}
		factor_val_1 {Type O LastRead -1 FirstWrite 21}
		factor_val_2 {Type O LastRead -1 FirstWrite 21}
		factor_val_3 {Type O LastRead -1 FirstWrite 21}
		failed_row {Type O LastRead -1 FirstWrite 31}}
	cache_triangular_pattern_Pipeline_VITIS_LOOP_76_2 {
		zext_ln76 {Type I LastRead 0 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}
		load_values {Type I LastRead 0 FirstWrite -1}
		row {Type I LastRead 0 FirstWrite -1}
		lower {Type I LastRead 0 FirstWrite -1}
		factor_val_3 {Type O LastRead -1 FirstWrite 21}
		factor_val_2 {Type O LastRead -1 FirstWrite 21}
		factor_val_1 {Type O LastRead -1 FirstWrite 21}
		factor_val_0 {Type O LastRead -1 FirstWrite 21}
		position_3 {Type O LastRead -1 FirstWrite 11}
		position_2 {Type O LastRead -1 FirstWrite 11}
		position_1 {Type O LastRead -1 FirstWrite 11}
		position_0 {Type O LastRead -1 FirstWrite 11}
		col_idx {Type I LastRead 0 FirstWrite -1}
		u_col {Type I LastRead 10 FirstWrite -1}
		zext_ln83_1 {Type I LastRead 0 FirstWrite -1}
		n {Type I LastRead 0 FirstWrite -1}
		values {Type I LastRead 0 FirstWrite -1}
		u_val {Type I LastRead 20 FirstWrite -1}}
	run_cached_tstrf {
		n {Type I LastRead 0 FirstWrite -1}
		x_rows {Type I LastRead 0 FirstWrite -1}
		pivot_eps {Type I LastRead 0 FirstWrite -1}
		upper_pos_0 {Type I LastRead 1 FirstWrite -1}
		upper_pos_1 {Type I LastRead 1 FirstWrite -1}
		upper_pos_2 {Type I LastRead 1 FirstWrite -1}
		upper_pos_3 {Type I LastRead 1 FirstWrite -1}
		factor_0 {Type I LastRead 3 FirstWrite -1}
		factor_1 {Type I LastRead 3 FirstWrite -1}
		factor_2 {Type I LastRead 3 FirstWrite -1}
		factor_3 {Type I LastRead 3 FirstWrite -1}
		block_pos_0_0 {Type I LastRead 8 FirstWrite -1}
		block_pos_0_1 {Type I LastRead 8 FirstWrite -1}
		block_pos_0_2 {Type I LastRead 8 FirstWrite -1}
		block_pos_0_3 {Type I LastRead 8 FirstWrite -1}
		block_pos_1_0 {Type I LastRead 27 FirstWrite -1}
		block_pos_1_1 {Type I LastRead 27 FirstWrite -1}
		block_pos_1_2 {Type I LastRead 27 FirstWrite -1}
		block_pos_1_3 {Type I LastRead 27 FirstWrite -1}
		block_pos_2_0 {Type I LastRead 46 FirstWrite -1}
		block_pos_2_1 {Type I LastRead 46 FirstWrite -1}
		block_pos_2_2 {Type I LastRead 46 FirstWrite -1}
		block_pos_2_3 {Type I LastRead 46 FirstWrite -1}
		block_pos_3_0 {Type I LastRead 65 FirstWrite -1}
		block_pos_3_1 {Type I LastRead 65 FirstWrite -1}
		block_pos_3_2 {Type I LastRead 65 FirstWrite -1}
		block_pos_3_3 {Type I LastRead 65 FirstWrite -1}
		block_0_0 {Type IO LastRead 9 FirstWrite 17}
		block_0_1 {Type IO LastRead 9 FirstWrite 17}
		block_0_2 {Type IO LastRead 9 FirstWrite 17}
		block_0_3 {Type IO LastRead 9 FirstWrite 17}
		block_1_0 {Type IO LastRead 28 FirstWrite 17}
		block_1_1 {Type IO LastRead 28 FirstWrite 17}
		block_1_2 {Type IO LastRead 28 FirstWrite 17}
		block_1_3 {Type IO LastRead 28 FirstWrite 17}
		block_2_0 {Type IO LastRead 47 FirstWrite 17}
		block_2_1 {Type IO LastRead 47 FirstWrite 17}
		block_2_2 {Type IO LastRead 47 FirstWrite 17}
		block_2_3 {Type IO LastRead 47 FirstWrite 17}
		block_3_0 {Type IO LastRead 66 FirstWrite 17}
		block_3_1 {Type IO LastRead 66 FirstWrite 17}
		block_3_2 {Type IO LastRead 66 FirstWrite 17}
		block_3_3 {Type IO LastRead 66 FirstWrite 17}
		failed_row {Type O LastRead -1 FirstWrite 5}}
	run_cached_tstrf_Pipeline_VITIS_LOOP_171_3 {
		indvars_iv_i {Type I LastRead 0 FirstWrite -1}
		n {Type I LastRead 0 FirstWrite -1}
		pivot {Type I LastRead 0 FirstWrite -1}
		upper_pos_0 {Type I LastRead 0 FirstWrite -1}
		upper_pos_1 {Type I LastRead 0 FirstWrite -1}
		upper_pos_2 {Type I LastRead 0 FirstWrite -1}
		upper_pos_3 {Type I LastRead 0 FirstWrite -1}
		empty_71 {Type I LastRead 0 FirstWrite -1}
		block_pos_0_0 {Type I LastRead 1 FirstWrite -1}
		block_pos_0_1 {Type I LastRead 1 FirstWrite -1}
		block_pos_0_2 {Type I LastRead 1 FirstWrite -1}
		block_pos_0_3 {Type I LastRead 1 FirstWrite -1}
		block_pos_1_0 {Type I LastRead 1 FirstWrite -1}
		block_pos_1_1 {Type I LastRead 1 FirstWrite -1}
		block_pos_1_2 {Type I LastRead 1 FirstWrite -1}
		block_pos_1_3 {Type I LastRead 1 FirstWrite -1}
		block_pos_2_0 {Type I LastRead 1 FirstWrite -1}
		block_pos_2_1 {Type I LastRead 1 FirstWrite -1}
		block_pos_2_2 {Type I LastRead 1 FirstWrite -1}
		block_pos_2_3 {Type I LastRead 1 FirstWrite -1}
		block_pos_3_0 {Type I LastRead 1 FirstWrite -1}
		block_pos_3_1 {Type I LastRead 1 FirstWrite -1}
		block_pos_3_2 {Type I LastRead 1 FirstWrite -1}
		block_pos_3_3 {Type I LastRead 1 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}}
	run_cached_tstrf_Pipeline_VITIS_LOOP_329_4 {
		zext_ln309 {Type I LastRead 0 FirstWrite -1}
		tmp_5 {Type I LastRead 0 FirstWrite -1}
		n {Type I LastRead 0 FirstWrite -1}
		zext_ln332 {Type I LastRead 0 FirstWrite -1}
		upper_pos_0 {Type I LastRead 1 FirstWrite -1}
		upper_pos_1 {Type I LastRead 1 FirstWrite -1}
		upper_pos_2 {Type I LastRead 1 FirstWrite -1}
		upper_pos_3 {Type I LastRead 1 FirstWrite -1}
		factor_0 {Type I LastRead 3 FirstWrite -1}
		factor_1 {Type I LastRead 3 FirstWrite -1}
		factor_2 {Type I LastRead 3 FirstWrite -1}
		factor_3 {Type I LastRead 3 FirstWrite -1}
		zext_ln324 {Type I LastRead 0 FirstWrite -1}
		block_0_0 {Type IO LastRead 2 FirstWrite 17}
		block_0_1 {Type IO LastRead 2 FirstWrite 17}
		block_0_2 {Type IO LastRead 2 FirstWrite 17}
		block_0_3 {Type IO LastRead 2 FirstWrite 17}
		block_1_0 {Type IO LastRead 2 FirstWrite 17}
		block_1_1 {Type IO LastRead 2 FirstWrite 17}
		block_1_2 {Type IO LastRead 2 FirstWrite 17}
		block_1_3 {Type IO LastRead 2 FirstWrite 17}
		block_2_0 {Type IO LastRead 2 FirstWrite 17}
		block_2_1 {Type IO LastRead 2 FirstWrite 17}
		block_2_2 {Type IO LastRead 2 FirstWrite 17}
		block_2_3 {Type IO LastRead 2 FirstWrite 17}
		block_3_0 {Type IO LastRead 2 FirstWrite 17}
		block_3_1 {Type IO LastRead 2 FirstWrite 17}
		block_3_2 {Type IO LastRead 2 FirstWrite 17}
		block_3_3 {Type IO LastRead 2 FirstWrite 17}
		empty_69 {Type I LastRead 0 FirstWrite -1}
		empty_70 {Type I LastRead 0 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}
		cond48 {Type I LastRead 0 FirstWrite -1}
		cond_149 {Type I LastRead 0 FirstWrite -1}
		cond_251 {Type I LastRead 0 FirstWrite -1}
		cond_353 {Type I LastRead 0 FirstWrite -1}}
	run_cached_gessm {
		n {Type I LastRead 0 FirstWrite -1}
		x_cols {Type I LastRead 0 FirstWrite -1}
		lower_pos_0 {Type I LastRead 3 FirstWrite -1}
		lower_pos_1 {Type I LastRead 3 FirstWrite -1}
		lower_pos_2 {Type I LastRead 3 FirstWrite -1}
		lower_pos_3 {Type I LastRead 3 FirstWrite -1}
		factor_0 {Type I LastRead 4 FirstWrite -1}
		factor_1 {Type I LastRead 4 FirstWrite -1}
		factor_2 {Type I LastRead 4 FirstWrite -1}
		factor_3 {Type I LastRead 4 FirstWrite -1}
		block_pos_0_0 {Type I LastRead 1 FirstWrite -1}
		block_pos_0_1 {Type I LastRead 1 FirstWrite -1}
		block_pos_0_2 {Type I LastRead 1 FirstWrite -1}
		block_pos_0_3 {Type I LastRead 1 FirstWrite -1}
		block_pos_1_0 {Type I LastRead 1 FirstWrite -1}
		block_pos_1_1 {Type I LastRead 1 FirstWrite -1}
		block_pos_1_2 {Type I LastRead 1 FirstWrite -1}
		block_pos_1_3 {Type I LastRead 1 FirstWrite -1}
		block_pos_2_0 {Type I LastRead 1 FirstWrite -1}
		block_pos_2_1 {Type I LastRead 1 FirstWrite -1}
		block_pos_2_2 {Type I LastRead 1 FirstWrite -1}
		block_pos_2_3 {Type I LastRead 1 FirstWrite -1}
		block_pos_3_0 {Type I LastRead 1 FirstWrite -1}
		block_pos_3_1 {Type I LastRead 1 FirstWrite -1}
		block_pos_3_2 {Type I LastRead 1 FirstWrite -1}
		block_pos_3_3 {Type I LastRead 1 FirstWrite -1}
		block_0_0 {Type IO LastRead 2 FirstWrite 16}
		block_0_1 {Type IO LastRead 2 FirstWrite 16}
		block_0_2 {Type IO LastRead 2 FirstWrite 16}
		block_0_3 {Type IO LastRead 2 FirstWrite 16}
		block_1_0 {Type IO LastRead 2 FirstWrite 16}
		block_1_1 {Type IO LastRead 2 FirstWrite 16}
		block_1_2 {Type IO LastRead 2 FirstWrite 16}
		block_1_3 {Type IO LastRead 2 FirstWrite 16}
		block_2_0 {Type IO LastRead 2 FirstWrite 16}
		block_2_1 {Type IO LastRead 2 FirstWrite 16}
		block_2_2 {Type IO LastRead 2 FirstWrite 16}
		block_2_3 {Type IO LastRead 2 FirstWrite 16}
		block_3_0 {Type IO LastRead 2 FirstWrite 16}
		block_3_1 {Type IO LastRead 2 FirstWrite 16}
		block_3_2 {Type IO LastRead 2 FirstWrite 16}
		block_3_3 {Type IO LastRead 2 FirstWrite 16}
		failed_row {Type O LastRead -1 FirstWrite 5}}
	run_cached_gessm_Pipeline_VITIS_LOOP_152_3 {
		x_cols {Type I LastRead 0 FirstWrite -1}
		lshr_ln20 {Type I LastRead 0 FirstWrite -1}
		block_pos_0_0 {Type I LastRead 1 FirstWrite -1}
		row {Type I LastRead 0 FirstWrite -1}
		block_pos_0_1 {Type I LastRead 1 FirstWrite -1}
		block_pos_0_2 {Type I LastRead 1 FirstWrite -1}
		block_pos_0_3 {Type I LastRead 1 FirstWrite -1}
		block_pos_1_0 {Type I LastRead 1 FirstWrite -1}
		block_pos_1_1 {Type I LastRead 1 FirstWrite -1}
		block_pos_1_2 {Type I LastRead 1 FirstWrite -1}
		block_pos_1_3 {Type I LastRead 1 FirstWrite -1}
		block_pos_2_0 {Type I LastRead 1 FirstWrite -1}
		block_pos_2_1 {Type I LastRead 1 FirstWrite -1}
		block_pos_2_2 {Type I LastRead 1 FirstWrite -1}
		block_pos_2_3 {Type I LastRead 1 FirstWrite -1}
		block_pos_3_0 {Type I LastRead 1 FirstWrite -1}
		block_pos_3_1 {Type I LastRead 1 FirstWrite -1}
		block_pos_3_2 {Type I LastRead 1 FirstWrite -1}
		block_pos_3_3 {Type I LastRead 1 FirstWrite -1}
		empty_73 {Type I LastRead 0 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}}
	run_cached_gessm_Pipeline_VITIS_LOOP_283_3 {
		x_cols {Type I LastRead 0 FirstWrite -1}
		lshr_ln21 {Type I LastRead 0 FirstWrite -1}
		block_pos_0_0 {Type I LastRead 0 FirstWrite -1}
		block_pos_0_1 {Type I LastRead 0 FirstWrite -1}
		block_pos_0_2 {Type I LastRead 0 FirstWrite -1}
		block_pos_0_3 {Type I LastRead 0 FirstWrite -1}
		block_pos_1_0 {Type I LastRead 0 FirstWrite -1}
		block_pos_1_1 {Type I LastRead 0 FirstWrite -1}
		block_pos_1_2 {Type I LastRead 0 FirstWrite -1}
		block_pos_1_3 {Type I LastRead 0 FirstWrite -1}
		block_pos_2_0 {Type I LastRead 0 FirstWrite -1}
		block_pos_2_1 {Type I LastRead 0 FirstWrite -1}
		block_pos_2_2 {Type I LastRead 0 FirstWrite -1}
		block_pos_2_3 {Type I LastRead 0 FirstWrite -1}
		block_pos_3_0 {Type I LastRead 0 FirstWrite -1}
		block_pos_3_1 {Type I LastRead 0 FirstWrite -1}
		block_pos_3_2 {Type I LastRead 0 FirstWrite -1}
		block_pos_3_3 {Type I LastRead 0 FirstWrite -1}
		block_0_0 {Type IO LastRead 2 FirstWrite 16}
		row_8 {Type I LastRead 0 FirstWrite -1}
		block_0_1 {Type IO LastRead 2 FirstWrite 16}
		block_0_2 {Type IO LastRead 2 FirstWrite 16}
		block_0_3 {Type IO LastRead 2 FirstWrite 16}
		block_1_0 {Type IO LastRead 2 FirstWrite 16}
		block_1_1 {Type IO LastRead 2 FirstWrite 16}
		block_1_2 {Type IO LastRead 2 FirstWrite 16}
		block_1_3 {Type IO LastRead 2 FirstWrite 16}
		block_2_0 {Type IO LastRead 2 FirstWrite 16}
		block_2_1 {Type IO LastRead 2 FirstWrite 16}
		block_2_2 {Type IO LastRead 2 FirstWrite 16}
		block_2_3 {Type IO LastRead 2 FirstWrite 16}
		block_3_0 {Type IO LastRead 2 FirstWrite 16}
		block_3_1 {Type IO LastRead 2 FirstWrite 16}
		block_3_2 {Type IO LastRead 2 FirstWrite 16}
		block_3_3 {Type IO LastRead 2 FirstWrite 16}
		empty_72 {Type I LastRead 0 FirstWrite -1}
		multiplier {Type I LastRead 0 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}}
	sparse_lu_shared_Pipeline_VITIS_LOOP_449_2 {
		pos_2 {Type I LastRead 0 FirstWrite -1}
		x_val {Type O LastRead -1 FirstWrite 4}
		x_col {Type I LastRead 1 FirstWrite -1}
		x_row_addr_3_read_1 {Type I LastRead 0 FirstWrite -1}
		sext_ln449_1 {Type I LastRead 0 FirstWrite -1}
		sext_ln449_2 {Type I LastRead 0 FirstWrite -1}
		zext_ln451_1 {Type I LastRead 0 FirstWrite -1}
		block_r {Type I LastRead 2 FirstWrite -1}
		block_1 {Type I LastRead 2 FirstWrite -1}
		block_2 {Type I LastRead 2 FirstWrite -1}
		block_3 {Type I LastRead 2 FirstWrite -1}
		block_4 {Type I LastRead 2 FirstWrite -1}
		block_5 {Type I LastRead 2 FirstWrite -1}
		block_6 {Type I LastRead 2 FirstWrite -1}
		block_7 {Type I LastRead 2 FirstWrite -1}
		block_8 {Type I LastRead 2 FirstWrite -1}
		block_9 {Type I LastRead 2 FirstWrite -1}
		block_10 {Type I LastRead 2 FirstWrite -1}
		block_11 {Type I LastRead 2 FirstWrite -1}
		block_12 {Type I LastRead 2 FirstWrite -1}
		block_13 {Type I LastRead 2 FirstWrite -1}
		block_14 {Type I LastRead 2 FirstWrite -1}
		block_15 {Type I LastRead 2 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}}
	run_cached_getrf {
		a_row {Type I LastRead 34 FirstWrite -1}
		A_rcsr {Type I LastRead 2 FirstWrite -1}
		a_col {Type I LastRead 10 FirstWrite -1}
		A_cid {Type I LastRead 2 FirstWrite -1}
		a_val {Type I LastRead 21 FirstWrite -1}
		A_val_r {Type I LastRead 2 FirstWrite -1}
		l_row {Type I LastRead 37 FirstWrite -1}
		L_rcsr {Type I LastRead 0 FirstWrite -1}
		l_col {Type I LastRead 39 FirstWrite -1}
		L_cid {Type I LastRead 0 FirstWrite -1}
		l_val {Type IO LastRead 51 FirstWrite -1}
		L_val_r {Type I LastRead 0 FirstWrite -1}
		u_row {Type I LastRead 37 FirstWrite -1}
		U_rcsr {Type I LastRead 2 FirstWrite -1}
		u_col {Type I LastRead 39 FirstWrite -1}
		U_cid {Type I LastRead 2 FirstWrite -1}
		u_val {Type IO LastRead 51 FirstWrite -1}
		U_val_r {Type I LastRead 2 FirstWrite -1}
		n {Type I LastRead 0 FirstWrite -1}
		a_nnz {Type I LastRead 2 FirstWrite -1}
		l_nnz {Type I LastRead 0 FirstWrite -1}
		u_nnz {Type I LastRead 2 FirstWrite -1}
		pivot_eps {Type I LastRead 2 FirstWrite -1}
		lower_pos_0 {Type IO LastRead 33 FirstWrite -1}
		lower_pos_1 {Type IO LastRead 33 FirstWrite -1}
		lower_pos_2 {Type IO LastRead 33 FirstWrite -1}
		lower_pos_3 {Type IO LastRead 33 FirstWrite -1}
		upper_pos_0 {Type IO LastRead 33 FirstWrite -1}
		upper_pos_1 {Type IO LastRead 33 FirstWrite -1}
		upper_pos_2 {Type IO LastRead 33 FirstWrite -1}
		upper_pos_3 {Type IO LastRead 33 FirstWrite -1}
		work_0 {Type IO LastRead 33 FirstWrite -1}
		work_1 {Type IO LastRead 33 FirstWrite -1}
		work_2 {Type IO LastRead 33 FirstWrite -1}
		work_3 {Type IO LastRead 33 FirstWrite -1}
		failed_row {Type O LastRead -1 FirstWrite 29}}
	cache_triangular_pattern {
		u_row {Type I LastRead 30 FirstWrite -1}
		row_ptr {Type I LastRead 0 FirstWrite -1}
		u_col {Type I LastRead 10 FirstWrite -1}
		col_idx {Type I LastRead 9 FirstWrite -1}
		u_val {Type I LastRead 20 FirstWrite -1}
		values {Type I LastRead 9 FirstWrite -1}
		n {Type I LastRead 9 FirstWrite -1}
		nnz {Type I LastRead 9 FirstWrite -1}
		lower {Type I LastRead 9 FirstWrite -1}
		load_values {Type I LastRead 9 FirstWrite -1}
		position_0 {Type IO LastRead 33 FirstWrite 11}
		position_1 {Type IO LastRead 33 FirstWrite 11}
		position_2 {Type IO LastRead 33 FirstWrite 11}
		position_3 {Type IO LastRead 33 FirstWrite 11}
		factor_val_0 {Type O LastRead -1 FirstWrite 21}
		factor_val_1 {Type O LastRead -1 FirstWrite 21}
		factor_val_2 {Type O LastRead -1 FirstWrite 21}
		factor_val_3 {Type O LastRead -1 FirstWrite 21}
		failed_row {Type O LastRead -1 FirstWrite 31}}
	cache_triangular_pattern_Pipeline_VITIS_LOOP_76_2 {
		zext_ln76 {Type I LastRead 0 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}
		load_values {Type I LastRead 0 FirstWrite -1}
		row {Type I LastRead 0 FirstWrite -1}
		lower {Type I LastRead 0 FirstWrite -1}
		factor_val_3 {Type O LastRead -1 FirstWrite 21}
		factor_val_2 {Type O LastRead -1 FirstWrite 21}
		factor_val_1 {Type O LastRead -1 FirstWrite 21}
		factor_val_0 {Type O LastRead -1 FirstWrite 21}
		position_3 {Type O LastRead -1 FirstWrite 11}
		position_2 {Type O LastRead -1 FirstWrite 11}
		position_1 {Type O LastRead -1 FirstWrite 11}
		position_0 {Type O LastRead -1 FirstWrite 11}
		col_idx {Type I LastRead 0 FirstWrite -1}
		u_col {Type I LastRead 10 FirstWrite -1}
		zext_ln83_1 {Type I LastRead 0 FirstWrite -1}
		n {Type I LastRead 0 FirstWrite -1}
		values {Type I LastRead 0 FirstWrite -1}
		u_val {Type I LastRead 20 FirstWrite -1}}
	run_cached_getrf_Pipeline_VITIS_LOOP_210_2 {
		zext_ln210 {Type I LastRead 0 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}
		A_val {Type I LastRead 0 FirstWrite -1}
		a_val_r {Type I LastRead 21 FirstWrite -1}
		row {Type I LastRead 0 FirstWrite -1}
		work_3 {Type O LastRead -1 FirstWrite 22}
		work_2 {Type O LastRead -1 FirstWrite 22}
		work_1 {Type O LastRead -1 FirstWrite 22}
		work_0 {Type O LastRead -1 FirstWrite 22}
		A_cid {Type I LastRead 0 FirstWrite -1}
		a_col {Type I LastRead 10 FirstWrite -1}
		zext_ln217 {Type I LastRead 0 FirstWrite -1}
		lower_pos_0 {Type I LastRead 11 FirstWrite -1}
		lower_pos_1 {Type I LastRead 11 FirstWrite -1}
		lower_pos_2 {Type I LastRead 11 FirstWrite -1}
		lower_pos_3 {Type I LastRead 11 FirstWrite -1}
		upper_pos_0 {Type I LastRead 11 FirstWrite -1}
		upper_pos_1 {Type I LastRead 11 FirstWrite -1}
		upper_pos_2 {Type I LastRead 11 FirstWrite -1}
		upper_pos_3 {Type I LastRead 11 FirstWrite -1}
		n {Type I LastRead 0 FirstWrite -1}}
	run_cached_getrf_Pipeline_VITIS_LOOP_131_3 {
		indvars_iv_i {Type I LastRead 0 FirstWrite -1}
		row_5 {Type I LastRead 0 FirstWrite -1}
		n {Type I LastRead 0 FirstWrite -1}
		zext_ln130 {Type I LastRead 0 FirstWrite -1}
		lower_pos_0 {Type I LastRead 2 FirstWrite -1}
		lower_pos_1 {Type I LastRead 2 FirstWrite -1}
		lower_pos_2 {Type I LastRead 2 FirstWrite -1}
		lower_pos_3 {Type I LastRead 2 FirstWrite -1}
		zext_ln132 {Type I LastRead 0 FirstWrite -1}
		upper_pos_0 {Type I LastRead 2 FirstWrite -1}
		upper_pos_1 {Type I LastRead 2 FirstWrite -1}
		upper_pos_2 {Type I LastRead 2 FirstWrite -1}
		upper_pos_3 {Type I LastRead 2 FirstWrite -1}}
	run_cached_getrf_Pipeline_VITIS_LOOP_238_5 {
		add_ln230 {Type I LastRead 0 FirstWrite -1}
		n {Type I LastRead 0 FirstWrite -1}
		zext_ln245 {Type I LastRead 0 FirstWrite -1}
		upper_pos_0 {Type I LastRead 2 FirstWrite -1}
		upper_pos_1 {Type I LastRead 2 FirstWrite -1}
		upper_pos_2 {Type I LastRead 2 FirstWrite -1}
		upper_pos_3 {Type I LastRead 2 FirstWrite -1}
		work_0 {Type IO LastRead 3 FirstWrite 17}
		zext_ln231 {Type I LastRead 0 FirstWrite -1}
		work_1 {Type IO LastRead 3 FirstWrite 17}
		work_2 {Type IO LastRead 3 FirstWrite 17}
		work_3 {Type IO LastRead 3 FirstWrite 17}
		multiplier {Type I LastRead 0 FirstWrite -1}}
	run_cached_getrf_Pipeline_VITIS_LOOP_257_8 {
		pos_5 {Type I LastRead 0 FirstWrite -1}
		l_row_addr_read_1 {Type I LastRead 0 FirstWrite -1}
		l_col {Type I LastRead 1 FirstWrite -1}
		sext_ln257_1 {Type I LastRead 0 FirstWrite -1}
		l_val {Type O LastRead -1 FirstWrite 4}
		sext_ln257_2 {Type I LastRead 0 FirstWrite -1}
		zext_ln260 {Type I LastRead 0 FirstWrite -1}
		work_0 {Type I LastRead 2 FirstWrite -1}
		work_1 {Type I LastRead 2 FirstWrite -1}
		work_2 {Type I LastRead 2 FirstWrite -1}
		work_3 {Type I LastRead 2 FirstWrite -1}
		row_7 {Type I LastRead 0 FirstWrite -1}}
	run_cached_getrf_Pipeline_VITIS_LOOP_262_9 {
		pos_7 {Type I LastRead 0 FirstWrite -1}
		u_row_addr_read_1 {Type I LastRead 0 FirstWrite -1}
		u_col {Type I LastRead 1 FirstWrite -1}
		sext_ln262_1 {Type I LastRead 0 FirstWrite -1}
		u_val {Type O LastRead -1 FirstWrite 4}
		sext_ln262_2 {Type I LastRead 0 FirstWrite -1}
		zext_ln260 {Type I LastRead 0 FirstWrite -1}
		work_0 {Type I LastRead 2 FirstWrite -1}
		work_1 {Type I LastRead 2 FirstWrite -1}
		work_2 {Type I LastRead 2 FirstWrite -1}
		work_3 {Type I LastRead 2 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "0", "Max" : "0"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	a_row { m_axi {  { m_axi_a_row_AWVALID VALID 1 1 }  { m_axi_a_row_AWREADY READY 0 1 }  { m_axi_a_row_AWADDR ADDR 1 64 }  { m_axi_a_row_AWID ID 1 1 }  { m_axi_a_row_AWLEN SIZE 1 8 }  { m_axi_a_row_AWSIZE BURST 1 3 }  { m_axi_a_row_AWBURST LOCK 1 2 }  { m_axi_a_row_AWLOCK CACHE 1 2 }  { m_axi_a_row_AWCACHE PROT 1 4 }  { m_axi_a_row_AWPROT QOS 1 3 }  { m_axi_a_row_AWQOS REGION 1 4 }  { m_axi_a_row_AWREGION USER 1 4 }  { m_axi_a_row_AWUSER DATA 1 1 }  { m_axi_a_row_WVALID VALID 1 1 }  { m_axi_a_row_WREADY READY 0 1 }  { m_axi_a_row_WDATA FIFONUM 1 32 }  { m_axi_a_row_WSTRB STRB 1 4 }  { m_axi_a_row_WLAST LAST 1 1 }  { m_axi_a_row_WID ID 1 1 }  { m_axi_a_row_WUSER DATA 1 1 }  { m_axi_a_row_ARVALID VALID 1 1 }  { m_axi_a_row_ARREADY READY 0 1 }  { m_axi_a_row_ARADDR ADDR 1 64 }  { m_axi_a_row_ARID ID 1 1 }  { m_axi_a_row_ARLEN SIZE 1 8 }  { m_axi_a_row_ARSIZE BURST 1 3 }  { m_axi_a_row_ARBURST LOCK 1 2 }  { m_axi_a_row_ARLOCK CACHE 1 2 }  { m_axi_a_row_ARCACHE PROT 1 4 }  { m_axi_a_row_ARPROT QOS 1 3 }  { m_axi_a_row_ARQOS REGION 1 4 }  { m_axi_a_row_ARREGION USER 1 4 }  { m_axi_a_row_ARUSER DATA 1 1 }  { m_axi_a_row_RVALID VALID 0 1 }  { m_axi_a_row_RREADY READY 1 1 }  { m_axi_a_row_RDATA FIFONUM 0 32 }  { m_axi_a_row_RLAST LAST 0 1 }  { m_axi_a_row_RID ID 0 1 }  { m_axi_a_row_RUSER DATA 0 1 }  { m_axi_a_row_RRESP RESP 0 2 }  { m_axi_a_row_BVALID VALID 0 1 }  { m_axi_a_row_BREADY READY 1 1 }  { m_axi_a_row_BRESP RESP 0 2 }  { m_axi_a_row_BID ID 0 1 }  { m_axi_a_row_BUSER DATA 0 1 } } }
	a_col { m_axi {  { m_axi_a_col_AWVALID VALID 1 1 }  { m_axi_a_col_AWREADY READY 0 1 }  { m_axi_a_col_AWADDR ADDR 1 64 }  { m_axi_a_col_AWID ID 1 1 }  { m_axi_a_col_AWLEN SIZE 1 8 }  { m_axi_a_col_AWSIZE BURST 1 3 }  { m_axi_a_col_AWBURST LOCK 1 2 }  { m_axi_a_col_AWLOCK CACHE 1 2 }  { m_axi_a_col_AWCACHE PROT 1 4 }  { m_axi_a_col_AWPROT QOS 1 3 }  { m_axi_a_col_AWQOS REGION 1 4 }  { m_axi_a_col_AWREGION USER 1 4 }  { m_axi_a_col_AWUSER DATA 1 1 }  { m_axi_a_col_WVALID VALID 1 1 }  { m_axi_a_col_WREADY READY 0 1 }  { m_axi_a_col_WDATA FIFONUM 1 32 }  { m_axi_a_col_WSTRB STRB 1 4 }  { m_axi_a_col_WLAST LAST 1 1 }  { m_axi_a_col_WID ID 1 1 }  { m_axi_a_col_WUSER DATA 1 1 }  { m_axi_a_col_ARVALID VALID 1 1 }  { m_axi_a_col_ARREADY READY 0 1 }  { m_axi_a_col_ARADDR ADDR 1 64 }  { m_axi_a_col_ARID ID 1 1 }  { m_axi_a_col_ARLEN SIZE 1 8 }  { m_axi_a_col_ARSIZE BURST 1 3 }  { m_axi_a_col_ARBURST LOCK 1 2 }  { m_axi_a_col_ARLOCK CACHE 1 2 }  { m_axi_a_col_ARCACHE PROT 1 4 }  { m_axi_a_col_ARPROT QOS 1 3 }  { m_axi_a_col_ARQOS REGION 1 4 }  { m_axi_a_col_ARREGION USER 1 4 }  { m_axi_a_col_ARUSER DATA 1 1 }  { m_axi_a_col_RVALID VALID 0 1 }  { m_axi_a_col_RREADY READY 1 1 }  { m_axi_a_col_RDATA FIFONUM 0 32 }  { m_axi_a_col_RLAST LAST 0 1 }  { m_axi_a_col_RID ID 0 1 }  { m_axi_a_col_RUSER DATA 0 1 }  { m_axi_a_col_RRESP RESP 0 2 }  { m_axi_a_col_BVALID VALID 0 1 }  { m_axi_a_col_BREADY READY 1 1 }  { m_axi_a_col_BRESP RESP 0 2 }  { m_axi_a_col_BID ID 0 1 }  { m_axi_a_col_BUSER DATA 0 1 } } }
	a_val { m_axi {  { m_axi_a_val_AWVALID VALID 1 1 }  { m_axi_a_val_AWREADY READY 0 1 }  { m_axi_a_val_AWADDR ADDR 1 64 }  { m_axi_a_val_AWID ID 1 1 }  { m_axi_a_val_AWLEN SIZE 1 8 }  { m_axi_a_val_AWSIZE BURST 1 3 }  { m_axi_a_val_AWBURST LOCK 1 2 }  { m_axi_a_val_AWLOCK CACHE 1 2 }  { m_axi_a_val_AWCACHE PROT 1 4 }  { m_axi_a_val_AWPROT QOS 1 3 }  { m_axi_a_val_AWQOS REGION 1 4 }  { m_axi_a_val_AWREGION USER 1 4 }  { m_axi_a_val_AWUSER DATA 1 1 }  { m_axi_a_val_WVALID VALID 1 1 }  { m_axi_a_val_WREADY READY 0 1 }  { m_axi_a_val_WDATA FIFONUM 1 32 }  { m_axi_a_val_WSTRB STRB 1 4 }  { m_axi_a_val_WLAST LAST 1 1 }  { m_axi_a_val_WID ID 1 1 }  { m_axi_a_val_WUSER DATA 1 1 }  { m_axi_a_val_ARVALID VALID 1 1 }  { m_axi_a_val_ARREADY READY 0 1 }  { m_axi_a_val_ARADDR ADDR 1 64 }  { m_axi_a_val_ARID ID 1 1 }  { m_axi_a_val_ARLEN SIZE 1 8 }  { m_axi_a_val_ARSIZE BURST 1 3 }  { m_axi_a_val_ARBURST LOCK 1 2 }  { m_axi_a_val_ARLOCK CACHE 1 2 }  { m_axi_a_val_ARCACHE PROT 1 4 }  { m_axi_a_val_ARPROT QOS 1 3 }  { m_axi_a_val_ARQOS REGION 1 4 }  { m_axi_a_val_ARREGION USER 1 4 }  { m_axi_a_val_ARUSER DATA 1 1 }  { m_axi_a_val_RVALID VALID 0 1 }  { m_axi_a_val_RREADY READY 1 1 }  { m_axi_a_val_RDATA FIFONUM 0 32 }  { m_axi_a_val_RLAST LAST 0 1 }  { m_axi_a_val_RID ID 0 1 }  { m_axi_a_val_RUSER DATA 0 1 }  { m_axi_a_val_RRESP RESP 0 2 }  { m_axi_a_val_BVALID VALID 0 1 }  { m_axi_a_val_BREADY READY 1 1 }  { m_axi_a_val_BRESP RESP 0 2 }  { m_axi_a_val_BID ID 0 1 }  { m_axi_a_val_BUSER DATA 0 1 } } }
	l_row { m_axi {  { m_axi_l_row_AWVALID VALID 1 1 }  { m_axi_l_row_AWREADY READY 0 1 }  { m_axi_l_row_AWADDR ADDR 1 64 }  { m_axi_l_row_AWID ID 1 1 }  { m_axi_l_row_AWLEN SIZE 1 8 }  { m_axi_l_row_AWSIZE BURST 1 3 }  { m_axi_l_row_AWBURST LOCK 1 2 }  { m_axi_l_row_AWLOCK CACHE 1 2 }  { m_axi_l_row_AWCACHE PROT 1 4 }  { m_axi_l_row_AWPROT QOS 1 3 }  { m_axi_l_row_AWQOS REGION 1 4 }  { m_axi_l_row_AWREGION USER 1 4 }  { m_axi_l_row_AWUSER DATA 1 1 }  { m_axi_l_row_WVALID VALID 1 1 }  { m_axi_l_row_WREADY READY 0 1 }  { m_axi_l_row_WDATA FIFONUM 1 32 }  { m_axi_l_row_WSTRB STRB 1 4 }  { m_axi_l_row_WLAST LAST 1 1 }  { m_axi_l_row_WID ID 1 1 }  { m_axi_l_row_WUSER DATA 1 1 }  { m_axi_l_row_ARVALID VALID 1 1 }  { m_axi_l_row_ARREADY READY 0 1 }  { m_axi_l_row_ARADDR ADDR 1 64 }  { m_axi_l_row_ARID ID 1 1 }  { m_axi_l_row_ARLEN SIZE 1 8 }  { m_axi_l_row_ARSIZE BURST 1 3 }  { m_axi_l_row_ARBURST LOCK 1 2 }  { m_axi_l_row_ARLOCK CACHE 1 2 }  { m_axi_l_row_ARCACHE PROT 1 4 }  { m_axi_l_row_ARPROT QOS 1 3 }  { m_axi_l_row_ARQOS REGION 1 4 }  { m_axi_l_row_ARREGION USER 1 4 }  { m_axi_l_row_ARUSER DATA 1 1 }  { m_axi_l_row_RVALID VALID 0 1 }  { m_axi_l_row_RREADY READY 1 1 }  { m_axi_l_row_RDATA FIFONUM 0 32 }  { m_axi_l_row_RLAST LAST 0 1 }  { m_axi_l_row_RID ID 0 1 }  { m_axi_l_row_RUSER DATA 0 1 }  { m_axi_l_row_RRESP RESP 0 2 }  { m_axi_l_row_BVALID VALID 0 1 }  { m_axi_l_row_BREADY READY 1 1 }  { m_axi_l_row_BRESP RESP 0 2 }  { m_axi_l_row_BID ID 0 1 }  { m_axi_l_row_BUSER DATA 0 1 } } }
	l_col { m_axi {  { m_axi_l_col_AWVALID VALID 1 1 }  { m_axi_l_col_AWREADY READY 0 1 }  { m_axi_l_col_AWADDR ADDR 1 64 }  { m_axi_l_col_AWID ID 1 1 }  { m_axi_l_col_AWLEN SIZE 1 8 }  { m_axi_l_col_AWSIZE BURST 1 3 }  { m_axi_l_col_AWBURST LOCK 1 2 }  { m_axi_l_col_AWLOCK CACHE 1 2 }  { m_axi_l_col_AWCACHE PROT 1 4 }  { m_axi_l_col_AWPROT QOS 1 3 }  { m_axi_l_col_AWQOS REGION 1 4 }  { m_axi_l_col_AWREGION USER 1 4 }  { m_axi_l_col_AWUSER DATA 1 1 }  { m_axi_l_col_WVALID VALID 1 1 }  { m_axi_l_col_WREADY READY 0 1 }  { m_axi_l_col_WDATA FIFONUM 1 32 }  { m_axi_l_col_WSTRB STRB 1 4 }  { m_axi_l_col_WLAST LAST 1 1 }  { m_axi_l_col_WID ID 1 1 }  { m_axi_l_col_WUSER DATA 1 1 }  { m_axi_l_col_ARVALID VALID 1 1 }  { m_axi_l_col_ARREADY READY 0 1 }  { m_axi_l_col_ARADDR ADDR 1 64 }  { m_axi_l_col_ARID ID 1 1 }  { m_axi_l_col_ARLEN SIZE 1 8 }  { m_axi_l_col_ARSIZE BURST 1 3 }  { m_axi_l_col_ARBURST LOCK 1 2 }  { m_axi_l_col_ARLOCK CACHE 1 2 }  { m_axi_l_col_ARCACHE PROT 1 4 }  { m_axi_l_col_ARPROT QOS 1 3 }  { m_axi_l_col_ARQOS REGION 1 4 }  { m_axi_l_col_ARREGION USER 1 4 }  { m_axi_l_col_ARUSER DATA 1 1 }  { m_axi_l_col_RVALID VALID 0 1 }  { m_axi_l_col_RREADY READY 1 1 }  { m_axi_l_col_RDATA FIFONUM 0 32 }  { m_axi_l_col_RLAST LAST 0 1 }  { m_axi_l_col_RID ID 0 1 }  { m_axi_l_col_RUSER DATA 0 1 }  { m_axi_l_col_RRESP RESP 0 2 }  { m_axi_l_col_BVALID VALID 0 1 }  { m_axi_l_col_BREADY READY 1 1 }  { m_axi_l_col_BRESP RESP 0 2 }  { m_axi_l_col_BID ID 0 1 }  { m_axi_l_col_BUSER DATA 0 1 } } }
	l_val { m_axi {  { m_axi_l_val_AWVALID VALID 1 1 }  { m_axi_l_val_AWREADY READY 0 1 }  { m_axi_l_val_AWADDR ADDR 1 64 }  { m_axi_l_val_AWID ID 1 1 }  { m_axi_l_val_AWLEN SIZE 1 8 }  { m_axi_l_val_AWSIZE BURST 1 3 }  { m_axi_l_val_AWBURST LOCK 1 2 }  { m_axi_l_val_AWLOCK CACHE 1 2 }  { m_axi_l_val_AWCACHE PROT 1 4 }  { m_axi_l_val_AWPROT QOS 1 3 }  { m_axi_l_val_AWQOS REGION 1 4 }  { m_axi_l_val_AWREGION USER 1 4 }  { m_axi_l_val_AWUSER DATA 1 1 }  { m_axi_l_val_WVALID VALID 1 1 }  { m_axi_l_val_WREADY READY 0 1 }  { m_axi_l_val_WDATA FIFONUM 1 32 }  { m_axi_l_val_WSTRB STRB 1 4 }  { m_axi_l_val_WLAST LAST 1 1 }  { m_axi_l_val_WID ID 1 1 }  { m_axi_l_val_WUSER DATA 1 1 }  { m_axi_l_val_ARVALID VALID 1 1 }  { m_axi_l_val_ARREADY READY 0 1 }  { m_axi_l_val_ARADDR ADDR 1 64 }  { m_axi_l_val_ARID ID 1 1 }  { m_axi_l_val_ARLEN SIZE 1 8 }  { m_axi_l_val_ARSIZE BURST 1 3 }  { m_axi_l_val_ARBURST LOCK 1 2 }  { m_axi_l_val_ARLOCK CACHE 1 2 }  { m_axi_l_val_ARCACHE PROT 1 4 }  { m_axi_l_val_ARPROT QOS 1 3 }  { m_axi_l_val_ARQOS REGION 1 4 }  { m_axi_l_val_ARREGION USER 1 4 }  { m_axi_l_val_ARUSER DATA 1 1 }  { m_axi_l_val_RVALID VALID 0 1 }  { m_axi_l_val_RREADY READY 1 1 }  { m_axi_l_val_RDATA FIFONUM 0 32 }  { m_axi_l_val_RLAST LAST 0 1 }  { m_axi_l_val_RID ID 0 1 }  { m_axi_l_val_RUSER DATA 0 1 }  { m_axi_l_val_RRESP RESP 0 2 }  { m_axi_l_val_BVALID VALID 0 1 }  { m_axi_l_val_BREADY READY 1 1 }  { m_axi_l_val_BRESP RESP 0 2 }  { m_axi_l_val_BID ID 0 1 }  { m_axi_l_val_BUSER DATA 0 1 } } }
	u_row { m_axi {  { m_axi_u_row_AWVALID VALID 1 1 }  { m_axi_u_row_AWREADY READY 0 1 }  { m_axi_u_row_AWADDR ADDR 1 64 }  { m_axi_u_row_AWID ID 1 1 }  { m_axi_u_row_AWLEN SIZE 1 8 }  { m_axi_u_row_AWSIZE BURST 1 3 }  { m_axi_u_row_AWBURST LOCK 1 2 }  { m_axi_u_row_AWLOCK CACHE 1 2 }  { m_axi_u_row_AWCACHE PROT 1 4 }  { m_axi_u_row_AWPROT QOS 1 3 }  { m_axi_u_row_AWQOS REGION 1 4 }  { m_axi_u_row_AWREGION USER 1 4 }  { m_axi_u_row_AWUSER DATA 1 1 }  { m_axi_u_row_WVALID VALID 1 1 }  { m_axi_u_row_WREADY READY 0 1 }  { m_axi_u_row_WDATA FIFONUM 1 32 }  { m_axi_u_row_WSTRB STRB 1 4 }  { m_axi_u_row_WLAST LAST 1 1 }  { m_axi_u_row_WID ID 1 1 }  { m_axi_u_row_WUSER DATA 1 1 }  { m_axi_u_row_ARVALID VALID 1 1 }  { m_axi_u_row_ARREADY READY 0 1 }  { m_axi_u_row_ARADDR ADDR 1 64 }  { m_axi_u_row_ARID ID 1 1 }  { m_axi_u_row_ARLEN SIZE 1 8 }  { m_axi_u_row_ARSIZE BURST 1 3 }  { m_axi_u_row_ARBURST LOCK 1 2 }  { m_axi_u_row_ARLOCK CACHE 1 2 }  { m_axi_u_row_ARCACHE PROT 1 4 }  { m_axi_u_row_ARPROT QOS 1 3 }  { m_axi_u_row_ARQOS REGION 1 4 }  { m_axi_u_row_ARREGION USER 1 4 }  { m_axi_u_row_ARUSER DATA 1 1 }  { m_axi_u_row_RVALID VALID 0 1 }  { m_axi_u_row_RREADY READY 1 1 }  { m_axi_u_row_RDATA FIFONUM 0 32 }  { m_axi_u_row_RLAST LAST 0 1 }  { m_axi_u_row_RID ID 0 1 }  { m_axi_u_row_RUSER DATA 0 1 }  { m_axi_u_row_RRESP RESP 0 2 }  { m_axi_u_row_BVALID VALID 0 1 }  { m_axi_u_row_BREADY READY 1 1 }  { m_axi_u_row_BRESP RESP 0 2 }  { m_axi_u_row_BID ID 0 1 }  { m_axi_u_row_BUSER DATA 0 1 } } }
	u_col { m_axi {  { m_axi_u_col_AWVALID VALID 1 1 }  { m_axi_u_col_AWREADY READY 0 1 }  { m_axi_u_col_AWADDR ADDR 1 64 }  { m_axi_u_col_AWID ID 1 1 }  { m_axi_u_col_AWLEN SIZE 1 8 }  { m_axi_u_col_AWSIZE BURST 1 3 }  { m_axi_u_col_AWBURST LOCK 1 2 }  { m_axi_u_col_AWLOCK CACHE 1 2 }  { m_axi_u_col_AWCACHE PROT 1 4 }  { m_axi_u_col_AWPROT QOS 1 3 }  { m_axi_u_col_AWQOS REGION 1 4 }  { m_axi_u_col_AWREGION USER 1 4 }  { m_axi_u_col_AWUSER DATA 1 1 }  { m_axi_u_col_WVALID VALID 1 1 }  { m_axi_u_col_WREADY READY 0 1 }  { m_axi_u_col_WDATA FIFONUM 1 32 }  { m_axi_u_col_WSTRB STRB 1 4 }  { m_axi_u_col_WLAST LAST 1 1 }  { m_axi_u_col_WID ID 1 1 }  { m_axi_u_col_WUSER DATA 1 1 }  { m_axi_u_col_ARVALID VALID 1 1 }  { m_axi_u_col_ARREADY READY 0 1 }  { m_axi_u_col_ARADDR ADDR 1 64 }  { m_axi_u_col_ARID ID 1 1 }  { m_axi_u_col_ARLEN SIZE 1 8 }  { m_axi_u_col_ARSIZE BURST 1 3 }  { m_axi_u_col_ARBURST LOCK 1 2 }  { m_axi_u_col_ARLOCK CACHE 1 2 }  { m_axi_u_col_ARCACHE PROT 1 4 }  { m_axi_u_col_ARPROT QOS 1 3 }  { m_axi_u_col_ARQOS REGION 1 4 }  { m_axi_u_col_ARREGION USER 1 4 }  { m_axi_u_col_ARUSER DATA 1 1 }  { m_axi_u_col_RVALID VALID 0 1 }  { m_axi_u_col_RREADY READY 1 1 }  { m_axi_u_col_RDATA FIFONUM 0 32 }  { m_axi_u_col_RLAST LAST 0 1 }  { m_axi_u_col_RID ID 0 1 }  { m_axi_u_col_RUSER DATA 0 1 }  { m_axi_u_col_RRESP RESP 0 2 }  { m_axi_u_col_BVALID VALID 0 1 }  { m_axi_u_col_BREADY READY 1 1 }  { m_axi_u_col_BRESP RESP 0 2 }  { m_axi_u_col_BID ID 0 1 }  { m_axi_u_col_BUSER DATA 0 1 } } }
	u_val { m_axi {  { m_axi_u_val_AWVALID VALID 1 1 }  { m_axi_u_val_AWREADY READY 0 1 }  { m_axi_u_val_AWADDR ADDR 1 64 }  { m_axi_u_val_AWID ID 1 1 }  { m_axi_u_val_AWLEN SIZE 1 8 }  { m_axi_u_val_AWSIZE BURST 1 3 }  { m_axi_u_val_AWBURST LOCK 1 2 }  { m_axi_u_val_AWLOCK CACHE 1 2 }  { m_axi_u_val_AWCACHE PROT 1 4 }  { m_axi_u_val_AWPROT QOS 1 3 }  { m_axi_u_val_AWQOS REGION 1 4 }  { m_axi_u_val_AWREGION USER 1 4 }  { m_axi_u_val_AWUSER DATA 1 1 }  { m_axi_u_val_WVALID VALID 1 1 }  { m_axi_u_val_WREADY READY 0 1 }  { m_axi_u_val_WDATA FIFONUM 1 32 }  { m_axi_u_val_WSTRB STRB 1 4 }  { m_axi_u_val_WLAST LAST 1 1 }  { m_axi_u_val_WID ID 1 1 }  { m_axi_u_val_WUSER DATA 1 1 }  { m_axi_u_val_ARVALID VALID 1 1 }  { m_axi_u_val_ARREADY READY 0 1 }  { m_axi_u_val_ARADDR ADDR 1 64 }  { m_axi_u_val_ARID ID 1 1 }  { m_axi_u_val_ARLEN SIZE 1 8 }  { m_axi_u_val_ARSIZE BURST 1 3 }  { m_axi_u_val_ARBURST LOCK 1 2 }  { m_axi_u_val_ARLOCK CACHE 1 2 }  { m_axi_u_val_ARCACHE PROT 1 4 }  { m_axi_u_val_ARPROT QOS 1 3 }  { m_axi_u_val_ARQOS REGION 1 4 }  { m_axi_u_val_ARREGION USER 1 4 }  { m_axi_u_val_ARUSER DATA 1 1 }  { m_axi_u_val_RVALID VALID 0 1 }  { m_axi_u_val_RREADY READY 1 1 }  { m_axi_u_val_RDATA FIFONUM 0 32 }  { m_axi_u_val_RLAST LAST 0 1 }  { m_axi_u_val_RID ID 0 1 }  { m_axi_u_val_RUSER DATA 0 1 }  { m_axi_u_val_RRESP RESP 0 2 }  { m_axi_u_val_BVALID VALID 0 1 }  { m_axi_u_val_BREADY READY 1 1 }  { m_axi_u_val_BRESP RESP 0 2 }  { m_axi_u_val_BID ID 0 1 }  { m_axi_u_val_BUSER DATA 0 1 } } }
	x_row { m_axi {  { m_axi_x_row_AWVALID VALID 1 1 }  { m_axi_x_row_AWREADY READY 0 1 }  { m_axi_x_row_AWADDR ADDR 1 64 }  { m_axi_x_row_AWID ID 1 1 }  { m_axi_x_row_AWLEN SIZE 1 8 }  { m_axi_x_row_AWSIZE BURST 1 3 }  { m_axi_x_row_AWBURST LOCK 1 2 }  { m_axi_x_row_AWLOCK CACHE 1 2 }  { m_axi_x_row_AWCACHE PROT 1 4 }  { m_axi_x_row_AWPROT QOS 1 3 }  { m_axi_x_row_AWQOS REGION 1 4 }  { m_axi_x_row_AWREGION USER 1 4 }  { m_axi_x_row_AWUSER DATA 1 1 }  { m_axi_x_row_WVALID VALID 1 1 }  { m_axi_x_row_WREADY READY 0 1 }  { m_axi_x_row_WDATA FIFONUM 1 32 }  { m_axi_x_row_WSTRB STRB 1 4 }  { m_axi_x_row_WLAST LAST 1 1 }  { m_axi_x_row_WID ID 1 1 }  { m_axi_x_row_WUSER DATA 1 1 }  { m_axi_x_row_ARVALID VALID 1 1 }  { m_axi_x_row_ARREADY READY 0 1 }  { m_axi_x_row_ARADDR ADDR 1 64 }  { m_axi_x_row_ARID ID 1 1 }  { m_axi_x_row_ARLEN SIZE 1 8 }  { m_axi_x_row_ARSIZE BURST 1 3 }  { m_axi_x_row_ARBURST LOCK 1 2 }  { m_axi_x_row_ARLOCK CACHE 1 2 }  { m_axi_x_row_ARCACHE PROT 1 4 }  { m_axi_x_row_ARPROT QOS 1 3 }  { m_axi_x_row_ARQOS REGION 1 4 }  { m_axi_x_row_ARREGION USER 1 4 }  { m_axi_x_row_ARUSER DATA 1 1 }  { m_axi_x_row_RVALID VALID 0 1 }  { m_axi_x_row_RREADY READY 1 1 }  { m_axi_x_row_RDATA FIFONUM 0 32 }  { m_axi_x_row_RLAST LAST 0 1 }  { m_axi_x_row_RID ID 0 1 }  { m_axi_x_row_RUSER DATA 0 1 }  { m_axi_x_row_RRESP RESP 0 2 }  { m_axi_x_row_BVALID VALID 0 1 }  { m_axi_x_row_BREADY READY 1 1 }  { m_axi_x_row_BRESP RESP 0 2 }  { m_axi_x_row_BID ID 0 1 }  { m_axi_x_row_BUSER DATA 0 1 } } }
	x_col { m_axi {  { m_axi_x_col_AWVALID VALID 1 1 }  { m_axi_x_col_AWREADY READY 0 1 }  { m_axi_x_col_AWADDR ADDR 1 64 }  { m_axi_x_col_AWID ID 1 1 }  { m_axi_x_col_AWLEN SIZE 1 8 }  { m_axi_x_col_AWSIZE BURST 1 3 }  { m_axi_x_col_AWBURST LOCK 1 2 }  { m_axi_x_col_AWLOCK CACHE 1 2 }  { m_axi_x_col_AWCACHE PROT 1 4 }  { m_axi_x_col_AWPROT QOS 1 3 }  { m_axi_x_col_AWQOS REGION 1 4 }  { m_axi_x_col_AWREGION USER 1 4 }  { m_axi_x_col_AWUSER DATA 1 1 }  { m_axi_x_col_WVALID VALID 1 1 }  { m_axi_x_col_WREADY READY 0 1 }  { m_axi_x_col_WDATA FIFONUM 1 32 }  { m_axi_x_col_WSTRB STRB 1 4 }  { m_axi_x_col_WLAST LAST 1 1 }  { m_axi_x_col_WID ID 1 1 }  { m_axi_x_col_WUSER DATA 1 1 }  { m_axi_x_col_ARVALID VALID 1 1 }  { m_axi_x_col_ARREADY READY 0 1 }  { m_axi_x_col_ARADDR ADDR 1 64 }  { m_axi_x_col_ARID ID 1 1 }  { m_axi_x_col_ARLEN SIZE 1 8 }  { m_axi_x_col_ARSIZE BURST 1 3 }  { m_axi_x_col_ARBURST LOCK 1 2 }  { m_axi_x_col_ARLOCK CACHE 1 2 }  { m_axi_x_col_ARCACHE PROT 1 4 }  { m_axi_x_col_ARPROT QOS 1 3 }  { m_axi_x_col_ARQOS REGION 1 4 }  { m_axi_x_col_ARREGION USER 1 4 }  { m_axi_x_col_ARUSER DATA 1 1 }  { m_axi_x_col_RVALID VALID 0 1 }  { m_axi_x_col_RREADY READY 1 1 }  { m_axi_x_col_RDATA FIFONUM 0 32 }  { m_axi_x_col_RLAST LAST 0 1 }  { m_axi_x_col_RID ID 0 1 }  { m_axi_x_col_RUSER DATA 0 1 }  { m_axi_x_col_RRESP RESP 0 2 }  { m_axi_x_col_BVALID VALID 0 1 }  { m_axi_x_col_BREADY READY 1 1 }  { m_axi_x_col_BRESP RESP 0 2 }  { m_axi_x_col_BID ID 0 1 }  { m_axi_x_col_BUSER DATA 0 1 } } }
	x_val { m_axi {  { m_axi_x_val_AWVALID VALID 1 1 }  { m_axi_x_val_AWREADY READY 0 1 }  { m_axi_x_val_AWADDR ADDR 1 64 }  { m_axi_x_val_AWID ID 1 1 }  { m_axi_x_val_AWLEN SIZE 1 8 }  { m_axi_x_val_AWSIZE BURST 1 3 }  { m_axi_x_val_AWBURST LOCK 1 2 }  { m_axi_x_val_AWLOCK CACHE 1 2 }  { m_axi_x_val_AWCACHE PROT 1 4 }  { m_axi_x_val_AWPROT QOS 1 3 }  { m_axi_x_val_AWQOS REGION 1 4 }  { m_axi_x_val_AWREGION USER 1 4 }  { m_axi_x_val_AWUSER DATA 1 1 }  { m_axi_x_val_WVALID VALID 1 1 }  { m_axi_x_val_WREADY READY 0 1 }  { m_axi_x_val_WDATA FIFONUM 1 32 }  { m_axi_x_val_WSTRB STRB 1 4 }  { m_axi_x_val_WLAST LAST 1 1 }  { m_axi_x_val_WID ID 1 1 }  { m_axi_x_val_WUSER DATA 1 1 }  { m_axi_x_val_ARVALID VALID 1 1 }  { m_axi_x_val_ARREADY READY 0 1 }  { m_axi_x_val_ARADDR ADDR 1 64 }  { m_axi_x_val_ARID ID 1 1 }  { m_axi_x_val_ARLEN SIZE 1 8 }  { m_axi_x_val_ARSIZE BURST 1 3 }  { m_axi_x_val_ARBURST LOCK 1 2 }  { m_axi_x_val_ARLOCK CACHE 1 2 }  { m_axi_x_val_ARCACHE PROT 1 4 }  { m_axi_x_val_ARPROT QOS 1 3 }  { m_axi_x_val_ARQOS REGION 1 4 }  { m_axi_x_val_ARREGION USER 1 4 }  { m_axi_x_val_ARUSER DATA 1 1 }  { m_axi_x_val_RVALID VALID 0 1 }  { m_axi_x_val_RREADY READY 1 1 }  { m_axi_x_val_RDATA FIFONUM 0 32 }  { m_axi_x_val_RLAST LAST 0 1 }  { m_axi_x_val_RID ID 0 1 }  { m_axi_x_val_RUSER DATA 0 1 }  { m_axi_x_val_RRESP RESP 0 2 }  { m_axi_x_val_BVALID VALID 0 1 }  { m_axi_x_val_BREADY READY 1 1 }  { m_axi_x_val_BRESP RESP 0 2 }  { m_axi_x_val_BID ID 0 1 }  { m_axi_x_val_BUSER DATA 0 1 } } }
}

set maxi_interface_dict [dict create]
dict set maxi_interface_dict a_col { CHANNEL_NUM 0 BUNDLE a_col NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 READ_WRITE_MODE READ_ONLY}
dict set maxi_interface_dict a_row { CHANNEL_NUM 0 BUNDLE a_row NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 READ_WRITE_MODE READ_ONLY}
dict set maxi_interface_dict a_val { CHANNEL_NUM 0 BUNDLE a_val NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 READ_WRITE_MODE READ_ONLY}
dict set maxi_interface_dict l_col { CHANNEL_NUM 0 BUNDLE l_col NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 READ_WRITE_MODE READ_ONLY}
dict set maxi_interface_dict l_row { CHANNEL_NUM 0 BUNDLE l_row NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 READ_WRITE_MODE READ_ONLY}
dict set maxi_interface_dict l_val { CHANNEL_NUM 0 BUNDLE l_val NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 READ_WRITE_MODE READ_WRITE}
dict set maxi_interface_dict u_col { CHANNEL_NUM 0 BUNDLE u_col NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 READ_WRITE_MODE READ_ONLY}
dict set maxi_interface_dict u_row { CHANNEL_NUM 0 BUNDLE u_row NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 READ_WRITE_MODE READ_ONLY}
dict set maxi_interface_dict u_val { CHANNEL_NUM 0 BUNDLE u_val NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 READ_WRITE_MODE READ_WRITE}
dict set maxi_interface_dict x_col { CHANNEL_NUM 0 BUNDLE x_col NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 READ_WRITE_MODE READ_ONLY}
dict set maxi_interface_dict x_row { CHANNEL_NUM 0 BUNDLE x_row NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 READ_WRITE_MODE READ_ONLY}
dict set maxi_interface_dict x_val { CHANNEL_NUM 0 BUNDLE x_val NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 READ_WRITE_MODE READ_WRITE}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
	{ a_row 1 }
	{ a_col 1 }
	{ a_val 1 }
	{ l_row 1 }
	{ l_col 1 }
	{ l_val 1 }
	{ u_row 1 }
	{ u_col 1 }
	{ u_val 1 }
	{ x_row 1 }
	{ x_col 1 }
	{ x_val 1 }
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
	{ a_row 1 }
	{ a_col 1 }
	{ a_val 1 }
	{ l_row 1 }
	{ l_col 1 }
	{ l_val 1 }
	{ u_row 1 }
	{ u_col 1 }
	{ u_val 1 }
	{ x_row 1 }
	{ x_col 1 }
	{ x_val 1 }
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
