set moduleName spmm
set isTopModule 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set isPipelined_legacy 0
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
set C_modelName {spmm}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ arcsr int 32 regular {axi_master 0}  }
	{ acid int 32 regular {axi_master 0}  }
	{ aval int 32 regular {axi_master 0}  }
	{ brcsr1 int 128 regular {axi_master 0}  }
	{ brcsr2 int 128 regular {axi_master 0}  }
	{ brcsr3 int 128 regular {axi_master 0}  }
	{ brcsr4 int 128 regular {axi_master 0}  }
	{ bval1 int 128 regular {axi_master 0}  }
	{ bcid1 int 128 regular {axi_master 0}  }
	{ bval2 int 128 regular {axi_master 0}  }
	{ bcid2 int 128 regular {axi_master 0}  }
	{ bval3 int 128 regular {axi_master 0}  }
	{ bcid3 int 128 regular {axi_master 0}  }
	{ bval4 int 128 regular {axi_master 0}  }
	{ bcid4 int 128 regular {axi_master 0}  }
	{ bv1 int 128 regular {axi_master 0}  }
	{ bc1 int 128 regular {axi_master 0}  }
	{ bv2 int 128 regular {axi_master 0}  }
	{ bc2 int 128 regular {axi_master 0}  }
	{ bv3 int 128 regular {axi_master 0}  }
	{ bc3 int 128 regular {axi_master 0}  }
	{ bv4 int 128 regular {axi_master 0}  }
	{ bc4 int 128 regular {axi_master 0}  }
	{ crcsr int 32 regular {axi_master 0}  }
	{ ccid int 32 regular {axi_master 0}  }
	{ cval int 32 regular {axi_master 2}  }
	{ A_rcsr int 64 regular {axi_slave 0}  }
	{ A_cid int 64 regular {axi_slave 0}  }
	{ A_val int 64 regular {axi_slave 0}  }
	{ arnum int 32 regular {axi_slave 0}  }
	{ atnum int 32 unused {axi_slave 0}  }
	{ B_rcsr1 int 64 regular {axi_slave 0}  }
	{ B_rcsr2 int 64 regular {axi_slave 0}  }
	{ B_rcsr3 int 64 regular {axi_slave 0}  }
	{ B_rcsr4 int 64 regular {axi_slave 0}  }
	{ B_val1 int 64 regular {axi_slave 0}  }
	{ B_cid1 int 64 regular {axi_slave 0}  }
	{ B_val2 int 64 regular {axi_slave 0}  }
	{ B_cid2 int 64 regular {axi_slave 0}  }
	{ B_val3 int 64 regular {axi_slave 0}  }
	{ B_cid3 int 64 regular {axi_slave 0}  }
	{ B_val4 int 64 regular {axi_slave 0}  }
	{ B_cid4 int 64 regular {axi_slave 0}  }
	{ brnum int 32 regular {axi_slave 0}  }
	{ btnum int 32 unused {axi_slave 0}  }
	{ B_val_port1 int 64 regular {axi_slave 0}  }
	{ B_cid_port1 int 64 regular {axi_slave 0}  }
	{ B_val_port2 int 64 regular {axi_slave 0}  }
	{ B_cid_port2 int 64 regular {axi_slave 0}  }
	{ B_val_port3 int 64 regular {axi_slave 0}  }
	{ B_cid_port3 int 64 regular {axi_slave 0}  }
	{ B_val_port4 int 64 regular {axi_slave 0}  }
	{ B_cid_port4 int 64 regular {axi_slave 0}  }
	{ C_rcsr int 64 regular {axi_slave 0}  }
	{ C_cid int 64 regular {axi_slave 0}  }
	{ C_val int 64 regular {axi_slave 0}  }
	{ B_rcsr_base int 32 regular {axi_slave 0}  }
	{ B_val_base int 32 regular {axi_slave 0}  }
	{ B_cid_base int 32 regular {axi_slave 0}  }
	{ r1acc int 32 regular {axi_slave 1}  }
	{ r1hit int 32 regular {axi_slave 1}  }
	{ r2acc int 32 regular {axi_slave 1}  }
	{ r2hit int 32 regular {axi_slave 1}  }
	{ r3acc int 32 regular {axi_slave 1}  }
	{ r3hit int 32 regular {axi_slave 1}  }
	{ r4acc int 32 regular {axi_slave 1}  }
	{ r4hit int 32 regular {axi_slave 1}  }
	{ r5acc int 32 unused {axi_slave 0}  }
	{ r5hit int 32 unused {axi_slave 0}  }
	{ r6acc int 32 unused {axi_slave 0}  }
	{ r6hit int 32 unused {axi_slave 0}  }
	{ r7acc int 32 unused {axi_slave 0}  }
	{ r7hit int 32 unused {axi_slave 0}  }
	{ r8acc int 32 unused {axi_slave 0}  }
	{ r8hit int 32 unused {axi_slave 0}  }
	{ vc1acc int 32 regular {axi_slave 1}  }
	{ vc1hit int 32 regular {axi_slave 1}  }
	{ vc2acc int 32 regular {axi_slave 1}  }
	{ vc2hit int 32 regular {axi_slave 1}  }
	{ vc3acc int 32 regular {axi_slave 1}  }
	{ vc3hit int 32 regular {axi_slave 1}  }
	{ vc4acc int 32 regular {axi_slave 1}  }
	{ vc4hit int 32 regular {axi_slave 1}  }
	{ vc5acc int 32 unused {axi_slave 0}  }
	{ vc5hit int 32 unused {axi_slave 0}  }
	{ vc6acc int 32 unused {axi_slave 0}  }
	{ vc6hit int 32 unused {axi_slave 0}  }
	{ vc7acc int 32 unused {axi_slave 0}  }
	{ vc7hit int 32 unused {axi_slave 0}  }
	{ vc8acc int 32 unused {axi_slave 0}  }
	{ vc8hit int 32 unused {axi_slave 0}  }
	{ fnum int 32 regular {axi_slave 1}  }
	{ workload_counter1 int 32 regular {axi_slave 1}  }
	{ workload_counter2 int 32 regular {axi_slave 1}  }
	{ workload_counter3 int 32 regular {axi_slave 1}  }
	{ workload_counter4 int 32 regular {axi_slave 1}  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "arcsr", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READONLY", "id_num" : 1, "bitSlice":[ {"cElement": [{"cName": "A_rcsr","offset": { "type": "dynamic","port_name": "A_rcsr","bundle": "control"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "acid", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READONLY", "id_num" : 1, "bitSlice":[ {"cElement": [{"cName": "A_cid","offset": { "type": "dynamic","port_name": "A_cid","bundle": "control"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "aval", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READONLY", "id_num" : 1, "bitSlice":[ {"cElement": [{"cName": "A_val","offset": { "type": "dynamic","port_name": "A_val","bundle": "control"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "brcsr1", "interface" : "axi_master", "bitwidth" : 128, "direction" : "READONLY", "id_num" : 1, "bitSlice":[ {"cElement": [{"cName": "B_rcsr1","offset": { "type": "dynamic","port_name": "B_rcsr1","bundle": "control"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "brcsr2", "interface" : "axi_master", "bitwidth" : 128, "direction" : "READONLY", "id_num" : 1, "bitSlice":[ {"cElement": [{"cName": "B_rcsr2","offset": { "type": "dynamic","port_name": "B_rcsr2","bundle": "control"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "brcsr3", "interface" : "axi_master", "bitwidth" : 128, "direction" : "READONLY", "id_num" : 1, "bitSlice":[ {"cElement": [{"cName": "B_rcsr3","offset": { "type": "dynamic","port_name": "B_rcsr3","bundle": "control"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "brcsr4", "interface" : "axi_master", "bitwidth" : 128, "direction" : "READONLY", "id_num" : 1, "bitSlice":[ {"cElement": [{"cName": "B_rcsr4","offset": { "type": "dynamic","port_name": "B_rcsr4","bundle": "control"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "bval1", "interface" : "axi_master", "bitwidth" : 128, "direction" : "READONLY", "id_num" : 1, "bitSlice":[ {"cElement": [{"cName": "B_val1","offset": { "type": "dynamic","port_name": "B_val1","bundle": "control"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "bcid1", "interface" : "axi_master", "bitwidth" : 128, "direction" : "READONLY", "id_num" : 1, "bitSlice":[ {"cElement": [{"cName": "B_cid1","offset": { "type": "dynamic","port_name": "B_cid1","bundle": "control"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "bval2", "interface" : "axi_master", "bitwidth" : 128, "direction" : "READONLY", "id_num" : 1, "bitSlice":[ {"cElement": [{"cName": "B_val2","offset": { "type": "dynamic","port_name": "B_val2","bundle": "control"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "bcid2", "interface" : "axi_master", "bitwidth" : 128, "direction" : "READONLY", "id_num" : 1, "bitSlice":[ {"cElement": [{"cName": "B_cid2","offset": { "type": "dynamic","port_name": "B_cid2","bundle": "control"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "bval3", "interface" : "axi_master", "bitwidth" : 128, "direction" : "READONLY", "id_num" : 1, "bitSlice":[ {"cElement": [{"cName": "B_val3","offset": { "type": "dynamic","port_name": "B_val3","bundle": "control"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "bcid3", "interface" : "axi_master", "bitwidth" : 128, "direction" : "READONLY", "id_num" : 1, "bitSlice":[ {"cElement": [{"cName": "B_cid3","offset": { "type": "dynamic","port_name": "B_cid3","bundle": "control"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "bval4", "interface" : "axi_master", "bitwidth" : 128, "direction" : "READONLY", "id_num" : 1, "bitSlice":[ {"cElement": [{"cName": "B_val4","offset": { "type": "dynamic","port_name": "B_val4","bundle": "control"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "bcid4", "interface" : "axi_master", "bitwidth" : 128, "direction" : "READONLY", "id_num" : 1, "bitSlice":[ {"cElement": [{"cName": "B_cid4","offset": { "type": "dynamic","port_name": "B_cid4","bundle": "control"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "bv1", "interface" : "axi_master", "bitwidth" : 128, "direction" : "READONLY", "id_num" : 1, "bitSlice":[ {"cElement": [{"cName": "B_val_port1","offset": { "type": "dynamic","port_name": "B_val_port1","bundle": "control"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "bc1", "interface" : "axi_master", "bitwidth" : 128, "direction" : "READONLY", "id_num" : 1, "bitSlice":[ {"cElement": [{"cName": "B_cid_port1","offset": { "type": "dynamic","port_name": "B_cid_port1","bundle": "control"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "bv2", "interface" : "axi_master", "bitwidth" : 128, "direction" : "READONLY", "id_num" : 1, "bitSlice":[ {"cElement": [{"cName": "B_val_port2","offset": { "type": "dynamic","port_name": "B_val_port2","bundle": "control"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "bc2", "interface" : "axi_master", "bitwidth" : 128, "direction" : "READONLY", "id_num" : 1, "bitSlice":[ {"cElement": [{"cName": "B_cid_port2","offset": { "type": "dynamic","port_name": "B_cid_port2","bundle": "control"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "bv3", "interface" : "axi_master", "bitwidth" : 128, "direction" : "READONLY", "id_num" : 1, "bitSlice":[ {"cElement": [{"cName": "B_val_port3","offset": { "type": "dynamic","port_name": "B_val_port3","bundle": "control"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "bc3", "interface" : "axi_master", "bitwidth" : 128, "direction" : "READONLY", "id_num" : 1, "bitSlice":[ {"cElement": [{"cName": "B_cid_port3","offset": { "type": "dynamic","port_name": "B_cid_port3","bundle": "control"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "bv4", "interface" : "axi_master", "bitwidth" : 128, "direction" : "READONLY", "id_num" : 1, "bitSlice":[ {"cElement": [{"cName": "B_val_port4","offset": { "type": "dynamic","port_name": "B_val_port4","bundle": "control"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "bc4", "interface" : "axi_master", "bitwidth" : 128, "direction" : "READONLY", "id_num" : 1, "bitSlice":[ {"cElement": [{"cName": "B_cid_port4","offset": { "type": "dynamic","port_name": "B_cid_port4","bundle": "control"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "crcsr", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READONLY", "id_num" : 1, "bitSlice":[ {"cElement": [{"cName": "C_rcsr","offset": { "type": "dynamic","port_name": "C_rcsr","bundle": "control"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "ccid", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READONLY", "id_num" : 1, "bitSlice":[ {"cElement": [{"cName": "C_cid","offset": { "type": "dynamic","port_name": "C_cid","bundle": "control"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "cval", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READWRITE", "id_num" : 1, "bitSlice":[ {"cElement": [{"cName": "C_val","offset": { "type": "dynamic","port_name": "C_val","bundle": "control"},"direction": "READWRITE"}]}]} , 
 	{ "Name" : "A_rcsr", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":16}, "offset_end" : {"in":27}} , 
 	{ "Name" : "A_cid", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":28}, "offset_end" : {"in":39}} , 
 	{ "Name" : "A_val", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":40}, "offset_end" : {"in":51}} , 
 	{ "Name" : "arnum", "interface" : "axi_slave", "bundle":"ctr","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":16}, "offset_end" : {"in":23}} , 
 	{ "Name" : "atnum", "interface" : "axi_slave", "bundle":"ctr","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":24}, "offset_end" : {"in":31}} , 
 	{ "Name" : "B_rcsr1", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":52}, "offset_end" : {"in":63}} , 
 	{ "Name" : "B_rcsr2", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":64}, "offset_end" : {"in":75}} , 
 	{ "Name" : "B_rcsr3", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":76}, "offset_end" : {"in":87}} , 
 	{ "Name" : "B_rcsr4", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":88}, "offset_end" : {"in":99}} , 
 	{ "Name" : "B_val1", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":100}, "offset_end" : {"in":111}} , 
 	{ "Name" : "B_cid1", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":112}, "offset_end" : {"in":123}} , 
 	{ "Name" : "B_val2", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":124}, "offset_end" : {"in":135}} , 
 	{ "Name" : "B_cid2", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":136}, "offset_end" : {"in":147}} , 
 	{ "Name" : "B_val3", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":148}, "offset_end" : {"in":159}} , 
 	{ "Name" : "B_cid3", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":160}, "offset_end" : {"in":171}} , 
 	{ "Name" : "B_val4", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":172}, "offset_end" : {"in":183}} , 
 	{ "Name" : "B_cid4", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":184}, "offset_end" : {"in":195}} , 
 	{ "Name" : "brnum", "interface" : "axi_slave", "bundle":"ctr","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":32}, "offset_end" : {"in":39}} , 
 	{ "Name" : "btnum", "interface" : "axi_slave", "bundle":"ctr","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":40}, "offset_end" : {"in":47}} , 
 	{ "Name" : "B_val_port1", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":196}, "offset_end" : {"in":207}} , 
 	{ "Name" : "B_cid_port1", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":208}, "offset_end" : {"in":219}} , 
 	{ "Name" : "B_val_port2", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":220}, "offset_end" : {"in":231}} , 
 	{ "Name" : "B_cid_port2", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":232}, "offset_end" : {"in":243}} , 
 	{ "Name" : "B_val_port3", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":244}, "offset_end" : {"in":255}} , 
 	{ "Name" : "B_cid_port3", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":256}, "offset_end" : {"in":267}} , 
 	{ "Name" : "B_val_port4", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":268}, "offset_end" : {"in":279}} , 
 	{ "Name" : "B_cid_port4", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":280}, "offset_end" : {"in":291}} , 
 	{ "Name" : "C_rcsr", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":292}, "offset_end" : {"in":303}} , 
 	{ "Name" : "C_cid", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":304}, "offset_end" : {"in":315}} , 
 	{ "Name" : "C_val", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":316}, "offset_end" : {"in":327}} , 
 	{ "Name" : "B_rcsr_base", "interface" : "axi_slave", "bundle":"ctr","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":48}, "offset_end" : {"in":55}} , 
 	{ "Name" : "B_val_base", "interface" : "axi_slave", "bundle":"ctr","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":56}, "offset_end" : {"in":63}} , 
 	{ "Name" : "B_cid_base", "interface" : "axi_slave", "bundle":"ctr","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":64}, "offset_end" : {"in":71}} , 
 	{ "Name" : "r1acc", "interface" : "axi_slave", "bundle":"ctr","type":"ap_vld","bitwidth" : 32, "direction" : "WRITEONLY", "offset" : {"out":72}, "offset_end" : {"out":79}} , 
 	{ "Name" : "r1hit", "interface" : "axi_slave", "bundle":"ctr","type":"ap_vld","bitwidth" : 32, "direction" : "WRITEONLY", "offset" : {"out":88}, "offset_end" : {"out":95}} , 
 	{ "Name" : "r2acc", "interface" : "axi_slave", "bundle":"ctr","type":"ap_vld","bitwidth" : 32, "direction" : "WRITEONLY", "offset" : {"out":104}, "offset_end" : {"out":111}} , 
 	{ "Name" : "r2hit", "interface" : "axi_slave", "bundle":"ctr","type":"ap_vld","bitwidth" : 32, "direction" : "WRITEONLY", "offset" : {"out":120}, "offset_end" : {"out":127}} , 
 	{ "Name" : "r3acc", "interface" : "axi_slave", "bundle":"ctr","type":"ap_vld","bitwidth" : 32, "direction" : "WRITEONLY", "offset" : {"out":136}, "offset_end" : {"out":143}} , 
 	{ "Name" : "r3hit", "interface" : "axi_slave", "bundle":"ctr","type":"ap_vld","bitwidth" : 32, "direction" : "WRITEONLY", "offset" : {"out":152}, "offset_end" : {"out":159}} , 
 	{ "Name" : "r4acc", "interface" : "axi_slave", "bundle":"ctr","type":"ap_vld","bitwidth" : 32, "direction" : "WRITEONLY", "offset" : {"out":168}, "offset_end" : {"out":175}} , 
 	{ "Name" : "r4hit", "interface" : "axi_slave", "bundle":"ctr","type":"ap_vld","bitwidth" : 32, "direction" : "WRITEONLY", "offset" : {"out":184}, "offset_end" : {"out":191}} , 
 	{ "Name" : "r5acc", "interface" : "axi_slave", "bundle":"ctr","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":200}, "offset_end" : {"in":207}} , 
 	{ "Name" : "r5hit", "interface" : "axi_slave", "bundle":"ctr","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":208}, "offset_end" : {"in":215}} , 
 	{ "Name" : "r6acc", "interface" : "axi_slave", "bundle":"ctr","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":216}, "offset_end" : {"in":223}} , 
 	{ "Name" : "r6hit", "interface" : "axi_slave", "bundle":"ctr","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":224}, "offset_end" : {"in":231}} , 
 	{ "Name" : "r7acc", "interface" : "axi_slave", "bundle":"ctr","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":232}, "offset_end" : {"in":239}} , 
 	{ "Name" : "r7hit", "interface" : "axi_slave", "bundle":"ctr","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":240}, "offset_end" : {"in":247}} , 
 	{ "Name" : "r8acc", "interface" : "axi_slave", "bundle":"ctr","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":248}, "offset_end" : {"in":255}} , 
 	{ "Name" : "r8hit", "interface" : "axi_slave", "bundle":"ctr","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":256}, "offset_end" : {"in":263}} , 
 	{ "Name" : "vc1acc", "interface" : "axi_slave", "bundle":"ctr","type":"ap_vld","bitwidth" : 32, "direction" : "WRITEONLY", "offset" : {"out":264}, "offset_end" : {"out":271}} , 
 	{ "Name" : "vc1hit", "interface" : "axi_slave", "bundle":"ctr","type":"ap_vld","bitwidth" : 32, "direction" : "WRITEONLY", "offset" : {"out":280}, "offset_end" : {"out":287}} , 
 	{ "Name" : "vc2acc", "interface" : "axi_slave", "bundle":"ctr","type":"ap_vld","bitwidth" : 32, "direction" : "WRITEONLY", "offset" : {"out":296}, "offset_end" : {"out":303}} , 
 	{ "Name" : "vc2hit", "interface" : "axi_slave", "bundle":"ctr","type":"ap_vld","bitwidth" : 32, "direction" : "WRITEONLY", "offset" : {"out":312}, "offset_end" : {"out":319}} , 
 	{ "Name" : "vc3acc", "interface" : "axi_slave", "bundle":"ctr","type":"ap_vld","bitwidth" : 32, "direction" : "WRITEONLY", "offset" : {"out":328}, "offset_end" : {"out":335}} , 
 	{ "Name" : "vc3hit", "interface" : "axi_slave", "bundle":"ctr","type":"ap_vld","bitwidth" : 32, "direction" : "WRITEONLY", "offset" : {"out":344}, "offset_end" : {"out":351}} , 
 	{ "Name" : "vc4acc", "interface" : "axi_slave", "bundle":"ctr","type":"ap_vld","bitwidth" : 32, "direction" : "WRITEONLY", "offset" : {"out":360}, "offset_end" : {"out":367}} , 
 	{ "Name" : "vc4hit", "interface" : "axi_slave", "bundle":"ctr","type":"ap_vld","bitwidth" : 32, "direction" : "WRITEONLY", "offset" : {"out":376}, "offset_end" : {"out":383}} , 
 	{ "Name" : "vc5acc", "interface" : "axi_slave", "bundle":"ctr","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":392}, "offset_end" : {"in":399}} , 
 	{ "Name" : "vc5hit", "interface" : "axi_slave", "bundle":"ctr","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":400}, "offset_end" : {"in":407}} , 
 	{ "Name" : "vc6acc", "interface" : "axi_slave", "bundle":"ctr","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":408}, "offset_end" : {"in":415}} , 
 	{ "Name" : "vc6hit", "interface" : "axi_slave", "bundle":"ctr","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":416}, "offset_end" : {"in":423}} , 
 	{ "Name" : "vc7acc", "interface" : "axi_slave", "bundle":"ctr","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":424}, "offset_end" : {"in":431}} , 
 	{ "Name" : "vc7hit", "interface" : "axi_slave", "bundle":"ctr","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":432}, "offset_end" : {"in":439}} , 
 	{ "Name" : "vc8acc", "interface" : "axi_slave", "bundle":"ctr","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":440}, "offset_end" : {"in":447}} , 
 	{ "Name" : "vc8hit", "interface" : "axi_slave", "bundle":"ctr","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":448}, "offset_end" : {"in":455}} , 
 	{ "Name" : "fnum", "interface" : "axi_slave", "bundle":"ctr","type":"ap_vld","bitwidth" : 32, "direction" : "WRITEONLY", "offset" : {"out":456}, "offset_end" : {"out":463}} , 
 	{ "Name" : "workload_counter1", "interface" : "axi_slave", "bundle":"ctr","type":"ap_vld","bitwidth" : 32, "direction" : "WRITEONLY", "offset" : {"out":472}, "offset_end" : {"out":479}} , 
 	{ "Name" : "workload_counter2", "interface" : "axi_slave", "bundle":"ctr","type":"ap_vld","bitwidth" : 32, "direction" : "WRITEONLY", "offset" : {"out":488}, "offset_end" : {"out":495}} , 
 	{ "Name" : "workload_counter3", "interface" : "axi_slave", "bundle":"ctr","type":"ap_vld","bitwidth" : 32, "direction" : "WRITEONLY", "offset" : {"out":504}, "offset_end" : {"out":511}} , 
 	{ "Name" : "workload_counter4", "interface" : "axi_slave", "bundle":"ctr","type":"ap_vld","bitwidth" : 32, "direction" : "WRITEONLY", "offset" : {"out":520}, "offset_end" : {"out":527}} ]}
# RTL Port declarations: 
set portNum 1207
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ s_axi_control_AWVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_AWREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_AWADDR sc_in sc_lv 9 signal -1 } 
	{ s_axi_control_WVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_WREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_WDATA sc_in sc_lv 32 signal -1 } 
	{ s_axi_control_WSTRB sc_in sc_lv 4 signal -1 } 
	{ s_axi_control_ARVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_ARREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_ARADDR sc_in sc_lv 9 signal -1 } 
	{ s_axi_control_RVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_RREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_RDATA sc_out sc_lv 32 signal -1 } 
	{ s_axi_control_RRESP sc_out sc_lv 2 signal -1 } 
	{ s_axi_control_BVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_BREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_BRESP sc_out sc_lv 2 signal -1 } 
	{ s_axi_ctr_AWVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_ctr_AWREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_ctr_AWADDR sc_in sc_lv 10 signal -1 } 
	{ s_axi_ctr_WVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_ctr_WREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_ctr_WDATA sc_in sc_lv 32 signal -1 } 
	{ s_axi_ctr_WSTRB sc_in sc_lv 4 signal -1 } 
	{ s_axi_ctr_ARVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_ctr_ARREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_ctr_ARADDR sc_in sc_lv 10 signal -1 } 
	{ s_axi_ctr_RVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_ctr_RREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_ctr_RDATA sc_out sc_lv 32 signal -1 } 
	{ s_axi_ctr_RRESP sc_out sc_lv 2 signal -1 } 
	{ s_axi_ctr_BVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_ctr_BREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_ctr_BRESP sc_out sc_lv 2 signal -1 } 
	{ interrupt sc_out sc_logic 1 signal -1 } 
	{ m_axi_acid_AWVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_acid_AWREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_acid_AWADDR sc_out sc_lv 64 signal 1 } 
	{ m_axi_acid_AWID sc_out sc_lv 1 signal 1 } 
	{ m_axi_acid_AWLEN sc_out sc_lv 8 signal 1 } 
	{ m_axi_acid_AWSIZE sc_out sc_lv 3 signal 1 } 
	{ m_axi_acid_AWBURST sc_out sc_lv 2 signal 1 } 
	{ m_axi_acid_AWLOCK sc_out sc_lv 2 signal 1 } 
	{ m_axi_acid_AWCACHE sc_out sc_lv 4 signal 1 } 
	{ m_axi_acid_AWPROT sc_out sc_lv 3 signal 1 } 
	{ m_axi_acid_AWQOS sc_out sc_lv 4 signal 1 } 
	{ m_axi_acid_AWREGION sc_out sc_lv 4 signal 1 } 
	{ m_axi_acid_AWUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_acid_WVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_acid_WREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_acid_WDATA sc_out sc_lv 32 signal 1 } 
	{ m_axi_acid_WSTRB sc_out sc_lv 4 signal 1 } 
	{ m_axi_acid_WLAST sc_out sc_logic 1 signal 1 } 
	{ m_axi_acid_WID sc_out sc_lv 1 signal 1 } 
	{ m_axi_acid_WUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_acid_ARVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_acid_ARREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_acid_ARADDR sc_out sc_lv 64 signal 1 } 
	{ m_axi_acid_ARID sc_out sc_lv 1 signal 1 } 
	{ m_axi_acid_ARLEN sc_out sc_lv 8 signal 1 } 
	{ m_axi_acid_ARSIZE sc_out sc_lv 3 signal 1 } 
	{ m_axi_acid_ARBURST sc_out sc_lv 2 signal 1 } 
	{ m_axi_acid_ARLOCK sc_out sc_lv 2 signal 1 } 
	{ m_axi_acid_ARCACHE sc_out sc_lv 4 signal 1 } 
	{ m_axi_acid_ARPROT sc_out sc_lv 3 signal 1 } 
	{ m_axi_acid_ARQOS sc_out sc_lv 4 signal 1 } 
	{ m_axi_acid_ARREGION sc_out sc_lv 4 signal 1 } 
	{ m_axi_acid_ARUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_acid_RVALID sc_in sc_logic 1 signal 1 } 
	{ m_axi_acid_RREADY sc_out sc_logic 1 signal 1 } 
	{ m_axi_acid_RDATA sc_in sc_lv 32 signal 1 } 
	{ m_axi_acid_RLAST sc_in sc_logic 1 signal 1 } 
	{ m_axi_acid_RID sc_in sc_lv 1 signal 1 } 
	{ m_axi_acid_RUSER sc_in sc_lv 1 signal 1 } 
	{ m_axi_acid_RRESP sc_in sc_lv 2 signal 1 } 
	{ m_axi_acid_BVALID sc_in sc_logic 1 signal 1 } 
	{ m_axi_acid_BREADY sc_out sc_logic 1 signal 1 } 
	{ m_axi_acid_BRESP sc_in sc_lv 2 signal 1 } 
	{ m_axi_acid_BID sc_in sc_lv 1 signal 1 } 
	{ m_axi_acid_BUSER sc_in sc_lv 1 signal 1 } 
	{ m_axi_arcsr_AWVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_arcsr_AWREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_arcsr_AWADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_arcsr_AWID sc_out sc_lv 1 signal 0 } 
	{ m_axi_arcsr_AWLEN sc_out sc_lv 8 signal 0 } 
	{ m_axi_arcsr_AWSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_arcsr_AWBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_arcsr_AWLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_arcsr_AWCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_arcsr_AWPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_arcsr_AWQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_arcsr_AWREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_arcsr_AWUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_arcsr_WVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_arcsr_WREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_arcsr_WDATA sc_out sc_lv 32 signal 0 } 
	{ m_axi_arcsr_WSTRB sc_out sc_lv 4 signal 0 } 
	{ m_axi_arcsr_WLAST sc_out sc_logic 1 signal 0 } 
	{ m_axi_arcsr_WID sc_out sc_lv 1 signal 0 } 
	{ m_axi_arcsr_WUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_arcsr_ARVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_arcsr_ARREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_arcsr_ARADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_arcsr_ARID sc_out sc_lv 1 signal 0 } 
	{ m_axi_arcsr_ARLEN sc_out sc_lv 8 signal 0 } 
	{ m_axi_arcsr_ARSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_arcsr_ARBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_arcsr_ARLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_arcsr_ARCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_arcsr_ARPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_arcsr_ARQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_arcsr_ARREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_arcsr_ARUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_arcsr_RVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_arcsr_RREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_arcsr_RDATA sc_in sc_lv 32 signal 0 } 
	{ m_axi_arcsr_RLAST sc_in sc_logic 1 signal 0 } 
	{ m_axi_arcsr_RID sc_in sc_lv 1 signal 0 } 
	{ m_axi_arcsr_RUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_arcsr_RRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_arcsr_BVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_arcsr_BREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_arcsr_BRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_arcsr_BID sc_in sc_lv 1 signal 0 } 
	{ m_axi_arcsr_BUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_aval_AWVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_aval_AWREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_aval_AWADDR sc_out sc_lv 64 signal 2 } 
	{ m_axi_aval_AWID sc_out sc_lv 1 signal 2 } 
	{ m_axi_aval_AWLEN sc_out sc_lv 8 signal 2 } 
	{ m_axi_aval_AWSIZE sc_out sc_lv 3 signal 2 } 
	{ m_axi_aval_AWBURST sc_out sc_lv 2 signal 2 } 
	{ m_axi_aval_AWLOCK sc_out sc_lv 2 signal 2 } 
	{ m_axi_aval_AWCACHE sc_out sc_lv 4 signal 2 } 
	{ m_axi_aval_AWPROT sc_out sc_lv 3 signal 2 } 
	{ m_axi_aval_AWQOS sc_out sc_lv 4 signal 2 } 
	{ m_axi_aval_AWREGION sc_out sc_lv 4 signal 2 } 
	{ m_axi_aval_AWUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_aval_WVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_aval_WREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_aval_WDATA sc_out sc_lv 32 signal 2 } 
	{ m_axi_aval_WSTRB sc_out sc_lv 4 signal 2 } 
	{ m_axi_aval_WLAST sc_out sc_logic 1 signal 2 } 
	{ m_axi_aval_WID sc_out sc_lv 1 signal 2 } 
	{ m_axi_aval_WUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_aval_ARVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_aval_ARREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_aval_ARADDR sc_out sc_lv 64 signal 2 } 
	{ m_axi_aval_ARID sc_out sc_lv 1 signal 2 } 
	{ m_axi_aval_ARLEN sc_out sc_lv 8 signal 2 } 
	{ m_axi_aval_ARSIZE sc_out sc_lv 3 signal 2 } 
	{ m_axi_aval_ARBURST sc_out sc_lv 2 signal 2 } 
	{ m_axi_aval_ARLOCK sc_out sc_lv 2 signal 2 } 
	{ m_axi_aval_ARCACHE sc_out sc_lv 4 signal 2 } 
	{ m_axi_aval_ARPROT sc_out sc_lv 3 signal 2 } 
	{ m_axi_aval_ARQOS sc_out sc_lv 4 signal 2 } 
	{ m_axi_aval_ARREGION sc_out sc_lv 4 signal 2 } 
	{ m_axi_aval_ARUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_aval_RVALID sc_in sc_logic 1 signal 2 } 
	{ m_axi_aval_RREADY sc_out sc_logic 1 signal 2 } 
	{ m_axi_aval_RDATA sc_in sc_lv 32 signal 2 } 
	{ m_axi_aval_RLAST sc_in sc_logic 1 signal 2 } 
	{ m_axi_aval_RID sc_in sc_lv 1 signal 2 } 
	{ m_axi_aval_RUSER sc_in sc_lv 1 signal 2 } 
	{ m_axi_aval_RRESP sc_in sc_lv 2 signal 2 } 
	{ m_axi_aval_BVALID sc_in sc_logic 1 signal 2 } 
	{ m_axi_aval_BREADY sc_out sc_logic 1 signal 2 } 
	{ m_axi_aval_BRESP sc_in sc_lv 2 signal 2 } 
	{ m_axi_aval_BID sc_in sc_lv 1 signal 2 } 
	{ m_axi_aval_BUSER sc_in sc_lv 1 signal 2 } 
	{ m_axi_bc1_AWVALID sc_out sc_logic 1 signal 16 } 
	{ m_axi_bc1_AWREADY sc_in sc_logic 1 signal 16 } 
	{ m_axi_bc1_AWADDR sc_out sc_lv 64 signal 16 } 
	{ m_axi_bc1_AWID sc_out sc_lv 1 signal 16 } 
	{ m_axi_bc1_AWLEN sc_out sc_lv 8 signal 16 } 
	{ m_axi_bc1_AWSIZE sc_out sc_lv 3 signal 16 } 
	{ m_axi_bc1_AWBURST sc_out sc_lv 2 signal 16 } 
	{ m_axi_bc1_AWLOCK sc_out sc_lv 2 signal 16 } 
	{ m_axi_bc1_AWCACHE sc_out sc_lv 4 signal 16 } 
	{ m_axi_bc1_AWPROT sc_out sc_lv 3 signal 16 } 
	{ m_axi_bc1_AWQOS sc_out sc_lv 4 signal 16 } 
	{ m_axi_bc1_AWREGION sc_out sc_lv 4 signal 16 } 
	{ m_axi_bc1_AWUSER sc_out sc_lv 1 signal 16 } 
	{ m_axi_bc1_WVALID sc_out sc_logic 1 signal 16 } 
	{ m_axi_bc1_WREADY sc_in sc_logic 1 signal 16 } 
	{ m_axi_bc1_WDATA sc_out sc_lv 128 signal 16 } 
	{ m_axi_bc1_WSTRB sc_out sc_lv 16 signal 16 } 
	{ m_axi_bc1_WLAST sc_out sc_logic 1 signal 16 } 
	{ m_axi_bc1_WID sc_out sc_lv 1 signal 16 } 
	{ m_axi_bc1_WUSER sc_out sc_lv 1 signal 16 } 
	{ m_axi_bc1_ARVALID sc_out sc_logic 1 signal 16 } 
	{ m_axi_bc1_ARREADY sc_in sc_logic 1 signal 16 } 
	{ m_axi_bc1_ARADDR sc_out sc_lv 64 signal 16 } 
	{ m_axi_bc1_ARID sc_out sc_lv 1 signal 16 } 
	{ m_axi_bc1_ARLEN sc_out sc_lv 8 signal 16 } 
	{ m_axi_bc1_ARSIZE sc_out sc_lv 3 signal 16 } 
	{ m_axi_bc1_ARBURST sc_out sc_lv 2 signal 16 } 
	{ m_axi_bc1_ARLOCK sc_out sc_lv 2 signal 16 } 
	{ m_axi_bc1_ARCACHE sc_out sc_lv 4 signal 16 } 
	{ m_axi_bc1_ARPROT sc_out sc_lv 3 signal 16 } 
	{ m_axi_bc1_ARQOS sc_out sc_lv 4 signal 16 } 
	{ m_axi_bc1_ARREGION sc_out sc_lv 4 signal 16 } 
	{ m_axi_bc1_ARUSER sc_out sc_lv 1 signal 16 } 
	{ m_axi_bc1_RVALID sc_in sc_logic 1 signal 16 } 
	{ m_axi_bc1_RREADY sc_out sc_logic 1 signal 16 } 
	{ m_axi_bc1_RDATA sc_in sc_lv 128 signal 16 } 
	{ m_axi_bc1_RLAST sc_in sc_logic 1 signal 16 } 
	{ m_axi_bc1_RID sc_in sc_lv 1 signal 16 } 
	{ m_axi_bc1_RUSER sc_in sc_lv 1 signal 16 } 
	{ m_axi_bc1_RRESP sc_in sc_lv 2 signal 16 } 
	{ m_axi_bc1_BVALID sc_in sc_logic 1 signal 16 } 
	{ m_axi_bc1_BREADY sc_out sc_logic 1 signal 16 } 
	{ m_axi_bc1_BRESP sc_in sc_lv 2 signal 16 } 
	{ m_axi_bc1_BID sc_in sc_lv 1 signal 16 } 
	{ m_axi_bc1_BUSER sc_in sc_lv 1 signal 16 } 
	{ m_axi_bc2_AWVALID sc_out sc_logic 1 signal 18 } 
	{ m_axi_bc2_AWREADY sc_in sc_logic 1 signal 18 } 
	{ m_axi_bc2_AWADDR sc_out sc_lv 64 signal 18 } 
	{ m_axi_bc2_AWID sc_out sc_lv 1 signal 18 } 
	{ m_axi_bc2_AWLEN sc_out sc_lv 8 signal 18 } 
	{ m_axi_bc2_AWSIZE sc_out sc_lv 3 signal 18 } 
	{ m_axi_bc2_AWBURST sc_out sc_lv 2 signal 18 } 
	{ m_axi_bc2_AWLOCK sc_out sc_lv 2 signal 18 } 
	{ m_axi_bc2_AWCACHE sc_out sc_lv 4 signal 18 } 
	{ m_axi_bc2_AWPROT sc_out sc_lv 3 signal 18 } 
	{ m_axi_bc2_AWQOS sc_out sc_lv 4 signal 18 } 
	{ m_axi_bc2_AWREGION sc_out sc_lv 4 signal 18 } 
	{ m_axi_bc2_AWUSER sc_out sc_lv 1 signal 18 } 
	{ m_axi_bc2_WVALID sc_out sc_logic 1 signal 18 } 
	{ m_axi_bc2_WREADY sc_in sc_logic 1 signal 18 } 
	{ m_axi_bc2_WDATA sc_out sc_lv 128 signal 18 } 
	{ m_axi_bc2_WSTRB sc_out sc_lv 16 signal 18 } 
	{ m_axi_bc2_WLAST sc_out sc_logic 1 signal 18 } 
	{ m_axi_bc2_WID sc_out sc_lv 1 signal 18 } 
	{ m_axi_bc2_WUSER sc_out sc_lv 1 signal 18 } 
	{ m_axi_bc2_ARVALID sc_out sc_logic 1 signal 18 } 
	{ m_axi_bc2_ARREADY sc_in sc_logic 1 signal 18 } 
	{ m_axi_bc2_ARADDR sc_out sc_lv 64 signal 18 } 
	{ m_axi_bc2_ARID sc_out sc_lv 1 signal 18 } 
	{ m_axi_bc2_ARLEN sc_out sc_lv 8 signal 18 } 
	{ m_axi_bc2_ARSIZE sc_out sc_lv 3 signal 18 } 
	{ m_axi_bc2_ARBURST sc_out sc_lv 2 signal 18 } 
	{ m_axi_bc2_ARLOCK sc_out sc_lv 2 signal 18 } 
	{ m_axi_bc2_ARCACHE sc_out sc_lv 4 signal 18 } 
	{ m_axi_bc2_ARPROT sc_out sc_lv 3 signal 18 } 
	{ m_axi_bc2_ARQOS sc_out sc_lv 4 signal 18 } 
	{ m_axi_bc2_ARREGION sc_out sc_lv 4 signal 18 } 
	{ m_axi_bc2_ARUSER sc_out sc_lv 1 signal 18 } 
	{ m_axi_bc2_RVALID sc_in sc_logic 1 signal 18 } 
	{ m_axi_bc2_RREADY sc_out sc_logic 1 signal 18 } 
	{ m_axi_bc2_RDATA sc_in sc_lv 128 signal 18 } 
	{ m_axi_bc2_RLAST sc_in sc_logic 1 signal 18 } 
	{ m_axi_bc2_RID sc_in sc_lv 1 signal 18 } 
	{ m_axi_bc2_RUSER sc_in sc_lv 1 signal 18 } 
	{ m_axi_bc2_RRESP sc_in sc_lv 2 signal 18 } 
	{ m_axi_bc2_BVALID sc_in sc_logic 1 signal 18 } 
	{ m_axi_bc2_BREADY sc_out sc_logic 1 signal 18 } 
	{ m_axi_bc2_BRESP sc_in sc_lv 2 signal 18 } 
	{ m_axi_bc2_BID sc_in sc_lv 1 signal 18 } 
	{ m_axi_bc2_BUSER sc_in sc_lv 1 signal 18 } 
	{ m_axi_bc3_AWVALID sc_out sc_logic 1 signal 20 } 
	{ m_axi_bc3_AWREADY sc_in sc_logic 1 signal 20 } 
	{ m_axi_bc3_AWADDR sc_out sc_lv 64 signal 20 } 
	{ m_axi_bc3_AWID sc_out sc_lv 1 signal 20 } 
	{ m_axi_bc3_AWLEN sc_out sc_lv 8 signal 20 } 
	{ m_axi_bc3_AWSIZE sc_out sc_lv 3 signal 20 } 
	{ m_axi_bc3_AWBURST sc_out sc_lv 2 signal 20 } 
	{ m_axi_bc3_AWLOCK sc_out sc_lv 2 signal 20 } 
	{ m_axi_bc3_AWCACHE sc_out sc_lv 4 signal 20 } 
	{ m_axi_bc3_AWPROT sc_out sc_lv 3 signal 20 } 
	{ m_axi_bc3_AWQOS sc_out sc_lv 4 signal 20 } 
	{ m_axi_bc3_AWREGION sc_out sc_lv 4 signal 20 } 
	{ m_axi_bc3_AWUSER sc_out sc_lv 1 signal 20 } 
	{ m_axi_bc3_WVALID sc_out sc_logic 1 signal 20 } 
	{ m_axi_bc3_WREADY sc_in sc_logic 1 signal 20 } 
	{ m_axi_bc3_WDATA sc_out sc_lv 128 signal 20 } 
	{ m_axi_bc3_WSTRB sc_out sc_lv 16 signal 20 } 
	{ m_axi_bc3_WLAST sc_out sc_logic 1 signal 20 } 
	{ m_axi_bc3_WID sc_out sc_lv 1 signal 20 } 
	{ m_axi_bc3_WUSER sc_out sc_lv 1 signal 20 } 
	{ m_axi_bc3_ARVALID sc_out sc_logic 1 signal 20 } 
	{ m_axi_bc3_ARREADY sc_in sc_logic 1 signal 20 } 
	{ m_axi_bc3_ARADDR sc_out sc_lv 64 signal 20 } 
	{ m_axi_bc3_ARID sc_out sc_lv 1 signal 20 } 
	{ m_axi_bc3_ARLEN sc_out sc_lv 8 signal 20 } 
	{ m_axi_bc3_ARSIZE sc_out sc_lv 3 signal 20 } 
	{ m_axi_bc3_ARBURST sc_out sc_lv 2 signal 20 } 
	{ m_axi_bc3_ARLOCK sc_out sc_lv 2 signal 20 } 
	{ m_axi_bc3_ARCACHE sc_out sc_lv 4 signal 20 } 
	{ m_axi_bc3_ARPROT sc_out sc_lv 3 signal 20 } 
	{ m_axi_bc3_ARQOS sc_out sc_lv 4 signal 20 } 
	{ m_axi_bc3_ARREGION sc_out sc_lv 4 signal 20 } 
	{ m_axi_bc3_ARUSER sc_out sc_lv 1 signal 20 } 
	{ m_axi_bc3_RVALID sc_in sc_logic 1 signal 20 } 
	{ m_axi_bc3_RREADY sc_out sc_logic 1 signal 20 } 
	{ m_axi_bc3_RDATA sc_in sc_lv 128 signal 20 } 
	{ m_axi_bc3_RLAST sc_in sc_logic 1 signal 20 } 
	{ m_axi_bc3_RID sc_in sc_lv 1 signal 20 } 
	{ m_axi_bc3_RUSER sc_in sc_lv 1 signal 20 } 
	{ m_axi_bc3_RRESP sc_in sc_lv 2 signal 20 } 
	{ m_axi_bc3_BVALID sc_in sc_logic 1 signal 20 } 
	{ m_axi_bc3_BREADY sc_out sc_logic 1 signal 20 } 
	{ m_axi_bc3_BRESP sc_in sc_lv 2 signal 20 } 
	{ m_axi_bc3_BID sc_in sc_lv 1 signal 20 } 
	{ m_axi_bc3_BUSER sc_in sc_lv 1 signal 20 } 
	{ m_axi_bc4_AWVALID sc_out sc_logic 1 signal 22 } 
	{ m_axi_bc4_AWREADY sc_in sc_logic 1 signal 22 } 
	{ m_axi_bc4_AWADDR sc_out sc_lv 64 signal 22 } 
	{ m_axi_bc4_AWID sc_out sc_lv 1 signal 22 } 
	{ m_axi_bc4_AWLEN sc_out sc_lv 8 signal 22 } 
	{ m_axi_bc4_AWSIZE sc_out sc_lv 3 signal 22 } 
	{ m_axi_bc4_AWBURST sc_out sc_lv 2 signal 22 } 
	{ m_axi_bc4_AWLOCK sc_out sc_lv 2 signal 22 } 
	{ m_axi_bc4_AWCACHE sc_out sc_lv 4 signal 22 } 
	{ m_axi_bc4_AWPROT sc_out sc_lv 3 signal 22 } 
	{ m_axi_bc4_AWQOS sc_out sc_lv 4 signal 22 } 
	{ m_axi_bc4_AWREGION sc_out sc_lv 4 signal 22 } 
	{ m_axi_bc4_AWUSER sc_out sc_lv 1 signal 22 } 
	{ m_axi_bc4_WVALID sc_out sc_logic 1 signal 22 } 
	{ m_axi_bc4_WREADY sc_in sc_logic 1 signal 22 } 
	{ m_axi_bc4_WDATA sc_out sc_lv 128 signal 22 } 
	{ m_axi_bc4_WSTRB sc_out sc_lv 16 signal 22 } 
	{ m_axi_bc4_WLAST sc_out sc_logic 1 signal 22 } 
	{ m_axi_bc4_WID sc_out sc_lv 1 signal 22 } 
	{ m_axi_bc4_WUSER sc_out sc_lv 1 signal 22 } 
	{ m_axi_bc4_ARVALID sc_out sc_logic 1 signal 22 } 
	{ m_axi_bc4_ARREADY sc_in sc_logic 1 signal 22 } 
	{ m_axi_bc4_ARADDR sc_out sc_lv 64 signal 22 } 
	{ m_axi_bc4_ARID sc_out sc_lv 1 signal 22 } 
	{ m_axi_bc4_ARLEN sc_out sc_lv 8 signal 22 } 
	{ m_axi_bc4_ARSIZE sc_out sc_lv 3 signal 22 } 
	{ m_axi_bc4_ARBURST sc_out sc_lv 2 signal 22 } 
	{ m_axi_bc4_ARLOCK sc_out sc_lv 2 signal 22 } 
	{ m_axi_bc4_ARCACHE sc_out sc_lv 4 signal 22 } 
	{ m_axi_bc4_ARPROT sc_out sc_lv 3 signal 22 } 
	{ m_axi_bc4_ARQOS sc_out sc_lv 4 signal 22 } 
	{ m_axi_bc4_ARREGION sc_out sc_lv 4 signal 22 } 
	{ m_axi_bc4_ARUSER sc_out sc_lv 1 signal 22 } 
	{ m_axi_bc4_RVALID sc_in sc_logic 1 signal 22 } 
	{ m_axi_bc4_RREADY sc_out sc_logic 1 signal 22 } 
	{ m_axi_bc4_RDATA sc_in sc_lv 128 signal 22 } 
	{ m_axi_bc4_RLAST sc_in sc_logic 1 signal 22 } 
	{ m_axi_bc4_RID sc_in sc_lv 1 signal 22 } 
	{ m_axi_bc4_RUSER sc_in sc_lv 1 signal 22 } 
	{ m_axi_bc4_RRESP sc_in sc_lv 2 signal 22 } 
	{ m_axi_bc4_BVALID sc_in sc_logic 1 signal 22 } 
	{ m_axi_bc4_BREADY sc_out sc_logic 1 signal 22 } 
	{ m_axi_bc4_BRESP sc_in sc_lv 2 signal 22 } 
	{ m_axi_bc4_BID sc_in sc_lv 1 signal 22 } 
	{ m_axi_bc4_BUSER sc_in sc_lv 1 signal 22 } 
	{ m_axi_bcid1_AWVALID sc_out sc_logic 1 signal 8 } 
	{ m_axi_bcid1_AWREADY sc_in sc_logic 1 signal 8 } 
	{ m_axi_bcid1_AWADDR sc_out sc_lv 64 signal 8 } 
	{ m_axi_bcid1_AWID sc_out sc_lv 1 signal 8 } 
	{ m_axi_bcid1_AWLEN sc_out sc_lv 8 signal 8 } 
	{ m_axi_bcid1_AWSIZE sc_out sc_lv 3 signal 8 } 
	{ m_axi_bcid1_AWBURST sc_out sc_lv 2 signal 8 } 
	{ m_axi_bcid1_AWLOCK sc_out sc_lv 2 signal 8 } 
	{ m_axi_bcid1_AWCACHE sc_out sc_lv 4 signal 8 } 
	{ m_axi_bcid1_AWPROT sc_out sc_lv 3 signal 8 } 
	{ m_axi_bcid1_AWQOS sc_out sc_lv 4 signal 8 } 
	{ m_axi_bcid1_AWREGION sc_out sc_lv 4 signal 8 } 
	{ m_axi_bcid1_AWUSER sc_out sc_lv 1 signal 8 } 
	{ m_axi_bcid1_WVALID sc_out sc_logic 1 signal 8 } 
	{ m_axi_bcid1_WREADY sc_in sc_logic 1 signal 8 } 
	{ m_axi_bcid1_WDATA sc_out sc_lv 128 signal 8 } 
	{ m_axi_bcid1_WSTRB sc_out sc_lv 16 signal 8 } 
	{ m_axi_bcid1_WLAST sc_out sc_logic 1 signal 8 } 
	{ m_axi_bcid1_WID sc_out sc_lv 1 signal 8 } 
	{ m_axi_bcid1_WUSER sc_out sc_lv 1 signal 8 } 
	{ m_axi_bcid1_ARVALID sc_out sc_logic 1 signal 8 } 
	{ m_axi_bcid1_ARREADY sc_in sc_logic 1 signal 8 } 
	{ m_axi_bcid1_ARADDR sc_out sc_lv 64 signal 8 } 
	{ m_axi_bcid1_ARID sc_out sc_lv 1 signal 8 } 
	{ m_axi_bcid1_ARLEN sc_out sc_lv 8 signal 8 } 
	{ m_axi_bcid1_ARSIZE sc_out sc_lv 3 signal 8 } 
	{ m_axi_bcid1_ARBURST sc_out sc_lv 2 signal 8 } 
	{ m_axi_bcid1_ARLOCK sc_out sc_lv 2 signal 8 } 
	{ m_axi_bcid1_ARCACHE sc_out sc_lv 4 signal 8 } 
	{ m_axi_bcid1_ARPROT sc_out sc_lv 3 signal 8 } 
	{ m_axi_bcid1_ARQOS sc_out sc_lv 4 signal 8 } 
	{ m_axi_bcid1_ARREGION sc_out sc_lv 4 signal 8 } 
	{ m_axi_bcid1_ARUSER sc_out sc_lv 1 signal 8 } 
	{ m_axi_bcid1_RVALID sc_in sc_logic 1 signal 8 } 
	{ m_axi_bcid1_RREADY sc_out sc_logic 1 signal 8 } 
	{ m_axi_bcid1_RDATA sc_in sc_lv 128 signal 8 } 
	{ m_axi_bcid1_RLAST sc_in sc_logic 1 signal 8 } 
	{ m_axi_bcid1_RID sc_in sc_lv 1 signal 8 } 
	{ m_axi_bcid1_RUSER sc_in sc_lv 1 signal 8 } 
	{ m_axi_bcid1_RRESP sc_in sc_lv 2 signal 8 } 
	{ m_axi_bcid1_BVALID sc_in sc_logic 1 signal 8 } 
	{ m_axi_bcid1_BREADY sc_out sc_logic 1 signal 8 } 
	{ m_axi_bcid1_BRESP sc_in sc_lv 2 signal 8 } 
	{ m_axi_bcid1_BID sc_in sc_lv 1 signal 8 } 
	{ m_axi_bcid1_BUSER sc_in sc_lv 1 signal 8 } 
	{ m_axi_bcid2_AWVALID sc_out sc_logic 1 signal 10 } 
	{ m_axi_bcid2_AWREADY sc_in sc_logic 1 signal 10 } 
	{ m_axi_bcid2_AWADDR sc_out sc_lv 64 signal 10 } 
	{ m_axi_bcid2_AWID sc_out sc_lv 1 signal 10 } 
	{ m_axi_bcid2_AWLEN sc_out sc_lv 8 signal 10 } 
	{ m_axi_bcid2_AWSIZE sc_out sc_lv 3 signal 10 } 
	{ m_axi_bcid2_AWBURST sc_out sc_lv 2 signal 10 } 
	{ m_axi_bcid2_AWLOCK sc_out sc_lv 2 signal 10 } 
	{ m_axi_bcid2_AWCACHE sc_out sc_lv 4 signal 10 } 
	{ m_axi_bcid2_AWPROT sc_out sc_lv 3 signal 10 } 
	{ m_axi_bcid2_AWQOS sc_out sc_lv 4 signal 10 } 
	{ m_axi_bcid2_AWREGION sc_out sc_lv 4 signal 10 } 
	{ m_axi_bcid2_AWUSER sc_out sc_lv 1 signal 10 } 
	{ m_axi_bcid2_WVALID sc_out sc_logic 1 signal 10 } 
	{ m_axi_bcid2_WREADY sc_in sc_logic 1 signal 10 } 
	{ m_axi_bcid2_WDATA sc_out sc_lv 128 signal 10 } 
	{ m_axi_bcid2_WSTRB sc_out sc_lv 16 signal 10 } 
	{ m_axi_bcid2_WLAST sc_out sc_logic 1 signal 10 } 
	{ m_axi_bcid2_WID sc_out sc_lv 1 signal 10 } 
	{ m_axi_bcid2_WUSER sc_out sc_lv 1 signal 10 } 
	{ m_axi_bcid2_ARVALID sc_out sc_logic 1 signal 10 } 
	{ m_axi_bcid2_ARREADY sc_in sc_logic 1 signal 10 } 
	{ m_axi_bcid2_ARADDR sc_out sc_lv 64 signal 10 } 
	{ m_axi_bcid2_ARID sc_out sc_lv 1 signal 10 } 
	{ m_axi_bcid2_ARLEN sc_out sc_lv 8 signal 10 } 
	{ m_axi_bcid2_ARSIZE sc_out sc_lv 3 signal 10 } 
	{ m_axi_bcid2_ARBURST sc_out sc_lv 2 signal 10 } 
	{ m_axi_bcid2_ARLOCK sc_out sc_lv 2 signal 10 } 
	{ m_axi_bcid2_ARCACHE sc_out sc_lv 4 signal 10 } 
	{ m_axi_bcid2_ARPROT sc_out sc_lv 3 signal 10 } 
	{ m_axi_bcid2_ARQOS sc_out sc_lv 4 signal 10 } 
	{ m_axi_bcid2_ARREGION sc_out sc_lv 4 signal 10 } 
	{ m_axi_bcid2_ARUSER sc_out sc_lv 1 signal 10 } 
	{ m_axi_bcid2_RVALID sc_in sc_logic 1 signal 10 } 
	{ m_axi_bcid2_RREADY sc_out sc_logic 1 signal 10 } 
	{ m_axi_bcid2_RDATA sc_in sc_lv 128 signal 10 } 
	{ m_axi_bcid2_RLAST sc_in sc_logic 1 signal 10 } 
	{ m_axi_bcid2_RID sc_in sc_lv 1 signal 10 } 
	{ m_axi_bcid2_RUSER sc_in sc_lv 1 signal 10 } 
	{ m_axi_bcid2_RRESP sc_in sc_lv 2 signal 10 } 
	{ m_axi_bcid2_BVALID sc_in sc_logic 1 signal 10 } 
	{ m_axi_bcid2_BREADY sc_out sc_logic 1 signal 10 } 
	{ m_axi_bcid2_BRESP sc_in sc_lv 2 signal 10 } 
	{ m_axi_bcid2_BID sc_in sc_lv 1 signal 10 } 
	{ m_axi_bcid2_BUSER sc_in sc_lv 1 signal 10 } 
	{ m_axi_bcid3_AWVALID sc_out sc_logic 1 signal 12 } 
	{ m_axi_bcid3_AWREADY sc_in sc_logic 1 signal 12 } 
	{ m_axi_bcid3_AWADDR sc_out sc_lv 64 signal 12 } 
	{ m_axi_bcid3_AWID sc_out sc_lv 1 signal 12 } 
	{ m_axi_bcid3_AWLEN sc_out sc_lv 8 signal 12 } 
	{ m_axi_bcid3_AWSIZE sc_out sc_lv 3 signal 12 } 
	{ m_axi_bcid3_AWBURST sc_out sc_lv 2 signal 12 } 
	{ m_axi_bcid3_AWLOCK sc_out sc_lv 2 signal 12 } 
	{ m_axi_bcid3_AWCACHE sc_out sc_lv 4 signal 12 } 
	{ m_axi_bcid3_AWPROT sc_out sc_lv 3 signal 12 } 
	{ m_axi_bcid3_AWQOS sc_out sc_lv 4 signal 12 } 
	{ m_axi_bcid3_AWREGION sc_out sc_lv 4 signal 12 } 
	{ m_axi_bcid3_AWUSER sc_out sc_lv 1 signal 12 } 
	{ m_axi_bcid3_WVALID sc_out sc_logic 1 signal 12 } 
	{ m_axi_bcid3_WREADY sc_in sc_logic 1 signal 12 } 
	{ m_axi_bcid3_WDATA sc_out sc_lv 128 signal 12 } 
	{ m_axi_bcid3_WSTRB sc_out sc_lv 16 signal 12 } 
	{ m_axi_bcid3_WLAST sc_out sc_logic 1 signal 12 } 
	{ m_axi_bcid3_WID sc_out sc_lv 1 signal 12 } 
	{ m_axi_bcid3_WUSER sc_out sc_lv 1 signal 12 } 
	{ m_axi_bcid3_ARVALID sc_out sc_logic 1 signal 12 } 
	{ m_axi_bcid3_ARREADY sc_in sc_logic 1 signal 12 } 
	{ m_axi_bcid3_ARADDR sc_out sc_lv 64 signal 12 } 
	{ m_axi_bcid3_ARID sc_out sc_lv 1 signal 12 } 
	{ m_axi_bcid3_ARLEN sc_out sc_lv 8 signal 12 } 
	{ m_axi_bcid3_ARSIZE sc_out sc_lv 3 signal 12 } 
	{ m_axi_bcid3_ARBURST sc_out sc_lv 2 signal 12 } 
	{ m_axi_bcid3_ARLOCK sc_out sc_lv 2 signal 12 } 
	{ m_axi_bcid3_ARCACHE sc_out sc_lv 4 signal 12 } 
	{ m_axi_bcid3_ARPROT sc_out sc_lv 3 signal 12 } 
	{ m_axi_bcid3_ARQOS sc_out sc_lv 4 signal 12 } 
	{ m_axi_bcid3_ARREGION sc_out sc_lv 4 signal 12 } 
	{ m_axi_bcid3_ARUSER sc_out sc_lv 1 signal 12 } 
	{ m_axi_bcid3_RVALID sc_in sc_logic 1 signal 12 } 
	{ m_axi_bcid3_RREADY sc_out sc_logic 1 signal 12 } 
	{ m_axi_bcid3_RDATA sc_in sc_lv 128 signal 12 } 
	{ m_axi_bcid3_RLAST sc_in sc_logic 1 signal 12 } 
	{ m_axi_bcid3_RID sc_in sc_lv 1 signal 12 } 
	{ m_axi_bcid3_RUSER sc_in sc_lv 1 signal 12 } 
	{ m_axi_bcid3_RRESP sc_in sc_lv 2 signal 12 } 
	{ m_axi_bcid3_BVALID sc_in sc_logic 1 signal 12 } 
	{ m_axi_bcid3_BREADY sc_out sc_logic 1 signal 12 } 
	{ m_axi_bcid3_BRESP sc_in sc_lv 2 signal 12 } 
	{ m_axi_bcid3_BID sc_in sc_lv 1 signal 12 } 
	{ m_axi_bcid3_BUSER sc_in sc_lv 1 signal 12 } 
	{ m_axi_bcid4_AWVALID sc_out sc_logic 1 signal 14 } 
	{ m_axi_bcid4_AWREADY sc_in sc_logic 1 signal 14 } 
	{ m_axi_bcid4_AWADDR sc_out sc_lv 64 signal 14 } 
	{ m_axi_bcid4_AWID sc_out sc_lv 1 signal 14 } 
	{ m_axi_bcid4_AWLEN sc_out sc_lv 8 signal 14 } 
	{ m_axi_bcid4_AWSIZE sc_out sc_lv 3 signal 14 } 
	{ m_axi_bcid4_AWBURST sc_out sc_lv 2 signal 14 } 
	{ m_axi_bcid4_AWLOCK sc_out sc_lv 2 signal 14 } 
	{ m_axi_bcid4_AWCACHE sc_out sc_lv 4 signal 14 } 
	{ m_axi_bcid4_AWPROT sc_out sc_lv 3 signal 14 } 
	{ m_axi_bcid4_AWQOS sc_out sc_lv 4 signal 14 } 
	{ m_axi_bcid4_AWREGION sc_out sc_lv 4 signal 14 } 
	{ m_axi_bcid4_AWUSER sc_out sc_lv 1 signal 14 } 
	{ m_axi_bcid4_WVALID sc_out sc_logic 1 signal 14 } 
	{ m_axi_bcid4_WREADY sc_in sc_logic 1 signal 14 } 
	{ m_axi_bcid4_WDATA sc_out sc_lv 128 signal 14 } 
	{ m_axi_bcid4_WSTRB sc_out sc_lv 16 signal 14 } 
	{ m_axi_bcid4_WLAST sc_out sc_logic 1 signal 14 } 
	{ m_axi_bcid4_WID sc_out sc_lv 1 signal 14 } 
	{ m_axi_bcid4_WUSER sc_out sc_lv 1 signal 14 } 
	{ m_axi_bcid4_ARVALID sc_out sc_logic 1 signal 14 } 
	{ m_axi_bcid4_ARREADY sc_in sc_logic 1 signal 14 } 
	{ m_axi_bcid4_ARADDR sc_out sc_lv 64 signal 14 } 
	{ m_axi_bcid4_ARID sc_out sc_lv 1 signal 14 } 
	{ m_axi_bcid4_ARLEN sc_out sc_lv 8 signal 14 } 
	{ m_axi_bcid4_ARSIZE sc_out sc_lv 3 signal 14 } 
	{ m_axi_bcid4_ARBURST sc_out sc_lv 2 signal 14 } 
	{ m_axi_bcid4_ARLOCK sc_out sc_lv 2 signal 14 } 
	{ m_axi_bcid4_ARCACHE sc_out sc_lv 4 signal 14 } 
	{ m_axi_bcid4_ARPROT sc_out sc_lv 3 signal 14 } 
	{ m_axi_bcid4_ARQOS sc_out sc_lv 4 signal 14 } 
	{ m_axi_bcid4_ARREGION sc_out sc_lv 4 signal 14 } 
	{ m_axi_bcid4_ARUSER sc_out sc_lv 1 signal 14 } 
	{ m_axi_bcid4_RVALID sc_in sc_logic 1 signal 14 } 
	{ m_axi_bcid4_RREADY sc_out sc_logic 1 signal 14 } 
	{ m_axi_bcid4_RDATA sc_in sc_lv 128 signal 14 } 
	{ m_axi_bcid4_RLAST sc_in sc_logic 1 signal 14 } 
	{ m_axi_bcid4_RID sc_in sc_lv 1 signal 14 } 
	{ m_axi_bcid4_RUSER sc_in sc_lv 1 signal 14 } 
	{ m_axi_bcid4_RRESP sc_in sc_lv 2 signal 14 } 
	{ m_axi_bcid4_BVALID sc_in sc_logic 1 signal 14 } 
	{ m_axi_bcid4_BREADY sc_out sc_logic 1 signal 14 } 
	{ m_axi_bcid4_BRESP sc_in sc_lv 2 signal 14 } 
	{ m_axi_bcid4_BID sc_in sc_lv 1 signal 14 } 
	{ m_axi_bcid4_BUSER sc_in sc_lv 1 signal 14 } 
	{ m_axi_brcsr1_AWVALID sc_out sc_logic 1 signal 3 } 
	{ m_axi_brcsr1_AWREADY sc_in sc_logic 1 signal 3 } 
	{ m_axi_brcsr1_AWADDR sc_out sc_lv 64 signal 3 } 
	{ m_axi_brcsr1_AWID sc_out sc_lv 1 signal 3 } 
	{ m_axi_brcsr1_AWLEN sc_out sc_lv 8 signal 3 } 
	{ m_axi_brcsr1_AWSIZE sc_out sc_lv 3 signal 3 } 
	{ m_axi_brcsr1_AWBURST sc_out sc_lv 2 signal 3 } 
	{ m_axi_brcsr1_AWLOCK sc_out sc_lv 2 signal 3 } 
	{ m_axi_brcsr1_AWCACHE sc_out sc_lv 4 signal 3 } 
	{ m_axi_brcsr1_AWPROT sc_out sc_lv 3 signal 3 } 
	{ m_axi_brcsr1_AWQOS sc_out sc_lv 4 signal 3 } 
	{ m_axi_brcsr1_AWREGION sc_out sc_lv 4 signal 3 } 
	{ m_axi_brcsr1_AWUSER sc_out sc_lv 1 signal 3 } 
	{ m_axi_brcsr1_WVALID sc_out sc_logic 1 signal 3 } 
	{ m_axi_brcsr1_WREADY sc_in sc_logic 1 signal 3 } 
	{ m_axi_brcsr1_WDATA sc_out sc_lv 128 signal 3 } 
	{ m_axi_brcsr1_WSTRB sc_out sc_lv 16 signal 3 } 
	{ m_axi_brcsr1_WLAST sc_out sc_logic 1 signal 3 } 
	{ m_axi_brcsr1_WID sc_out sc_lv 1 signal 3 } 
	{ m_axi_brcsr1_WUSER sc_out sc_lv 1 signal 3 } 
	{ m_axi_brcsr1_ARVALID sc_out sc_logic 1 signal 3 } 
	{ m_axi_brcsr1_ARREADY sc_in sc_logic 1 signal 3 } 
	{ m_axi_brcsr1_ARADDR sc_out sc_lv 64 signal 3 } 
	{ m_axi_brcsr1_ARID sc_out sc_lv 1 signal 3 } 
	{ m_axi_brcsr1_ARLEN sc_out sc_lv 8 signal 3 } 
	{ m_axi_brcsr1_ARSIZE sc_out sc_lv 3 signal 3 } 
	{ m_axi_brcsr1_ARBURST sc_out sc_lv 2 signal 3 } 
	{ m_axi_brcsr1_ARLOCK sc_out sc_lv 2 signal 3 } 
	{ m_axi_brcsr1_ARCACHE sc_out sc_lv 4 signal 3 } 
	{ m_axi_brcsr1_ARPROT sc_out sc_lv 3 signal 3 } 
	{ m_axi_brcsr1_ARQOS sc_out sc_lv 4 signal 3 } 
	{ m_axi_brcsr1_ARREGION sc_out sc_lv 4 signal 3 } 
	{ m_axi_brcsr1_ARUSER sc_out sc_lv 1 signal 3 } 
	{ m_axi_brcsr1_RVALID sc_in sc_logic 1 signal 3 } 
	{ m_axi_brcsr1_RREADY sc_out sc_logic 1 signal 3 } 
	{ m_axi_brcsr1_RDATA sc_in sc_lv 128 signal 3 } 
	{ m_axi_brcsr1_RLAST sc_in sc_logic 1 signal 3 } 
	{ m_axi_brcsr1_RID sc_in sc_lv 1 signal 3 } 
	{ m_axi_brcsr1_RUSER sc_in sc_lv 1 signal 3 } 
	{ m_axi_brcsr1_RRESP sc_in sc_lv 2 signal 3 } 
	{ m_axi_brcsr1_BVALID sc_in sc_logic 1 signal 3 } 
	{ m_axi_brcsr1_BREADY sc_out sc_logic 1 signal 3 } 
	{ m_axi_brcsr1_BRESP sc_in sc_lv 2 signal 3 } 
	{ m_axi_brcsr1_BID sc_in sc_lv 1 signal 3 } 
	{ m_axi_brcsr1_BUSER sc_in sc_lv 1 signal 3 } 
	{ m_axi_brcsr2_AWVALID sc_out sc_logic 1 signal 4 } 
	{ m_axi_brcsr2_AWREADY sc_in sc_logic 1 signal 4 } 
	{ m_axi_brcsr2_AWADDR sc_out sc_lv 64 signal 4 } 
	{ m_axi_brcsr2_AWID sc_out sc_lv 1 signal 4 } 
	{ m_axi_brcsr2_AWLEN sc_out sc_lv 8 signal 4 } 
	{ m_axi_brcsr2_AWSIZE sc_out sc_lv 3 signal 4 } 
	{ m_axi_brcsr2_AWBURST sc_out sc_lv 2 signal 4 } 
	{ m_axi_brcsr2_AWLOCK sc_out sc_lv 2 signal 4 } 
	{ m_axi_brcsr2_AWCACHE sc_out sc_lv 4 signal 4 } 
	{ m_axi_brcsr2_AWPROT sc_out sc_lv 3 signal 4 } 
	{ m_axi_brcsr2_AWQOS sc_out sc_lv 4 signal 4 } 
	{ m_axi_brcsr2_AWREGION sc_out sc_lv 4 signal 4 } 
	{ m_axi_brcsr2_AWUSER sc_out sc_lv 1 signal 4 } 
	{ m_axi_brcsr2_WVALID sc_out sc_logic 1 signal 4 } 
	{ m_axi_brcsr2_WREADY sc_in sc_logic 1 signal 4 } 
	{ m_axi_brcsr2_WDATA sc_out sc_lv 128 signal 4 } 
	{ m_axi_brcsr2_WSTRB sc_out sc_lv 16 signal 4 } 
	{ m_axi_brcsr2_WLAST sc_out sc_logic 1 signal 4 } 
	{ m_axi_brcsr2_WID sc_out sc_lv 1 signal 4 } 
	{ m_axi_brcsr2_WUSER sc_out sc_lv 1 signal 4 } 
	{ m_axi_brcsr2_ARVALID sc_out sc_logic 1 signal 4 } 
	{ m_axi_brcsr2_ARREADY sc_in sc_logic 1 signal 4 } 
	{ m_axi_brcsr2_ARADDR sc_out sc_lv 64 signal 4 } 
	{ m_axi_brcsr2_ARID sc_out sc_lv 1 signal 4 } 
	{ m_axi_brcsr2_ARLEN sc_out sc_lv 8 signal 4 } 
	{ m_axi_brcsr2_ARSIZE sc_out sc_lv 3 signal 4 } 
	{ m_axi_brcsr2_ARBURST sc_out sc_lv 2 signal 4 } 
	{ m_axi_brcsr2_ARLOCK sc_out sc_lv 2 signal 4 } 
	{ m_axi_brcsr2_ARCACHE sc_out sc_lv 4 signal 4 } 
	{ m_axi_brcsr2_ARPROT sc_out sc_lv 3 signal 4 } 
	{ m_axi_brcsr2_ARQOS sc_out sc_lv 4 signal 4 } 
	{ m_axi_brcsr2_ARREGION sc_out sc_lv 4 signal 4 } 
	{ m_axi_brcsr2_ARUSER sc_out sc_lv 1 signal 4 } 
	{ m_axi_brcsr2_RVALID sc_in sc_logic 1 signal 4 } 
	{ m_axi_brcsr2_RREADY sc_out sc_logic 1 signal 4 } 
	{ m_axi_brcsr2_RDATA sc_in sc_lv 128 signal 4 } 
	{ m_axi_brcsr2_RLAST sc_in sc_logic 1 signal 4 } 
	{ m_axi_brcsr2_RID sc_in sc_lv 1 signal 4 } 
	{ m_axi_brcsr2_RUSER sc_in sc_lv 1 signal 4 } 
	{ m_axi_brcsr2_RRESP sc_in sc_lv 2 signal 4 } 
	{ m_axi_brcsr2_BVALID sc_in sc_logic 1 signal 4 } 
	{ m_axi_brcsr2_BREADY sc_out sc_logic 1 signal 4 } 
	{ m_axi_brcsr2_BRESP sc_in sc_lv 2 signal 4 } 
	{ m_axi_brcsr2_BID sc_in sc_lv 1 signal 4 } 
	{ m_axi_brcsr2_BUSER sc_in sc_lv 1 signal 4 } 
	{ m_axi_brcsr3_AWVALID sc_out sc_logic 1 signal 5 } 
	{ m_axi_brcsr3_AWREADY sc_in sc_logic 1 signal 5 } 
	{ m_axi_brcsr3_AWADDR sc_out sc_lv 64 signal 5 } 
	{ m_axi_brcsr3_AWID sc_out sc_lv 1 signal 5 } 
	{ m_axi_brcsr3_AWLEN sc_out sc_lv 8 signal 5 } 
	{ m_axi_brcsr3_AWSIZE sc_out sc_lv 3 signal 5 } 
	{ m_axi_brcsr3_AWBURST sc_out sc_lv 2 signal 5 } 
	{ m_axi_brcsr3_AWLOCK sc_out sc_lv 2 signal 5 } 
	{ m_axi_brcsr3_AWCACHE sc_out sc_lv 4 signal 5 } 
	{ m_axi_brcsr3_AWPROT sc_out sc_lv 3 signal 5 } 
	{ m_axi_brcsr3_AWQOS sc_out sc_lv 4 signal 5 } 
	{ m_axi_brcsr3_AWREGION sc_out sc_lv 4 signal 5 } 
	{ m_axi_brcsr3_AWUSER sc_out sc_lv 1 signal 5 } 
	{ m_axi_brcsr3_WVALID sc_out sc_logic 1 signal 5 } 
	{ m_axi_brcsr3_WREADY sc_in sc_logic 1 signal 5 } 
	{ m_axi_brcsr3_WDATA sc_out sc_lv 128 signal 5 } 
	{ m_axi_brcsr3_WSTRB sc_out sc_lv 16 signal 5 } 
	{ m_axi_brcsr3_WLAST sc_out sc_logic 1 signal 5 } 
	{ m_axi_brcsr3_WID sc_out sc_lv 1 signal 5 } 
	{ m_axi_brcsr3_WUSER sc_out sc_lv 1 signal 5 } 
	{ m_axi_brcsr3_ARVALID sc_out sc_logic 1 signal 5 } 
	{ m_axi_brcsr3_ARREADY sc_in sc_logic 1 signal 5 } 
	{ m_axi_brcsr3_ARADDR sc_out sc_lv 64 signal 5 } 
	{ m_axi_brcsr3_ARID sc_out sc_lv 1 signal 5 } 
	{ m_axi_brcsr3_ARLEN sc_out sc_lv 8 signal 5 } 
	{ m_axi_brcsr3_ARSIZE sc_out sc_lv 3 signal 5 } 
	{ m_axi_brcsr3_ARBURST sc_out sc_lv 2 signal 5 } 
	{ m_axi_brcsr3_ARLOCK sc_out sc_lv 2 signal 5 } 
	{ m_axi_brcsr3_ARCACHE sc_out sc_lv 4 signal 5 } 
	{ m_axi_brcsr3_ARPROT sc_out sc_lv 3 signal 5 } 
	{ m_axi_brcsr3_ARQOS sc_out sc_lv 4 signal 5 } 
	{ m_axi_brcsr3_ARREGION sc_out sc_lv 4 signal 5 } 
	{ m_axi_brcsr3_ARUSER sc_out sc_lv 1 signal 5 } 
	{ m_axi_brcsr3_RVALID sc_in sc_logic 1 signal 5 } 
	{ m_axi_brcsr3_RREADY sc_out sc_logic 1 signal 5 } 
	{ m_axi_brcsr3_RDATA sc_in sc_lv 128 signal 5 } 
	{ m_axi_brcsr3_RLAST sc_in sc_logic 1 signal 5 } 
	{ m_axi_brcsr3_RID sc_in sc_lv 1 signal 5 } 
	{ m_axi_brcsr3_RUSER sc_in sc_lv 1 signal 5 } 
	{ m_axi_brcsr3_RRESP sc_in sc_lv 2 signal 5 } 
	{ m_axi_brcsr3_BVALID sc_in sc_logic 1 signal 5 } 
	{ m_axi_brcsr3_BREADY sc_out sc_logic 1 signal 5 } 
	{ m_axi_brcsr3_BRESP sc_in sc_lv 2 signal 5 } 
	{ m_axi_brcsr3_BID sc_in sc_lv 1 signal 5 } 
	{ m_axi_brcsr3_BUSER sc_in sc_lv 1 signal 5 } 
	{ m_axi_brcsr4_AWVALID sc_out sc_logic 1 signal 6 } 
	{ m_axi_brcsr4_AWREADY sc_in sc_logic 1 signal 6 } 
	{ m_axi_brcsr4_AWADDR sc_out sc_lv 64 signal 6 } 
	{ m_axi_brcsr4_AWID sc_out sc_lv 1 signal 6 } 
	{ m_axi_brcsr4_AWLEN sc_out sc_lv 8 signal 6 } 
	{ m_axi_brcsr4_AWSIZE sc_out sc_lv 3 signal 6 } 
	{ m_axi_brcsr4_AWBURST sc_out sc_lv 2 signal 6 } 
	{ m_axi_brcsr4_AWLOCK sc_out sc_lv 2 signal 6 } 
	{ m_axi_brcsr4_AWCACHE sc_out sc_lv 4 signal 6 } 
	{ m_axi_brcsr4_AWPROT sc_out sc_lv 3 signal 6 } 
	{ m_axi_brcsr4_AWQOS sc_out sc_lv 4 signal 6 } 
	{ m_axi_brcsr4_AWREGION sc_out sc_lv 4 signal 6 } 
	{ m_axi_brcsr4_AWUSER sc_out sc_lv 1 signal 6 } 
	{ m_axi_brcsr4_WVALID sc_out sc_logic 1 signal 6 } 
	{ m_axi_brcsr4_WREADY sc_in sc_logic 1 signal 6 } 
	{ m_axi_brcsr4_WDATA sc_out sc_lv 128 signal 6 } 
	{ m_axi_brcsr4_WSTRB sc_out sc_lv 16 signal 6 } 
	{ m_axi_brcsr4_WLAST sc_out sc_logic 1 signal 6 } 
	{ m_axi_brcsr4_WID sc_out sc_lv 1 signal 6 } 
	{ m_axi_brcsr4_WUSER sc_out sc_lv 1 signal 6 } 
	{ m_axi_brcsr4_ARVALID sc_out sc_logic 1 signal 6 } 
	{ m_axi_brcsr4_ARREADY sc_in sc_logic 1 signal 6 } 
	{ m_axi_brcsr4_ARADDR sc_out sc_lv 64 signal 6 } 
	{ m_axi_brcsr4_ARID sc_out sc_lv 1 signal 6 } 
	{ m_axi_brcsr4_ARLEN sc_out sc_lv 8 signal 6 } 
	{ m_axi_brcsr4_ARSIZE sc_out sc_lv 3 signal 6 } 
	{ m_axi_brcsr4_ARBURST sc_out sc_lv 2 signal 6 } 
	{ m_axi_brcsr4_ARLOCK sc_out sc_lv 2 signal 6 } 
	{ m_axi_brcsr4_ARCACHE sc_out sc_lv 4 signal 6 } 
	{ m_axi_brcsr4_ARPROT sc_out sc_lv 3 signal 6 } 
	{ m_axi_brcsr4_ARQOS sc_out sc_lv 4 signal 6 } 
	{ m_axi_brcsr4_ARREGION sc_out sc_lv 4 signal 6 } 
	{ m_axi_brcsr4_ARUSER sc_out sc_lv 1 signal 6 } 
	{ m_axi_brcsr4_RVALID sc_in sc_logic 1 signal 6 } 
	{ m_axi_brcsr4_RREADY sc_out sc_logic 1 signal 6 } 
	{ m_axi_brcsr4_RDATA sc_in sc_lv 128 signal 6 } 
	{ m_axi_brcsr4_RLAST sc_in sc_logic 1 signal 6 } 
	{ m_axi_brcsr4_RID sc_in sc_lv 1 signal 6 } 
	{ m_axi_brcsr4_RUSER sc_in sc_lv 1 signal 6 } 
	{ m_axi_brcsr4_RRESP sc_in sc_lv 2 signal 6 } 
	{ m_axi_brcsr4_BVALID sc_in sc_logic 1 signal 6 } 
	{ m_axi_brcsr4_BREADY sc_out sc_logic 1 signal 6 } 
	{ m_axi_brcsr4_BRESP sc_in sc_lv 2 signal 6 } 
	{ m_axi_brcsr4_BID sc_in sc_lv 1 signal 6 } 
	{ m_axi_brcsr4_BUSER sc_in sc_lv 1 signal 6 } 
	{ m_axi_bv1_AWVALID sc_out sc_logic 1 signal 15 } 
	{ m_axi_bv1_AWREADY sc_in sc_logic 1 signal 15 } 
	{ m_axi_bv1_AWADDR sc_out sc_lv 64 signal 15 } 
	{ m_axi_bv1_AWID sc_out sc_lv 1 signal 15 } 
	{ m_axi_bv1_AWLEN sc_out sc_lv 8 signal 15 } 
	{ m_axi_bv1_AWSIZE sc_out sc_lv 3 signal 15 } 
	{ m_axi_bv1_AWBURST sc_out sc_lv 2 signal 15 } 
	{ m_axi_bv1_AWLOCK sc_out sc_lv 2 signal 15 } 
	{ m_axi_bv1_AWCACHE sc_out sc_lv 4 signal 15 } 
	{ m_axi_bv1_AWPROT sc_out sc_lv 3 signal 15 } 
	{ m_axi_bv1_AWQOS sc_out sc_lv 4 signal 15 } 
	{ m_axi_bv1_AWREGION sc_out sc_lv 4 signal 15 } 
	{ m_axi_bv1_AWUSER sc_out sc_lv 1 signal 15 } 
	{ m_axi_bv1_WVALID sc_out sc_logic 1 signal 15 } 
	{ m_axi_bv1_WREADY sc_in sc_logic 1 signal 15 } 
	{ m_axi_bv1_WDATA sc_out sc_lv 128 signal 15 } 
	{ m_axi_bv1_WSTRB sc_out sc_lv 16 signal 15 } 
	{ m_axi_bv1_WLAST sc_out sc_logic 1 signal 15 } 
	{ m_axi_bv1_WID sc_out sc_lv 1 signal 15 } 
	{ m_axi_bv1_WUSER sc_out sc_lv 1 signal 15 } 
	{ m_axi_bv1_ARVALID sc_out sc_logic 1 signal 15 } 
	{ m_axi_bv1_ARREADY sc_in sc_logic 1 signal 15 } 
	{ m_axi_bv1_ARADDR sc_out sc_lv 64 signal 15 } 
	{ m_axi_bv1_ARID sc_out sc_lv 1 signal 15 } 
	{ m_axi_bv1_ARLEN sc_out sc_lv 8 signal 15 } 
	{ m_axi_bv1_ARSIZE sc_out sc_lv 3 signal 15 } 
	{ m_axi_bv1_ARBURST sc_out sc_lv 2 signal 15 } 
	{ m_axi_bv1_ARLOCK sc_out sc_lv 2 signal 15 } 
	{ m_axi_bv1_ARCACHE sc_out sc_lv 4 signal 15 } 
	{ m_axi_bv1_ARPROT sc_out sc_lv 3 signal 15 } 
	{ m_axi_bv1_ARQOS sc_out sc_lv 4 signal 15 } 
	{ m_axi_bv1_ARREGION sc_out sc_lv 4 signal 15 } 
	{ m_axi_bv1_ARUSER sc_out sc_lv 1 signal 15 } 
	{ m_axi_bv1_RVALID sc_in sc_logic 1 signal 15 } 
	{ m_axi_bv1_RREADY sc_out sc_logic 1 signal 15 } 
	{ m_axi_bv1_RDATA sc_in sc_lv 128 signal 15 } 
	{ m_axi_bv1_RLAST sc_in sc_logic 1 signal 15 } 
	{ m_axi_bv1_RID sc_in sc_lv 1 signal 15 } 
	{ m_axi_bv1_RUSER sc_in sc_lv 1 signal 15 } 
	{ m_axi_bv1_RRESP sc_in sc_lv 2 signal 15 } 
	{ m_axi_bv1_BVALID sc_in sc_logic 1 signal 15 } 
	{ m_axi_bv1_BREADY sc_out sc_logic 1 signal 15 } 
	{ m_axi_bv1_BRESP sc_in sc_lv 2 signal 15 } 
	{ m_axi_bv1_BID sc_in sc_lv 1 signal 15 } 
	{ m_axi_bv1_BUSER sc_in sc_lv 1 signal 15 } 
	{ m_axi_bv2_AWVALID sc_out sc_logic 1 signal 17 } 
	{ m_axi_bv2_AWREADY sc_in sc_logic 1 signal 17 } 
	{ m_axi_bv2_AWADDR sc_out sc_lv 64 signal 17 } 
	{ m_axi_bv2_AWID sc_out sc_lv 1 signal 17 } 
	{ m_axi_bv2_AWLEN sc_out sc_lv 8 signal 17 } 
	{ m_axi_bv2_AWSIZE sc_out sc_lv 3 signal 17 } 
	{ m_axi_bv2_AWBURST sc_out sc_lv 2 signal 17 } 
	{ m_axi_bv2_AWLOCK sc_out sc_lv 2 signal 17 } 
	{ m_axi_bv2_AWCACHE sc_out sc_lv 4 signal 17 } 
	{ m_axi_bv2_AWPROT sc_out sc_lv 3 signal 17 } 
	{ m_axi_bv2_AWQOS sc_out sc_lv 4 signal 17 } 
	{ m_axi_bv2_AWREGION sc_out sc_lv 4 signal 17 } 
	{ m_axi_bv2_AWUSER sc_out sc_lv 1 signal 17 } 
	{ m_axi_bv2_WVALID sc_out sc_logic 1 signal 17 } 
	{ m_axi_bv2_WREADY sc_in sc_logic 1 signal 17 } 
	{ m_axi_bv2_WDATA sc_out sc_lv 128 signal 17 } 
	{ m_axi_bv2_WSTRB sc_out sc_lv 16 signal 17 } 
	{ m_axi_bv2_WLAST sc_out sc_logic 1 signal 17 } 
	{ m_axi_bv2_WID sc_out sc_lv 1 signal 17 } 
	{ m_axi_bv2_WUSER sc_out sc_lv 1 signal 17 } 
	{ m_axi_bv2_ARVALID sc_out sc_logic 1 signal 17 } 
	{ m_axi_bv2_ARREADY sc_in sc_logic 1 signal 17 } 
	{ m_axi_bv2_ARADDR sc_out sc_lv 64 signal 17 } 
	{ m_axi_bv2_ARID sc_out sc_lv 1 signal 17 } 
	{ m_axi_bv2_ARLEN sc_out sc_lv 8 signal 17 } 
	{ m_axi_bv2_ARSIZE sc_out sc_lv 3 signal 17 } 
	{ m_axi_bv2_ARBURST sc_out sc_lv 2 signal 17 } 
	{ m_axi_bv2_ARLOCK sc_out sc_lv 2 signal 17 } 
	{ m_axi_bv2_ARCACHE sc_out sc_lv 4 signal 17 } 
	{ m_axi_bv2_ARPROT sc_out sc_lv 3 signal 17 } 
	{ m_axi_bv2_ARQOS sc_out sc_lv 4 signal 17 } 
	{ m_axi_bv2_ARREGION sc_out sc_lv 4 signal 17 } 
	{ m_axi_bv2_ARUSER sc_out sc_lv 1 signal 17 } 
	{ m_axi_bv2_RVALID sc_in sc_logic 1 signal 17 } 
	{ m_axi_bv2_RREADY sc_out sc_logic 1 signal 17 } 
	{ m_axi_bv2_RDATA sc_in sc_lv 128 signal 17 } 
	{ m_axi_bv2_RLAST sc_in sc_logic 1 signal 17 } 
	{ m_axi_bv2_RID sc_in sc_lv 1 signal 17 } 
	{ m_axi_bv2_RUSER sc_in sc_lv 1 signal 17 } 
	{ m_axi_bv2_RRESP sc_in sc_lv 2 signal 17 } 
	{ m_axi_bv2_BVALID sc_in sc_logic 1 signal 17 } 
	{ m_axi_bv2_BREADY sc_out sc_logic 1 signal 17 } 
	{ m_axi_bv2_BRESP sc_in sc_lv 2 signal 17 } 
	{ m_axi_bv2_BID sc_in sc_lv 1 signal 17 } 
	{ m_axi_bv2_BUSER sc_in sc_lv 1 signal 17 } 
	{ m_axi_bv3_AWVALID sc_out sc_logic 1 signal 19 } 
	{ m_axi_bv3_AWREADY sc_in sc_logic 1 signal 19 } 
	{ m_axi_bv3_AWADDR sc_out sc_lv 64 signal 19 } 
	{ m_axi_bv3_AWID sc_out sc_lv 1 signal 19 } 
	{ m_axi_bv3_AWLEN sc_out sc_lv 8 signal 19 } 
	{ m_axi_bv3_AWSIZE sc_out sc_lv 3 signal 19 } 
	{ m_axi_bv3_AWBURST sc_out sc_lv 2 signal 19 } 
	{ m_axi_bv3_AWLOCK sc_out sc_lv 2 signal 19 } 
	{ m_axi_bv3_AWCACHE sc_out sc_lv 4 signal 19 } 
	{ m_axi_bv3_AWPROT sc_out sc_lv 3 signal 19 } 
	{ m_axi_bv3_AWQOS sc_out sc_lv 4 signal 19 } 
	{ m_axi_bv3_AWREGION sc_out sc_lv 4 signal 19 } 
	{ m_axi_bv3_AWUSER sc_out sc_lv 1 signal 19 } 
	{ m_axi_bv3_WVALID sc_out sc_logic 1 signal 19 } 
	{ m_axi_bv3_WREADY sc_in sc_logic 1 signal 19 } 
	{ m_axi_bv3_WDATA sc_out sc_lv 128 signal 19 } 
	{ m_axi_bv3_WSTRB sc_out sc_lv 16 signal 19 } 
	{ m_axi_bv3_WLAST sc_out sc_logic 1 signal 19 } 
	{ m_axi_bv3_WID sc_out sc_lv 1 signal 19 } 
	{ m_axi_bv3_WUSER sc_out sc_lv 1 signal 19 } 
	{ m_axi_bv3_ARVALID sc_out sc_logic 1 signal 19 } 
	{ m_axi_bv3_ARREADY sc_in sc_logic 1 signal 19 } 
	{ m_axi_bv3_ARADDR sc_out sc_lv 64 signal 19 } 
	{ m_axi_bv3_ARID sc_out sc_lv 1 signal 19 } 
	{ m_axi_bv3_ARLEN sc_out sc_lv 8 signal 19 } 
	{ m_axi_bv3_ARSIZE sc_out sc_lv 3 signal 19 } 
	{ m_axi_bv3_ARBURST sc_out sc_lv 2 signal 19 } 
	{ m_axi_bv3_ARLOCK sc_out sc_lv 2 signal 19 } 
	{ m_axi_bv3_ARCACHE sc_out sc_lv 4 signal 19 } 
	{ m_axi_bv3_ARPROT sc_out sc_lv 3 signal 19 } 
	{ m_axi_bv3_ARQOS sc_out sc_lv 4 signal 19 } 
	{ m_axi_bv3_ARREGION sc_out sc_lv 4 signal 19 } 
	{ m_axi_bv3_ARUSER sc_out sc_lv 1 signal 19 } 
	{ m_axi_bv3_RVALID sc_in sc_logic 1 signal 19 } 
	{ m_axi_bv3_RREADY sc_out sc_logic 1 signal 19 } 
	{ m_axi_bv3_RDATA sc_in sc_lv 128 signal 19 } 
	{ m_axi_bv3_RLAST sc_in sc_logic 1 signal 19 } 
	{ m_axi_bv3_RID sc_in sc_lv 1 signal 19 } 
	{ m_axi_bv3_RUSER sc_in sc_lv 1 signal 19 } 
	{ m_axi_bv3_RRESP sc_in sc_lv 2 signal 19 } 
	{ m_axi_bv3_BVALID sc_in sc_logic 1 signal 19 } 
	{ m_axi_bv3_BREADY sc_out sc_logic 1 signal 19 } 
	{ m_axi_bv3_BRESP sc_in sc_lv 2 signal 19 } 
	{ m_axi_bv3_BID sc_in sc_lv 1 signal 19 } 
	{ m_axi_bv3_BUSER sc_in sc_lv 1 signal 19 } 
	{ m_axi_bv4_AWVALID sc_out sc_logic 1 signal 21 } 
	{ m_axi_bv4_AWREADY sc_in sc_logic 1 signal 21 } 
	{ m_axi_bv4_AWADDR sc_out sc_lv 64 signal 21 } 
	{ m_axi_bv4_AWID sc_out sc_lv 1 signal 21 } 
	{ m_axi_bv4_AWLEN sc_out sc_lv 8 signal 21 } 
	{ m_axi_bv4_AWSIZE sc_out sc_lv 3 signal 21 } 
	{ m_axi_bv4_AWBURST sc_out sc_lv 2 signal 21 } 
	{ m_axi_bv4_AWLOCK sc_out sc_lv 2 signal 21 } 
	{ m_axi_bv4_AWCACHE sc_out sc_lv 4 signal 21 } 
	{ m_axi_bv4_AWPROT sc_out sc_lv 3 signal 21 } 
	{ m_axi_bv4_AWQOS sc_out sc_lv 4 signal 21 } 
	{ m_axi_bv4_AWREGION sc_out sc_lv 4 signal 21 } 
	{ m_axi_bv4_AWUSER sc_out sc_lv 1 signal 21 } 
	{ m_axi_bv4_WVALID sc_out sc_logic 1 signal 21 } 
	{ m_axi_bv4_WREADY sc_in sc_logic 1 signal 21 } 
	{ m_axi_bv4_WDATA sc_out sc_lv 128 signal 21 } 
	{ m_axi_bv4_WSTRB sc_out sc_lv 16 signal 21 } 
	{ m_axi_bv4_WLAST sc_out sc_logic 1 signal 21 } 
	{ m_axi_bv4_WID sc_out sc_lv 1 signal 21 } 
	{ m_axi_bv4_WUSER sc_out sc_lv 1 signal 21 } 
	{ m_axi_bv4_ARVALID sc_out sc_logic 1 signal 21 } 
	{ m_axi_bv4_ARREADY sc_in sc_logic 1 signal 21 } 
	{ m_axi_bv4_ARADDR sc_out sc_lv 64 signal 21 } 
	{ m_axi_bv4_ARID sc_out sc_lv 1 signal 21 } 
	{ m_axi_bv4_ARLEN sc_out sc_lv 8 signal 21 } 
	{ m_axi_bv4_ARSIZE sc_out sc_lv 3 signal 21 } 
	{ m_axi_bv4_ARBURST sc_out sc_lv 2 signal 21 } 
	{ m_axi_bv4_ARLOCK sc_out sc_lv 2 signal 21 } 
	{ m_axi_bv4_ARCACHE sc_out sc_lv 4 signal 21 } 
	{ m_axi_bv4_ARPROT sc_out sc_lv 3 signal 21 } 
	{ m_axi_bv4_ARQOS sc_out sc_lv 4 signal 21 } 
	{ m_axi_bv4_ARREGION sc_out sc_lv 4 signal 21 } 
	{ m_axi_bv4_ARUSER sc_out sc_lv 1 signal 21 } 
	{ m_axi_bv4_RVALID sc_in sc_logic 1 signal 21 } 
	{ m_axi_bv4_RREADY sc_out sc_logic 1 signal 21 } 
	{ m_axi_bv4_RDATA sc_in sc_lv 128 signal 21 } 
	{ m_axi_bv4_RLAST sc_in sc_logic 1 signal 21 } 
	{ m_axi_bv4_RID sc_in sc_lv 1 signal 21 } 
	{ m_axi_bv4_RUSER sc_in sc_lv 1 signal 21 } 
	{ m_axi_bv4_RRESP sc_in sc_lv 2 signal 21 } 
	{ m_axi_bv4_BVALID sc_in sc_logic 1 signal 21 } 
	{ m_axi_bv4_BREADY sc_out sc_logic 1 signal 21 } 
	{ m_axi_bv4_BRESP sc_in sc_lv 2 signal 21 } 
	{ m_axi_bv4_BID sc_in sc_lv 1 signal 21 } 
	{ m_axi_bv4_BUSER sc_in sc_lv 1 signal 21 } 
	{ m_axi_bval1_AWVALID sc_out sc_logic 1 signal 7 } 
	{ m_axi_bval1_AWREADY sc_in sc_logic 1 signal 7 } 
	{ m_axi_bval1_AWADDR sc_out sc_lv 64 signal 7 } 
	{ m_axi_bval1_AWID sc_out sc_lv 1 signal 7 } 
	{ m_axi_bval1_AWLEN sc_out sc_lv 8 signal 7 } 
	{ m_axi_bval1_AWSIZE sc_out sc_lv 3 signal 7 } 
	{ m_axi_bval1_AWBURST sc_out sc_lv 2 signal 7 } 
	{ m_axi_bval1_AWLOCK sc_out sc_lv 2 signal 7 } 
	{ m_axi_bval1_AWCACHE sc_out sc_lv 4 signal 7 } 
	{ m_axi_bval1_AWPROT sc_out sc_lv 3 signal 7 } 
	{ m_axi_bval1_AWQOS sc_out sc_lv 4 signal 7 } 
	{ m_axi_bval1_AWREGION sc_out sc_lv 4 signal 7 } 
	{ m_axi_bval1_AWUSER sc_out sc_lv 1 signal 7 } 
	{ m_axi_bval1_WVALID sc_out sc_logic 1 signal 7 } 
	{ m_axi_bval1_WREADY sc_in sc_logic 1 signal 7 } 
	{ m_axi_bval1_WDATA sc_out sc_lv 128 signal 7 } 
	{ m_axi_bval1_WSTRB sc_out sc_lv 16 signal 7 } 
	{ m_axi_bval1_WLAST sc_out sc_logic 1 signal 7 } 
	{ m_axi_bval1_WID sc_out sc_lv 1 signal 7 } 
	{ m_axi_bval1_WUSER sc_out sc_lv 1 signal 7 } 
	{ m_axi_bval1_ARVALID sc_out sc_logic 1 signal 7 } 
	{ m_axi_bval1_ARREADY sc_in sc_logic 1 signal 7 } 
	{ m_axi_bval1_ARADDR sc_out sc_lv 64 signal 7 } 
	{ m_axi_bval1_ARID sc_out sc_lv 1 signal 7 } 
	{ m_axi_bval1_ARLEN sc_out sc_lv 8 signal 7 } 
	{ m_axi_bval1_ARSIZE sc_out sc_lv 3 signal 7 } 
	{ m_axi_bval1_ARBURST sc_out sc_lv 2 signal 7 } 
	{ m_axi_bval1_ARLOCK sc_out sc_lv 2 signal 7 } 
	{ m_axi_bval1_ARCACHE sc_out sc_lv 4 signal 7 } 
	{ m_axi_bval1_ARPROT sc_out sc_lv 3 signal 7 } 
	{ m_axi_bval1_ARQOS sc_out sc_lv 4 signal 7 } 
	{ m_axi_bval1_ARREGION sc_out sc_lv 4 signal 7 } 
	{ m_axi_bval1_ARUSER sc_out sc_lv 1 signal 7 } 
	{ m_axi_bval1_RVALID sc_in sc_logic 1 signal 7 } 
	{ m_axi_bval1_RREADY sc_out sc_logic 1 signal 7 } 
	{ m_axi_bval1_RDATA sc_in sc_lv 128 signal 7 } 
	{ m_axi_bval1_RLAST sc_in sc_logic 1 signal 7 } 
	{ m_axi_bval1_RID sc_in sc_lv 1 signal 7 } 
	{ m_axi_bval1_RUSER sc_in sc_lv 1 signal 7 } 
	{ m_axi_bval1_RRESP sc_in sc_lv 2 signal 7 } 
	{ m_axi_bval1_BVALID sc_in sc_logic 1 signal 7 } 
	{ m_axi_bval1_BREADY sc_out sc_logic 1 signal 7 } 
	{ m_axi_bval1_BRESP sc_in sc_lv 2 signal 7 } 
	{ m_axi_bval1_BID sc_in sc_lv 1 signal 7 } 
	{ m_axi_bval1_BUSER sc_in sc_lv 1 signal 7 } 
	{ m_axi_bval2_AWVALID sc_out sc_logic 1 signal 9 } 
	{ m_axi_bval2_AWREADY sc_in sc_logic 1 signal 9 } 
	{ m_axi_bval2_AWADDR sc_out sc_lv 64 signal 9 } 
	{ m_axi_bval2_AWID sc_out sc_lv 1 signal 9 } 
	{ m_axi_bval2_AWLEN sc_out sc_lv 8 signal 9 } 
	{ m_axi_bval2_AWSIZE sc_out sc_lv 3 signal 9 } 
	{ m_axi_bval2_AWBURST sc_out sc_lv 2 signal 9 } 
	{ m_axi_bval2_AWLOCK sc_out sc_lv 2 signal 9 } 
	{ m_axi_bval2_AWCACHE sc_out sc_lv 4 signal 9 } 
	{ m_axi_bval2_AWPROT sc_out sc_lv 3 signal 9 } 
	{ m_axi_bval2_AWQOS sc_out sc_lv 4 signal 9 } 
	{ m_axi_bval2_AWREGION sc_out sc_lv 4 signal 9 } 
	{ m_axi_bval2_AWUSER sc_out sc_lv 1 signal 9 } 
	{ m_axi_bval2_WVALID sc_out sc_logic 1 signal 9 } 
	{ m_axi_bval2_WREADY sc_in sc_logic 1 signal 9 } 
	{ m_axi_bval2_WDATA sc_out sc_lv 128 signal 9 } 
	{ m_axi_bval2_WSTRB sc_out sc_lv 16 signal 9 } 
	{ m_axi_bval2_WLAST sc_out sc_logic 1 signal 9 } 
	{ m_axi_bval2_WID sc_out sc_lv 1 signal 9 } 
	{ m_axi_bval2_WUSER sc_out sc_lv 1 signal 9 } 
	{ m_axi_bval2_ARVALID sc_out sc_logic 1 signal 9 } 
	{ m_axi_bval2_ARREADY sc_in sc_logic 1 signal 9 } 
	{ m_axi_bval2_ARADDR sc_out sc_lv 64 signal 9 } 
	{ m_axi_bval2_ARID sc_out sc_lv 1 signal 9 } 
	{ m_axi_bval2_ARLEN sc_out sc_lv 8 signal 9 } 
	{ m_axi_bval2_ARSIZE sc_out sc_lv 3 signal 9 } 
	{ m_axi_bval2_ARBURST sc_out sc_lv 2 signal 9 } 
	{ m_axi_bval2_ARLOCK sc_out sc_lv 2 signal 9 } 
	{ m_axi_bval2_ARCACHE sc_out sc_lv 4 signal 9 } 
	{ m_axi_bval2_ARPROT sc_out sc_lv 3 signal 9 } 
	{ m_axi_bval2_ARQOS sc_out sc_lv 4 signal 9 } 
	{ m_axi_bval2_ARREGION sc_out sc_lv 4 signal 9 } 
	{ m_axi_bval2_ARUSER sc_out sc_lv 1 signal 9 } 
	{ m_axi_bval2_RVALID sc_in sc_logic 1 signal 9 } 
	{ m_axi_bval2_RREADY sc_out sc_logic 1 signal 9 } 
	{ m_axi_bval2_RDATA sc_in sc_lv 128 signal 9 } 
	{ m_axi_bval2_RLAST sc_in sc_logic 1 signal 9 } 
	{ m_axi_bval2_RID sc_in sc_lv 1 signal 9 } 
	{ m_axi_bval2_RUSER sc_in sc_lv 1 signal 9 } 
	{ m_axi_bval2_RRESP sc_in sc_lv 2 signal 9 } 
	{ m_axi_bval2_BVALID sc_in sc_logic 1 signal 9 } 
	{ m_axi_bval2_BREADY sc_out sc_logic 1 signal 9 } 
	{ m_axi_bval2_BRESP sc_in sc_lv 2 signal 9 } 
	{ m_axi_bval2_BID sc_in sc_lv 1 signal 9 } 
	{ m_axi_bval2_BUSER sc_in sc_lv 1 signal 9 } 
	{ m_axi_bval3_AWVALID sc_out sc_logic 1 signal 11 } 
	{ m_axi_bval3_AWREADY sc_in sc_logic 1 signal 11 } 
	{ m_axi_bval3_AWADDR sc_out sc_lv 64 signal 11 } 
	{ m_axi_bval3_AWID sc_out sc_lv 1 signal 11 } 
	{ m_axi_bval3_AWLEN sc_out sc_lv 8 signal 11 } 
	{ m_axi_bval3_AWSIZE sc_out sc_lv 3 signal 11 } 
	{ m_axi_bval3_AWBURST sc_out sc_lv 2 signal 11 } 
	{ m_axi_bval3_AWLOCK sc_out sc_lv 2 signal 11 } 
	{ m_axi_bval3_AWCACHE sc_out sc_lv 4 signal 11 } 
	{ m_axi_bval3_AWPROT sc_out sc_lv 3 signal 11 } 
	{ m_axi_bval3_AWQOS sc_out sc_lv 4 signal 11 } 
	{ m_axi_bval3_AWREGION sc_out sc_lv 4 signal 11 } 
	{ m_axi_bval3_AWUSER sc_out sc_lv 1 signal 11 } 
	{ m_axi_bval3_WVALID sc_out sc_logic 1 signal 11 } 
	{ m_axi_bval3_WREADY sc_in sc_logic 1 signal 11 } 
	{ m_axi_bval3_WDATA sc_out sc_lv 128 signal 11 } 
	{ m_axi_bval3_WSTRB sc_out sc_lv 16 signal 11 } 
	{ m_axi_bval3_WLAST sc_out sc_logic 1 signal 11 } 
	{ m_axi_bval3_WID sc_out sc_lv 1 signal 11 } 
	{ m_axi_bval3_WUSER sc_out sc_lv 1 signal 11 } 
	{ m_axi_bval3_ARVALID sc_out sc_logic 1 signal 11 } 
	{ m_axi_bval3_ARREADY sc_in sc_logic 1 signal 11 } 
	{ m_axi_bval3_ARADDR sc_out sc_lv 64 signal 11 } 
	{ m_axi_bval3_ARID sc_out sc_lv 1 signal 11 } 
	{ m_axi_bval3_ARLEN sc_out sc_lv 8 signal 11 } 
	{ m_axi_bval3_ARSIZE sc_out sc_lv 3 signal 11 } 
	{ m_axi_bval3_ARBURST sc_out sc_lv 2 signal 11 } 
	{ m_axi_bval3_ARLOCK sc_out sc_lv 2 signal 11 } 
	{ m_axi_bval3_ARCACHE sc_out sc_lv 4 signal 11 } 
	{ m_axi_bval3_ARPROT sc_out sc_lv 3 signal 11 } 
	{ m_axi_bval3_ARQOS sc_out sc_lv 4 signal 11 } 
	{ m_axi_bval3_ARREGION sc_out sc_lv 4 signal 11 } 
	{ m_axi_bval3_ARUSER sc_out sc_lv 1 signal 11 } 
	{ m_axi_bval3_RVALID sc_in sc_logic 1 signal 11 } 
	{ m_axi_bval3_RREADY sc_out sc_logic 1 signal 11 } 
	{ m_axi_bval3_RDATA sc_in sc_lv 128 signal 11 } 
	{ m_axi_bval3_RLAST sc_in sc_logic 1 signal 11 } 
	{ m_axi_bval3_RID sc_in sc_lv 1 signal 11 } 
	{ m_axi_bval3_RUSER sc_in sc_lv 1 signal 11 } 
	{ m_axi_bval3_RRESP sc_in sc_lv 2 signal 11 } 
	{ m_axi_bval3_BVALID sc_in sc_logic 1 signal 11 } 
	{ m_axi_bval3_BREADY sc_out sc_logic 1 signal 11 } 
	{ m_axi_bval3_BRESP sc_in sc_lv 2 signal 11 } 
	{ m_axi_bval3_BID sc_in sc_lv 1 signal 11 } 
	{ m_axi_bval3_BUSER sc_in sc_lv 1 signal 11 } 
	{ m_axi_bval4_AWVALID sc_out sc_logic 1 signal 13 } 
	{ m_axi_bval4_AWREADY sc_in sc_logic 1 signal 13 } 
	{ m_axi_bval4_AWADDR sc_out sc_lv 64 signal 13 } 
	{ m_axi_bval4_AWID sc_out sc_lv 1 signal 13 } 
	{ m_axi_bval4_AWLEN sc_out sc_lv 8 signal 13 } 
	{ m_axi_bval4_AWSIZE sc_out sc_lv 3 signal 13 } 
	{ m_axi_bval4_AWBURST sc_out sc_lv 2 signal 13 } 
	{ m_axi_bval4_AWLOCK sc_out sc_lv 2 signal 13 } 
	{ m_axi_bval4_AWCACHE sc_out sc_lv 4 signal 13 } 
	{ m_axi_bval4_AWPROT sc_out sc_lv 3 signal 13 } 
	{ m_axi_bval4_AWQOS sc_out sc_lv 4 signal 13 } 
	{ m_axi_bval4_AWREGION sc_out sc_lv 4 signal 13 } 
	{ m_axi_bval4_AWUSER sc_out sc_lv 1 signal 13 } 
	{ m_axi_bval4_WVALID sc_out sc_logic 1 signal 13 } 
	{ m_axi_bval4_WREADY sc_in sc_logic 1 signal 13 } 
	{ m_axi_bval4_WDATA sc_out sc_lv 128 signal 13 } 
	{ m_axi_bval4_WSTRB sc_out sc_lv 16 signal 13 } 
	{ m_axi_bval4_WLAST sc_out sc_logic 1 signal 13 } 
	{ m_axi_bval4_WID sc_out sc_lv 1 signal 13 } 
	{ m_axi_bval4_WUSER sc_out sc_lv 1 signal 13 } 
	{ m_axi_bval4_ARVALID sc_out sc_logic 1 signal 13 } 
	{ m_axi_bval4_ARREADY sc_in sc_logic 1 signal 13 } 
	{ m_axi_bval4_ARADDR sc_out sc_lv 64 signal 13 } 
	{ m_axi_bval4_ARID sc_out sc_lv 1 signal 13 } 
	{ m_axi_bval4_ARLEN sc_out sc_lv 8 signal 13 } 
	{ m_axi_bval4_ARSIZE sc_out sc_lv 3 signal 13 } 
	{ m_axi_bval4_ARBURST sc_out sc_lv 2 signal 13 } 
	{ m_axi_bval4_ARLOCK sc_out sc_lv 2 signal 13 } 
	{ m_axi_bval4_ARCACHE sc_out sc_lv 4 signal 13 } 
	{ m_axi_bval4_ARPROT sc_out sc_lv 3 signal 13 } 
	{ m_axi_bval4_ARQOS sc_out sc_lv 4 signal 13 } 
	{ m_axi_bval4_ARREGION sc_out sc_lv 4 signal 13 } 
	{ m_axi_bval4_ARUSER sc_out sc_lv 1 signal 13 } 
	{ m_axi_bval4_RVALID sc_in sc_logic 1 signal 13 } 
	{ m_axi_bval4_RREADY sc_out sc_logic 1 signal 13 } 
	{ m_axi_bval4_RDATA sc_in sc_lv 128 signal 13 } 
	{ m_axi_bval4_RLAST sc_in sc_logic 1 signal 13 } 
	{ m_axi_bval4_RID sc_in sc_lv 1 signal 13 } 
	{ m_axi_bval4_RUSER sc_in sc_lv 1 signal 13 } 
	{ m_axi_bval4_RRESP sc_in sc_lv 2 signal 13 } 
	{ m_axi_bval4_BVALID sc_in sc_logic 1 signal 13 } 
	{ m_axi_bval4_BREADY sc_out sc_logic 1 signal 13 } 
	{ m_axi_bval4_BRESP sc_in sc_lv 2 signal 13 } 
	{ m_axi_bval4_BID sc_in sc_lv 1 signal 13 } 
	{ m_axi_bval4_BUSER sc_in sc_lv 1 signal 13 } 
	{ m_axi_ccid_AWVALID sc_out sc_logic 1 signal 24 } 
	{ m_axi_ccid_AWREADY sc_in sc_logic 1 signal 24 } 
	{ m_axi_ccid_AWADDR sc_out sc_lv 64 signal 24 } 
	{ m_axi_ccid_AWID sc_out sc_lv 1 signal 24 } 
	{ m_axi_ccid_AWLEN sc_out sc_lv 8 signal 24 } 
	{ m_axi_ccid_AWSIZE sc_out sc_lv 3 signal 24 } 
	{ m_axi_ccid_AWBURST sc_out sc_lv 2 signal 24 } 
	{ m_axi_ccid_AWLOCK sc_out sc_lv 2 signal 24 } 
	{ m_axi_ccid_AWCACHE sc_out sc_lv 4 signal 24 } 
	{ m_axi_ccid_AWPROT sc_out sc_lv 3 signal 24 } 
	{ m_axi_ccid_AWQOS sc_out sc_lv 4 signal 24 } 
	{ m_axi_ccid_AWREGION sc_out sc_lv 4 signal 24 } 
	{ m_axi_ccid_AWUSER sc_out sc_lv 1 signal 24 } 
	{ m_axi_ccid_WVALID sc_out sc_logic 1 signal 24 } 
	{ m_axi_ccid_WREADY sc_in sc_logic 1 signal 24 } 
	{ m_axi_ccid_WDATA sc_out sc_lv 32 signal 24 } 
	{ m_axi_ccid_WSTRB sc_out sc_lv 4 signal 24 } 
	{ m_axi_ccid_WLAST sc_out sc_logic 1 signal 24 } 
	{ m_axi_ccid_WID sc_out sc_lv 1 signal 24 } 
	{ m_axi_ccid_WUSER sc_out sc_lv 1 signal 24 } 
	{ m_axi_ccid_ARVALID sc_out sc_logic 1 signal 24 } 
	{ m_axi_ccid_ARREADY sc_in sc_logic 1 signal 24 } 
	{ m_axi_ccid_ARADDR sc_out sc_lv 64 signal 24 } 
	{ m_axi_ccid_ARID sc_out sc_lv 1 signal 24 } 
	{ m_axi_ccid_ARLEN sc_out sc_lv 8 signal 24 } 
	{ m_axi_ccid_ARSIZE sc_out sc_lv 3 signal 24 } 
	{ m_axi_ccid_ARBURST sc_out sc_lv 2 signal 24 } 
	{ m_axi_ccid_ARLOCK sc_out sc_lv 2 signal 24 } 
	{ m_axi_ccid_ARCACHE sc_out sc_lv 4 signal 24 } 
	{ m_axi_ccid_ARPROT sc_out sc_lv 3 signal 24 } 
	{ m_axi_ccid_ARQOS sc_out sc_lv 4 signal 24 } 
	{ m_axi_ccid_ARREGION sc_out sc_lv 4 signal 24 } 
	{ m_axi_ccid_ARUSER sc_out sc_lv 1 signal 24 } 
	{ m_axi_ccid_RVALID sc_in sc_logic 1 signal 24 } 
	{ m_axi_ccid_RREADY sc_out sc_logic 1 signal 24 } 
	{ m_axi_ccid_RDATA sc_in sc_lv 32 signal 24 } 
	{ m_axi_ccid_RLAST sc_in sc_logic 1 signal 24 } 
	{ m_axi_ccid_RID sc_in sc_lv 1 signal 24 } 
	{ m_axi_ccid_RUSER sc_in sc_lv 1 signal 24 } 
	{ m_axi_ccid_RRESP sc_in sc_lv 2 signal 24 } 
	{ m_axi_ccid_BVALID sc_in sc_logic 1 signal 24 } 
	{ m_axi_ccid_BREADY sc_out sc_logic 1 signal 24 } 
	{ m_axi_ccid_BRESP sc_in sc_lv 2 signal 24 } 
	{ m_axi_ccid_BID sc_in sc_lv 1 signal 24 } 
	{ m_axi_ccid_BUSER sc_in sc_lv 1 signal 24 } 
	{ m_axi_crcsr_AWVALID sc_out sc_logic 1 signal 23 } 
	{ m_axi_crcsr_AWREADY sc_in sc_logic 1 signal 23 } 
	{ m_axi_crcsr_AWADDR sc_out sc_lv 64 signal 23 } 
	{ m_axi_crcsr_AWID sc_out sc_lv 1 signal 23 } 
	{ m_axi_crcsr_AWLEN sc_out sc_lv 8 signal 23 } 
	{ m_axi_crcsr_AWSIZE sc_out sc_lv 3 signal 23 } 
	{ m_axi_crcsr_AWBURST sc_out sc_lv 2 signal 23 } 
	{ m_axi_crcsr_AWLOCK sc_out sc_lv 2 signal 23 } 
	{ m_axi_crcsr_AWCACHE sc_out sc_lv 4 signal 23 } 
	{ m_axi_crcsr_AWPROT sc_out sc_lv 3 signal 23 } 
	{ m_axi_crcsr_AWQOS sc_out sc_lv 4 signal 23 } 
	{ m_axi_crcsr_AWREGION sc_out sc_lv 4 signal 23 } 
	{ m_axi_crcsr_AWUSER sc_out sc_lv 1 signal 23 } 
	{ m_axi_crcsr_WVALID sc_out sc_logic 1 signal 23 } 
	{ m_axi_crcsr_WREADY sc_in sc_logic 1 signal 23 } 
	{ m_axi_crcsr_WDATA sc_out sc_lv 32 signal 23 } 
	{ m_axi_crcsr_WSTRB sc_out sc_lv 4 signal 23 } 
	{ m_axi_crcsr_WLAST sc_out sc_logic 1 signal 23 } 
	{ m_axi_crcsr_WID sc_out sc_lv 1 signal 23 } 
	{ m_axi_crcsr_WUSER sc_out sc_lv 1 signal 23 } 
	{ m_axi_crcsr_ARVALID sc_out sc_logic 1 signal 23 } 
	{ m_axi_crcsr_ARREADY sc_in sc_logic 1 signal 23 } 
	{ m_axi_crcsr_ARADDR sc_out sc_lv 64 signal 23 } 
	{ m_axi_crcsr_ARID sc_out sc_lv 1 signal 23 } 
	{ m_axi_crcsr_ARLEN sc_out sc_lv 8 signal 23 } 
	{ m_axi_crcsr_ARSIZE sc_out sc_lv 3 signal 23 } 
	{ m_axi_crcsr_ARBURST sc_out sc_lv 2 signal 23 } 
	{ m_axi_crcsr_ARLOCK sc_out sc_lv 2 signal 23 } 
	{ m_axi_crcsr_ARCACHE sc_out sc_lv 4 signal 23 } 
	{ m_axi_crcsr_ARPROT sc_out sc_lv 3 signal 23 } 
	{ m_axi_crcsr_ARQOS sc_out sc_lv 4 signal 23 } 
	{ m_axi_crcsr_ARREGION sc_out sc_lv 4 signal 23 } 
	{ m_axi_crcsr_ARUSER sc_out sc_lv 1 signal 23 } 
	{ m_axi_crcsr_RVALID sc_in sc_logic 1 signal 23 } 
	{ m_axi_crcsr_RREADY sc_out sc_logic 1 signal 23 } 
	{ m_axi_crcsr_RDATA sc_in sc_lv 32 signal 23 } 
	{ m_axi_crcsr_RLAST sc_in sc_logic 1 signal 23 } 
	{ m_axi_crcsr_RID sc_in sc_lv 1 signal 23 } 
	{ m_axi_crcsr_RUSER sc_in sc_lv 1 signal 23 } 
	{ m_axi_crcsr_RRESP sc_in sc_lv 2 signal 23 } 
	{ m_axi_crcsr_BVALID sc_in sc_logic 1 signal 23 } 
	{ m_axi_crcsr_BREADY sc_out sc_logic 1 signal 23 } 
	{ m_axi_crcsr_BRESP sc_in sc_lv 2 signal 23 } 
	{ m_axi_crcsr_BID sc_in sc_lv 1 signal 23 } 
	{ m_axi_crcsr_BUSER sc_in sc_lv 1 signal 23 } 
	{ m_axi_cval_AWVALID sc_out sc_logic 1 signal 25 } 
	{ m_axi_cval_AWREADY sc_in sc_logic 1 signal 25 } 
	{ m_axi_cval_AWADDR sc_out sc_lv 64 signal 25 } 
	{ m_axi_cval_AWID sc_out sc_lv 1 signal 25 } 
	{ m_axi_cval_AWLEN sc_out sc_lv 8 signal 25 } 
	{ m_axi_cval_AWSIZE sc_out sc_lv 3 signal 25 } 
	{ m_axi_cval_AWBURST sc_out sc_lv 2 signal 25 } 
	{ m_axi_cval_AWLOCK sc_out sc_lv 2 signal 25 } 
	{ m_axi_cval_AWCACHE sc_out sc_lv 4 signal 25 } 
	{ m_axi_cval_AWPROT sc_out sc_lv 3 signal 25 } 
	{ m_axi_cval_AWQOS sc_out sc_lv 4 signal 25 } 
	{ m_axi_cval_AWREGION sc_out sc_lv 4 signal 25 } 
	{ m_axi_cval_AWUSER sc_out sc_lv 1 signal 25 } 
	{ m_axi_cval_WVALID sc_out sc_logic 1 signal 25 } 
	{ m_axi_cval_WREADY sc_in sc_logic 1 signal 25 } 
	{ m_axi_cval_WDATA sc_out sc_lv 32 signal 25 } 
	{ m_axi_cval_WSTRB sc_out sc_lv 4 signal 25 } 
	{ m_axi_cval_WLAST sc_out sc_logic 1 signal 25 } 
	{ m_axi_cval_WID sc_out sc_lv 1 signal 25 } 
	{ m_axi_cval_WUSER sc_out sc_lv 1 signal 25 } 
	{ m_axi_cval_ARVALID sc_out sc_logic 1 signal 25 } 
	{ m_axi_cval_ARREADY sc_in sc_logic 1 signal 25 } 
	{ m_axi_cval_ARADDR sc_out sc_lv 64 signal 25 } 
	{ m_axi_cval_ARID sc_out sc_lv 1 signal 25 } 
	{ m_axi_cval_ARLEN sc_out sc_lv 8 signal 25 } 
	{ m_axi_cval_ARSIZE sc_out sc_lv 3 signal 25 } 
	{ m_axi_cval_ARBURST sc_out sc_lv 2 signal 25 } 
	{ m_axi_cval_ARLOCK sc_out sc_lv 2 signal 25 } 
	{ m_axi_cval_ARCACHE sc_out sc_lv 4 signal 25 } 
	{ m_axi_cval_ARPROT sc_out sc_lv 3 signal 25 } 
	{ m_axi_cval_ARQOS sc_out sc_lv 4 signal 25 } 
	{ m_axi_cval_ARREGION sc_out sc_lv 4 signal 25 } 
	{ m_axi_cval_ARUSER sc_out sc_lv 1 signal 25 } 
	{ m_axi_cval_RVALID sc_in sc_logic 1 signal 25 } 
	{ m_axi_cval_RREADY sc_out sc_logic 1 signal 25 } 
	{ m_axi_cval_RDATA sc_in sc_lv 32 signal 25 } 
	{ m_axi_cval_RLAST sc_in sc_logic 1 signal 25 } 
	{ m_axi_cval_RID sc_in sc_lv 1 signal 25 } 
	{ m_axi_cval_RUSER sc_in sc_lv 1 signal 25 } 
	{ m_axi_cval_RRESP sc_in sc_lv 2 signal 25 } 
	{ m_axi_cval_BVALID sc_in sc_logic 1 signal 25 } 
	{ m_axi_cval_BREADY sc_out sc_logic 1 signal 25 } 
	{ m_axi_cval_BRESP sc_in sc_lv 2 signal 25 } 
	{ m_axi_cval_BID sc_in sc_lv 1 signal 25 } 
	{ m_axi_cval_BUSER sc_in sc_lv 1 signal 25 } 
}
set NewPortList {[ 
	{ "name": "s_axi_control_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "control", "role": "AWADDR" },"address":[{"name":"A_rcsr","role":"data","value":"16"},{"name":"A_cid","role":"data","value":"28"},{"name":"A_val","role":"data","value":"40"},{"name":"B_rcsr1","role":"data","value":"52"},{"name":"B_rcsr2","role":"data","value":"64"},{"name":"B_rcsr3","role":"data","value":"76"},{"name":"B_rcsr4","role":"data","value":"88"},{"name":"B_val1","role":"data","value":"100"},{"name":"B_cid1","role":"data","value":"112"},{"name":"B_val2","role":"data","value":"124"},{"name":"B_cid2","role":"data","value":"136"},{"name":"B_val3","role":"data","value":"148"},{"name":"B_cid3","role":"data","value":"160"},{"name":"B_val4","role":"data","value":"172"},{"name":"B_cid4","role":"data","value":"184"},{"name":"B_val_port1","role":"data","value":"196"},{"name":"B_cid_port1","role":"data","value":"208"},{"name":"B_val_port2","role":"data","value":"220"},{"name":"B_cid_port2","role":"data","value":"232"},{"name":"B_val_port3","role":"data","value":"244"},{"name":"B_cid_port3","role":"data","value":"256"},{"name":"B_val_port4","role":"data","value":"268"},{"name":"B_cid_port4","role":"data","value":"280"},{"name":"C_rcsr","role":"data","value":"292"},{"name":"C_cid","role":"data","value":"304"},{"name":"C_val","role":"data","value":"316"}] },
	{ "name": "s_axi_control_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "AWVALID" } },
	{ "name": "s_axi_control_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "AWREADY" } },
	{ "name": "s_axi_control_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "WVALID" } },
	{ "name": "s_axi_control_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "WREADY" } },
	{ "name": "s_axi_control_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "control", "role": "WDATA" } },
	{ "name": "s_axi_control_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "control", "role": "WSTRB" } },
	{ "name": "s_axi_control_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "control", "role": "ARADDR" },"address":[] },
	{ "name": "s_axi_control_ARVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "ARVALID" } },
	{ "name": "s_axi_control_ARREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "ARREADY" } },
	{ "name": "s_axi_control_RVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "RVALID" } },
	{ "name": "s_axi_control_RREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "RREADY" } },
	{ "name": "s_axi_control_RDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "control", "role": "RDATA" } },
	{ "name": "s_axi_control_RRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "control", "role": "RRESP" } },
	{ "name": "s_axi_control_BVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "BVALID" } },
	{ "name": "s_axi_control_BREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "BREADY" } },
	{ "name": "s_axi_control_BRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "control", "role": "BRESP" } },
	{ "name": "s_axi_ctr_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "ctr", "role": "AWADDR" },"address":[{"name":"spmm","role":"start","value":"0","valid_bit":"0"},{"name":"spmm","role":"continue","value":"0","valid_bit":"4"},{"name":"spmm","role":"auto_start","value":"0","valid_bit":"7"},{"name":"arnum","role":"data","value":"16"},{"name":"atnum","role":"data","value":"24"},{"name":"brnum","role":"data","value":"32"},{"name":"btnum","role":"data","value":"40"},{"name":"B_rcsr_base","role":"data","value":"48"},{"name":"B_val_base","role":"data","value":"56"},{"name":"B_cid_base","role":"data","value":"64"},{"name":"r5acc","role":"data","value":"200"},{"name":"r5hit","role":"data","value":"208"},{"name":"r6acc","role":"data","value":"216"},{"name":"r6hit","role":"data","value":"224"},{"name":"r7acc","role":"data","value":"232"},{"name":"r7hit","role":"data","value":"240"},{"name":"r8acc","role":"data","value":"248"},{"name":"r8hit","role":"data","value":"256"},{"name":"vc5acc","role":"data","value":"392"},{"name":"vc5hit","role":"data","value":"400"},{"name":"vc6acc","role":"data","value":"408"},{"name":"vc6hit","role":"data","value":"416"},{"name":"vc7acc","role":"data","value":"424"},{"name":"vc7hit","role":"data","value":"432"},{"name":"vc8acc","role":"data","value":"440"},{"name":"vc8hit","role":"data","value":"448"}] },
	{ "name": "s_axi_ctr_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctr", "role": "AWVALID" } },
	{ "name": "s_axi_ctr_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctr", "role": "AWREADY" } },
	{ "name": "s_axi_ctr_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctr", "role": "WVALID" } },
	{ "name": "s_axi_ctr_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctr", "role": "WREADY" } },
	{ "name": "s_axi_ctr_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ctr", "role": "WDATA" } },
	{ "name": "s_axi_ctr_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "ctr", "role": "WSTRB" } },
	{ "name": "s_axi_ctr_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "ctr", "role": "ARADDR" },"address":[{"name":"spmm","role":"start","value":"0","valid_bit":"0"},{"name":"spmm","role":"done","value":"0","valid_bit":"1"},{"name":"spmm","role":"idle","value":"0","valid_bit":"2"},{"name":"spmm","role":"ready","value":"0","valid_bit":"3"},{"name":"spmm","role":"auto_start","value":"0","valid_bit":"7"},{"name":"r1acc","role":"data","value":"72"}, {"name":"r1acc","role":"valid","value":"76","valid_bit":"0"},{"name":"r1hit","role":"data","value":"88"}, {"name":"r1hit","role":"valid","value":"92","valid_bit":"0"},{"name":"r2acc","role":"data","value":"104"}, {"name":"r2acc","role":"valid","value":"108","valid_bit":"0"},{"name":"r2hit","role":"data","value":"120"}, {"name":"r2hit","role":"valid","value":"124","valid_bit":"0"},{"name":"r3acc","role":"data","value":"136"}, {"name":"r3acc","role":"valid","value":"140","valid_bit":"0"},{"name":"r3hit","role":"data","value":"152"}, {"name":"r3hit","role":"valid","value":"156","valid_bit":"0"},{"name":"r4acc","role":"data","value":"168"}, {"name":"r4acc","role":"valid","value":"172","valid_bit":"0"},{"name":"r4hit","role":"data","value":"184"}, {"name":"r4hit","role":"valid","value":"188","valid_bit":"0"},{"name":"vc1acc","role":"data","value":"264"}, {"name":"vc1acc","role":"valid","value":"268","valid_bit":"0"},{"name":"vc1hit","role":"data","value":"280"}, {"name":"vc1hit","role":"valid","value":"284","valid_bit":"0"},{"name":"vc2acc","role":"data","value":"296"}, {"name":"vc2acc","role":"valid","value":"300","valid_bit":"0"},{"name":"vc2hit","role":"data","value":"312"}, {"name":"vc2hit","role":"valid","value":"316","valid_bit":"0"},{"name":"vc3acc","role":"data","value":"328"}, {"name":"vc3acc","role":"valid","value":"332","valid_bit":"0"},{"name":"vc3hit","role":"data","value":"344"}, {"name":"vc3hit","role":"valid","value":"348","valid_bit":"0"},{"name":"vc4acc","role":"data","value":"360"}, {"name":"vc4acc","role":"valid","value":"364","valid_bit":"0"},{"name":"vc4hit","role":"data","value":"376"}, {"name":"vc4hit","role":"valid","value":"380","valid_bit":"0"},{"name":"fnum","role":"data","value":"456"}, {"name":"fnum","role":"valid","value":"460","valid_bit":"0"},{"name":"workload_counter1","role":"data","value":"472"}, {"name":"workload_counter1","role":"valid","value":"476","valid_bit":"0"},{"name":"workload_counter2","role":"data","value":"488"}, {"name":"workload_counter2","role":"valid","value":"492","valid_bit":"0"},{"name":"workload_counter3","role":"data","value":"504"}, {"name":"workload_counter3","role":"valid","value":"508","valid_bit":"0"},{"name":"workload_counter4","role":"data","value":"520"}, {"name":"workload_counter4","role":"valid","value":"524","valid_bit":"0"}] },
	{ "name": "s_axi_ctr_ARVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctr", "role": "ARVALID" } },
	{ "name": "s_axi_ctr_ARREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctr", "role": "ARREADY" } },
	{ "name": "s_axi_ctr_RVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctr", "role": "RVALID" } },
	{ "name": "s_axi_ctr_RREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctr", "role": "RREADY" } },
	{ "name": "s_axi_ctr_RDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ctr", "role": "RDATA" } },
	{ "name": "s_axi_ctr_RRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "ctr", "role": "RRESP" } },
	{ "name": "s_axi_ctr_BVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctr", "role": "BVALID" } },
	{ "name": "s_axi_ctr_BREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctr", "role": "BREADY" } },
	{ "name": "s_axi_ctr_BRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "ctr", "role": "BRESP" } },
	{ "name": "interrupt", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctr", "role": "interrupt" } }, 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "m_axi_acid_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acid", "role": "AWVALID" }} , 
 	{ "name": "m_axi_acid_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acid", "role": "AWREADY" }} , 
 	{ "name": "m_axi_acid_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "acid", "role": "AWADDR" }} , 
 	{ "name": "m_axi_acid_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "acid", "role": "AWID" }} , 
 	{ "name": "m_axi_acid_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "acid", "role": "AWLEN" }} , 
 	{ "name": "m_axi_acid_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "acid", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_acid_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "acid", "role": "AWBURST" }} , 
 	{ "name": "m_axi_acid_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "acid", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_acid_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "acid", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_acid_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "acid", "role": "AWPROT" }} , 
 	{ "name": "m_axi_acid_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "acid", "role": "AWQOS" }} , 
 	{ "name": "m_axi_acid_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "acid", "role": "AWREGION" }} , 
 	{ "name": "m_axi_acid_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "acid", "role": "AWUSER" }} , 
 	{ "name": "m_axi_acid_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acid", "role": "WVALID" }} , 
 	{ "name": "m_axi_acid_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acid", "role": "WREADY" }} , 
 	{ "name": "m_axi_acid_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "acid", "role": "WDATA" }} , 
 	{ "name": "m_axi_acid_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "acid", "role": "WSTRB" }} , 
 	{ "name": "m_axi_acid_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acid", "role": "WLAST" }} , 
 	{ "name": "m_axi_acid_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "acid", "role": "WID" }} , 
 	{ "name": "m_axi_acid_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "acid", "role": "WUSER" }} , 
 	{ "name": "m_axi_acid_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acid", "role": "ARVALID" }} , 
 	{ "name": "m_axi_acid_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acid", "role": "ARREADY" }} , 
 	{ "name": "m_axi_acid_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "acid", "role": "ARADDR" }} , 
 	{ "name": "m_axi_acid_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "acid", "role": "ARID" }} , 
 	{ "name": "m_axi_acid_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "acid", "role": "ARLEN" }} , 
 	{ "name": "m_axi_acid_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "acid", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_acid_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "acid", "role": "ARBURST" }} , 
 	{ "name": "m_axi_acid_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "acid", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_acid_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "acid", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_acid_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "acid", "role": "ARPROT" }} , 
 	{ "name": "m_axi_acid_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "acid", "role": "ARQOS" }} , 
 	{ "name": "m_axi_acid_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "acid", "role": "ARREGION" }} , 
 	{ "name": "m_axi_acid_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "acid", "role": "ARUSER" }} , 
 	{ "name": "m_axi_acid_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acid", "role": "RVALID" }} , 
 	{ "name": "m_axi_acid_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acid", "role": "RREADY" }} , 
 	{ "name": "m_axi_acid_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "acid", "role": "RDATA" }} , 
 	{ "name": "m_axi_acid_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acid", "role": "RLAST" }} , 
 	{ "name": "m_axi_acid_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "acid", "role": "RID" }} , 
 	{ "name": "m_axi_acid_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "acid", "role": "RUSER" }} , 
 	{ "name": "m_axi_acid_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "acid", "role": "RRESP" }} , 
 	{ "name": "m_axi_acid_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acid", "role": "BVALID" }} , 
 	{ "name": "m_axi_acid_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acid", "role": "BREADY" }} , 
 	{ "name": "m_axi_acid_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "acid", "role": "BRESP" }} , 
 	{ "name": "m_axi_acid_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "acid", "role": "BID" }} , 
 	{ "name": "m_axi_acid_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "acid", "role": "BUSER" }} , 
 	{ "name": "m_axi_arcsr_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "arcsr", "role": "AWVALID" }} , 
 	{ "name": "m_axi_arcsr_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "arcsr", "role": "AWREADY" }} , 
 	{ "name": "m_axi_arcsr_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "arcsr", "role": "AWADDR" }} , 
 	{ "name": "m_axi_arcsr_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "arcsr", "role": "AWID" }} , 
 	{ "name": "m_axi_arcsr_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "arcsr", "role": "AWLEN" }} , 
 	{ "name": "m_axi_arcsr_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "arcsr", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_arcsr_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "arcsr", "role": "AWBURST" }} , 
 	{ "name": "m_axi_arcsr_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "arcsr", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_arcsr_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "arcsr", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_arcsr_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "arcsr", "role": "AWPROT" }} , 
 	{ "name": "m_axi_arcsr_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "arcsr", "role": "AWQOS" }} , 
 	{ "name": "m_axi_arcsr_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "arcsr", "role": "AWREGION" }} , 
 	{ "name": "m_axi_arcsr_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "arcsr", "role": "AWUSER" }} , 
 	{ "name": "m_axi_arcsr_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "arcsr", "role": "WVALID" }} , 
 	{ "name": "m_axi_arcsr_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "arcsr", "role": "WREADY" }} , 
 	{ "name": "m_axi_arcsr_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "arcsr", "role": "WDATA" }} , 
 	{ "name": "m_axi_arcsr_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "arcsr", "role": "WSTRB" }} , 
 	{ "name": "m_axi_arcsr_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "arcsr", "role": "WLAST" }} , 
 	{ "name": "m_axi_arcsr_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "arcsr", "role": "WID" }} , 
 	{ "name": "m_axi_arcsr_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "arcsr", "role": "WUSER" }} , 
 	{ "name": "m_axi_arcsr_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "arcsr", "role": "ARVALID" }} , 
 	{ "name": "m_axi_arcsr_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "arcsr", "role": "ARREADY" }} , 
 	{ "name": "m_axi_arcsr_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "arcsr", "role": "ARADDR" }} , 
 	{ "name": "m_axi_arcsr_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "arcsr", "role": "ARID" }} , 
 	{ "name": "m_axi_arcsr_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "arcsr", "role": "ARLEN" }} , 
 	{ "name": "m_axi_arcsr_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "arcsr", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_arcsr_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "arcsr", "role": "ARBURST" }} , 
 	{ "name": "m_axi_arcsr_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "arcsr", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_arcsr_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "arcsr", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_arcsr_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "arcsr", "role": "ARPROT" }} , 
 	{ "name": "m_axi_arcsr_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "arcsr", "role": "ARQOS" }} , 
 	{ "name": "m_axi_arcsr_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "arcsr", "role": "ARREGION" }} , 
 	{ "name": "m_axi_arcsr_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "arcsr", "role": "ARUSER" }} , 
 	{ "name": "m_axi_arcsr_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "arcsr", "role": "RVALID" }} , 
 	{ "name": "m_axi_arcsr_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "arcsr", "role": "RREADY" }} , 
 	{ "name": "m_axi_arcsr_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "arcsr", "role": "RDATA" }} , 
 	{ "name": "m_axi_arcsr_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "arcsr", "role": "RLAST" }} , 
 	{ "name": "m_axi_arcsr_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "arcsr", "role": "RID" }} , 
 	{ "name": "m_axi_arcsr_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "arcsr", "role": "RUSER" }} , 
 	{ "name": "m_axi_arcsr_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "arcsr", "role": "RRESP" }} , 
 	{ "name": "m_axi_arcsr_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "arcsr", "role": "BVALID" }} , 
 	{ "name": "m_axi_arcsr_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "arcsr", "role": "BREADY" }} , 
 	{ "name": "m_axi_arcsr_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "arcsr", "role": "BRESP" }} , 
 	{ "name": "m_axi_arcsr_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "arcsr", "role": "BID" }} , 
 	{ "name": "m_axi_arcsr_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "arcsr", "role": "BUSER" }} , 
 	{ "name": "m_axi_aval_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "aval", "role": "AWVALID" }} , 
 	{ "name": "m_axi_aval_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "aval", "role": "AWREADY" }} , 
 	{ "name": "m_axi_aval_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "aval", "role": "AWADDR" }} , 
 	{ "name": "m_axi_aval_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "aval", "role": "AWID" }} , 
 	{ "name": "m_axi_aval_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "aval", "role": "AWLEN" }} , 
 	{ "name": "m_axi_aval_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "aval", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_aval_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "aval", "role": "AWBURST" }} , 
 	{ "name": "m_axi_aval_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "aval", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_aval_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "aval", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_aval_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "aval", "role": "AWPROT" }} , 
 	{ "name": "m_axi_aval_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "aval", "role": "AWQOS" }} , 
 	{ "name": "m_axi_aval_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "aval", "role": "AWREGION" }} , 
 	{ "name": "m_axi_aval_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "aval", "role": "AWUSER" }} , 
 	{ "name": "m_axi_aval_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "aval", "role": "WVALID" }} , 
 	{ "name": "m_axi_aval_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "aval", "role": "WREADY" }} , 
 	{ "name": "m_axi_aval_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "aval", "role": "WDATA" }} , 
 	{ "name": "m_axi_aval_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "aval", "role": "WSTRB" }} , 
 	{ "name": "m_axi_aval_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "aval", "role": "WLAST" }} , 
 	{ "name": "m_axi_aval_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "aval", "role": "WID" }} , 
 	{ "name": "m_axi_aval_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "aval", "role": "WUSER" }} , 
 	{ "name": "m_axi_aval_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "aval", "role": "ARVALID" }} , 
 	{ "name": "m_axi_aval_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "aval", "role": "ARREADY" }} , 
 	{ "name": "m_axi_aval_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "aval", "role": "ARADDR" }} , 
 	{ "name": "m_axi_aval_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "aval", "role": "ARID" }} , 
 	{ "name": "m_axi_aval_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "aval", "role": "ARLEN" }} , 
 	{ "name": "m_axi_aval_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "aval", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_aval_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "aval", "role": "ARBURST" }} , 
 	{ "name": "m_axi_aval_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "aval", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_aval_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "aval", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_aval_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "aval", "role": "ARPROT" }} , 
 	{ "name": "m_axi_aval_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "aval", "role": "ARQOS" }} , 
 	{ "name": "m_axi_aval_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "aval", "role": "ARREGION" }} , 
 	{ "name": "m_axi_aval_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "aval", "role": "ARUSER" }} , 
 	{ "name": "m_axi_aval_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "aval", "role": "RVALID" }} , 
 	{ "name": "m_axi_aval_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "aval", "role": "RREADY" }} , 
 	{ "name": "m_axi_aval_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "aval", "role": "RDATA" }} , 
 	{ "name": "m_axi_aval_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "aval", "role": "RLAST" }} , 
 	{ "name": "m_axi_aval_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "aval", "role": "RID" }} , 
 	{ "name": "m_axi_aval_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "aval", "role": "RUSER" }} , 
 	{ "name": "m_axi_aval_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "aval", "role": "RRESP" }} , 
 	{ "name": "m_axi_aval_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "aval", "role": "BVALID" }} , 
 	{ "name": "m_axi_aval_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "aval", "role": "BREADY" }} , 
 	{ "name": "m_axi_aval_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "aval", "role": "BRESP" }} , 
 	{ "name": "m_axi_aval_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "aval", "role": "BID" }} , 
 	{ "name": "m_axi_aval_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "aval", "role": "BUSER" }} , 
 	{ "name": "m_axi_bc1_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bc1", "role": "AWVALID" }} , 
 	{ "name": "m_axi_bc1_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bc1", "role": "AWREADY" }} , 
 	{ "name": "m_axi_bc1_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "bc1", "role": "AWADDR" }} , 
 	{ "name": "m_axi_bc1_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bc1", "role": "AWID" }} , 
 	{ "name": "m_axi_bc1_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bc1", "role": "AWLEN" }} , 
 	{ "name": "m_axi_bc1_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "bc1", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_bc1_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bc1", "role": "AWBURST" }} , 
 	{ "name": "m_axi_bc1_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bc1", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_bc1_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bc1", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_bc1_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "bc1", "role": "AWPROT" }} , 
 	{ "name": "m_axi_bc1_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bc1", "role": "AWQOS" }} , 
 	{ "name": "m_axi_bc1_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bc1", "role": "AWREGION" }} , 
 	{ "name": "m_axi_bc1_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bc1", "role": "AWUSER" }} , 
 	{ "name": "m_axi_bc1_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bc1", "role": "WVALID" }} , 
 	{ "name": "m_axi_bc1_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bc1", "role": "WREADY" }} , 
 	{ "name": "m_axi_bc1_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "bc1", "role": "WDATA" }} , 
 	{ "name": "m_axi_bc1_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bc1", "role": "WSTRB" }} , 
 	{ "name": "m_axi_bc1_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bc1", "role": "WLAST" }} , 
 	{ "name": "m_axi_bc1_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bc1", "role": "WID" }} , 
 	{ "name": "m_axi_bc1_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bc1", "role": "WUSER" }} , 
 	{ "name": "m_axi_bc1_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bc1", "role": "ARVALID" }} , 
 	{ "name": "m_axi_bc1_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bc1", "role": "ARREADY" }} , 
 	{ "name": "m_axi_bc1_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "bc1", "role": "ARADDR" }} , 
 	{ "name": "m_axi_bc1_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bc1", "role": "ARID" }} , 
 	{ "name": "m_axi_bc1_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bc1", "role": "ARLEN" }} , 
 	{ "name": "m_axi_bc1_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "bc1", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_bc1_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bc1", "role": "ARBURST" }} , 
 	{ "name": "m_axi_bc1_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bc1", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_bc1_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bc1", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_bc1_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "bc1", "role": "ARPROT" }} , 
 	{ "name": "m_axi_bc1_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bc1", "role": "ARQOS" }} , 
 	{ "name": "m_axi_bc1_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bc1", "role": "ARREGION" }} , 
 	{ "name": "m_axi_bc1_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bc1", "role": "ARUSER" }} , 
 	{ "name": "m_axi_bc1_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bc1", "role": "RVALID" }} , 
 	{ "name": "m_axi_bc1_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bc1", "role": "RREADY" }} , 
 	{ "name": "m_axi_bc1_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "bc1", "role": "RDATA" }} , 
 	{ "name": "m_axi_bc1_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bc1", "role": "RLAST" }} , 
 	{ "name": "m_axi_bc1_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bc1", "role": "RID" }} , 
 	{ "name": "m_axi_bc1_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bc1", "role": "RUSER" }} , 
 	{ "name": "m_axi_bc1_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bc1", "role": "RRESP" }} , 
 	{ "name": "m_axi_bc1_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bc1", "role": "BVALID" }} , 
 	{ "name": "m_axi_bc1_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bc1", "role": "BREADY" }} , 
 	{ "name": "m_axi_bc1_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bc1", "role": "BRESP" }} , 
 	{ "name": "m_axi_bc1_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bc1", "role": "BID" }} , 
 	{ "name": "m_axi_bc1_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bc1", "role": "BUSER" }} , 
 	{ "name": "m_axi_bc2_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bc2", "role": "AWVALID" }} , 
 	{ "name": "m_axi_bc2_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bc2", "role": "AWREADY" }} , 
 	{ "name": "m_axi_bc2_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "bc2", "role": "AWADDR" }} , 
 	{ "name": "m_axi_bc2_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bc2", "role": "AWID" }} , 
 	{ "name": "m_axi_bc2_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bc2", "role": "AWLEN" }} , 
 	{ "name": "m_axi_bc2_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "bc2", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_bc2_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bc2", "role": "AWBURST" }} , 
 	{ "name": "m_axi_bc2_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bc2", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_bc2_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bc2", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_bc2_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "bc2", "role": "AWPROT" }} , 
 	{ "name": "m_axi_bc2_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bc2", "role": "AWQOS" }} , 
 	{ "name": "m_axi_bc2_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bc2", "role": "AWREGION" }} , 
 	{ "name": "m_axi_bc2_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bc2", "role": "AWUSER" }} , 
 	{ "name": "m_axi_bc2_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bc2", "role": "WVALID" }} , 
 	{ "name": "m_axi_bc2_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bc2", "role": "WREADY" }} , 
 	{ "name": "m_axi_bc2_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "bc2", "role": "WDATA" }} , 
 	{ "name": "m_axi_bc2_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bc2", "role": "WSTRB" }} , 
 	{ "name": "m_axi_bc2_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bc2", "role": "WLAST" }} , 
 	{ "name": "m_axi_bc2_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bc2", "role": "WID" }} , 
 	{ "name": "m_axi_bc2_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bc2", "role": "WUSER" }} , 
 	{ "name": "m_axi_bc2_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bc2", "role": "ARVALID" }} , 
 	{ "name": "m_axi_bc2_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bc2", "role": "ARREADY" }} , 
 	{ "name": "m_axi_bc2_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "bc2", "role": "ARADDR" }} , 
 	{ "name": "m_axi_bc2_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bc2", "role": "ARID" }} , 
 	{ "name": "m_axi_bc2_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bc2", "role": "ARLEN" }} , 
 	{ "name": "m_axi_bc2_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "bc2", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_bc2_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bc2", "role": "ARBURST" }} , 
 	{ "name": "m_axi_bc2_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bc2", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_bc2_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bc2", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_bc2_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "bc2", "role": "ARPROT" }} , 
 	{ "name": "m_axi_bc2_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bc2", "role": "ARQOS" }} , 
 	{ "name": "m_axi_bc2_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bc2", "role": "ARREGION" }} , 
 	{ "name": "m_axi_bc2_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bc2", "role": "ARUSER" }} , 
 	{ "name": "m_axi_bc2_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bc2", "role": "RVALID" }} , 
 	{ "name": "m_axi_bc2_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bc2", "role": "RREADY" }} , 
 	{ "name": "m_axi_bc2_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "bc2", "role": "RDATA" }} , 
 	{ "name": "m_axi_bc2_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bc2", "role": "RLAST" }} , 
 	{ "name": "m_axi_bc2_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bc2", "role": "RID" }} , 
 	{ "name": "m_axi_bc2_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bc2", "role": "RUSER" }} , 
 	{ "name": "m_axi_bc2_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bc2", "role": "RRESP" }} , 
 	{ "name": "m_axi_bc2_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bc2", "role": "BVALID" }} , 
 	{ "name": "m_axi_bc2_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bc2", "role": "BREADY" }} , 
 	{ "name": "m_axi_bc2_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bc2", "role": "BRESP" }} , 
 	{ "name": "m_axi_bc2_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bc2", "role": "BID" }} , 
 	{ "name": "m_axi_bc2_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bc2", "role": "BUSER" }} , 
 	{ "name": "m_axi_bc3_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bc3", "role": "AWVALID" }} , 
 	{ "name": "m_axi_bc3_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bc3", "role": "AWREADY" }} , 
 	{ "name": "m_axi_bc3_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "bc3", "role": "AWADDR" }} , 
 	{ "name": "m_axi_bc3_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bc3", "role": "AWID" }} , 
 	{ "name": "m_axi_bc3_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bc3", "role": "AWLEN" }} , 
 	{ "name": "m_axi_bc3_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "bc3", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_bc3_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bc3", "role": "AWBURST" }} , 
 	{ "name": "m_axi_bc3_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bc3", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_bc3_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bc3", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_bc3_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "bc3", "role": "AWPROT" }} , 
 	{ "name": "m_axi_bc3_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bc3", "role": "AWQOS" }} , 
 	{ "name": "m_axi_bc3_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bc3", "role": "AWREGION" }} , 
 	{ "name": "m_axi_bc3_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bc3", "role": "AWUSER" }} , 
 	{ "name": "m_axi_bc3_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bc3", "role": "WVALID" }} , 
 	{ "name": "m_axi_bc3_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bc3", "role": "WREADY" }} , 
 	{ "name": "m_axi_bc3_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "bc3", "role": "WDATA" }} , 
 	{ "name": "m_axi_bc3_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bc3", "role": "WSTRB" }} , 
 	{ "name": "m_axi_bc3_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bc3", "role": "WLAST" }} , 
 	{ "name": "m_axi_bc3_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bc3", "role": "WID" }} , 
 	{ "name": "m_axi_bc3_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bc3", "role": "WUSER" }} , 
 	{ "name": "m_axi_bc3_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bc3", "role": "ARVALID" }} , 
 	{ "name": "m_axi_bc3_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bc3", "role": "ARREADY" }} , 
 	{ "name": "m_axi_bc3_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "bc3", "role": "ARADDR" }} , 
 	{ "name": "m_axi_bc3_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bc3", "role": "ARID" }} , 
 	{ "name": "m_axi_bc3_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bc3", "role": "ARLEN" }} , 
 	{ "name": "m_axi_bc3_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "bc3", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_bc3_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bc3", "role": "ARBURST" }} , 
 	{ "name": "m_axi_bc3_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bc3", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_bc3_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bc3", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_bc3_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "bc3", "role": "ARPROT" }} , 
 	{ "name": "m_axi_bc3_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bc3", "role": "ARQOS" }} , 
 	{ "name": "m_axi_bc3_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bc3", "role": "ARREGION" }} , 
 	{ "name": "m_axi_bc3_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bc3", "role": "ARUSER" }} , 
 	{ "name": "m_axi_bc3_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bc3", "role": "RVALID" }} , 
 	{ "name": "m_axi_bc3_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bc3", "role": "RREADY" }} , 
 	{ "name": "m_axi_bc3_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "bc3", "role": "RDATA" }} , 
 	{ "name": "m_axi_bc3_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bc3", "role": "RLAST" }} , 
 	{ "name": "m_axi_bc3_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bc3", "role": "RID" }} , 
 	{ "name": "m_axi_bc3_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bc3", "role": "RUSER" }} , 
 	{ "name": "m_axi_bc3_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bc3", "role": "RRESP" }} , 
 	{ "name": "m_axi_bc3_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bc3", "role": "BVALID" }} , 
 	{ "name": "m_axi_bc3_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bc3", "role": "BREADY" }} , 
 	{ "name": "m_axi_bc3_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bc3", "role": "BRESP" }} , 
 	{ "name": "m_axi_bc3_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bc3", "role": "BID" }} , 
 	{ "name": "m_axi_bc3_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bc3", "role": "BUSER" }} , 
 	{ "name": "m_axi_bc4_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bc4", "role": "AWVALID" }} , 
 	{ "name": "m_axi_bc4_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bc4", "role": "AWREADY" }} , 
 	{ "name": "m_axi_bc4_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "bc4", "role": "AWADDR" }} , 
 	{ "name": "m_axi_bc4_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bc4", "role": "AWID" }} , 
 	{ "name": "m_axi_bc4_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bc4", "role": "AWLEN" }} , 
 	{ "name": "m_axi_bc4_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "bc4", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_bc4_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bc4", "role": "AWBURST" }} , 
 	{ "name": "m_axi_bc4_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bc4", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_bc4_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bc4", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_bc4_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "bc4", "role": "AWPROT" }} , 
 	{ "name": "m_axi_bc4_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bc4", "role": "AWQOS" }} , 
 	{ "name": "m_axi_bc4_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bc4", "role": "AWREGION" }} , 
 	{ "name": "m_axi_bc4_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bc4", "role": "AWUSER" }} , 
 	{ "name": "m_axi_bc4_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bc4", "role": "WVALID" }} , 
 	{ "name": "m_axi_bc4_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bc4", "role": "WREADY" }} , 
 	{ "name": "m_axi_bc4_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "bc4", "role": "WDATA" }} , 
 	{ "name": "m_axi_bc4_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bc4", "role": "WSTRB" }} , 
 	{ "name": "m_axi_bc4_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bc4", "role": "WLAST" }} , 
 	{ "name": "m_axi_bc4_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bc4", "role": "WID" }} , 
 	{ "name": "m_axi_bc4_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bc4", "role": "WUSER" }} , 
 	{ "name": "m_axi_bc4_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bc4", "role": "ARVALID" }} , 
 	{ "name": "m_axi_bc4_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bc4", "role": "ARREADY" }} , 
 	{ "name": "m_axi_bc4_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "bc4", "role": "ARADDR" }} , 
 	{ "name": "m_axi_bc4_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bc4", "role": "ARID" }} , 
 	{ "name": "m_axi_bc4_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bc4", "role": "ARLEN" }} , 
 	{ "name": "m_axi_bc4_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "bc4", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_bc4_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bc4", "role": "ARBURST" }} , 
 	{ "name": "m_axi_bc4_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bc4", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_bc4_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bc4", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_bc4_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "bc4", "role": "ARPROT" }} , 
 	{ "name": "m_axi_bc4_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bc4", "role": "ARQOS" }} , 
 	{ "name": "m_axi_bc4_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bc4", "role": "ARREGION" }} , 
 	{ "name": "m_axi_bc4_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bc4", "role": "ARUSER" }} , 
 	{ "name": "m_axi_bc4_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bc4", "role": "RVALID" }} , 
 	{ "name": "m_axi_bc4_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bc4", "role": "RREADY" }} , 
 	{ "name": "m_axi_bc4_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "bc4", "role": "RDATA" }} , 
 	{ "name": "m_axi_bc4_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bc4", "role": "RLAST" }} , 
 	{ "name": "m_axi_bc4_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bc4", "role": "RID" }} , 
 	{ "name": "m_axi_bc4_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bc4", "role": "RUSER" }} , 
 	{ "name": "m_axi_bc4_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bc4", "role": "RRESP" }} , 
 	{ "name": "m_axi_bc4_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bc4", "role": "BVALID" }} , 
 	{ "name": "m_axi_bc4_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bc4", "role": "BREADY" }} , 
 	{ "name": "m_axi_bc4_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bc4", "role": "BRESP" }} , 
 	{ "name": "m_axi_bc4_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bc4", "role": "BID" }} , 
 	{ "name": "m_axi_bc4_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bc4", "role": "BUSER" }} , 
 	{ "name": "m_axi_bcid1_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bcid1", "role": "AWVALID" }} , 
 	{ "name": "m_axi_bcid1_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bcid1", "role": "AWREADY" }} , 
 	{ "name": "m_axi_bcid1_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "bcid1", "role": "AWADDR" }} , 
 	{ "name": "m_axi_bcid1_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bcid1", "role": "AWID" }} , 
 	{ "name": "m_axi_bcid1_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bcid1", "role": "AWLEN" }} , 
 	{ "name": "m_axi_bcid1_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "bcid1", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_bcid1_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bcid1", "role": "AWBURST" }} , 
 	{ "name": "m_axi_bcid1_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bcid1", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_bcid1_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bcid1", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_bcid1_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "bcid1", "role": "AWPROT" }} , 
 	{ "name": "m_axi_bcid1_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bcid1", "role": "AWQOS" }} , 
 	{ "name": "m_axi_bcid1_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bcid1", "role": "AWREGION" }} , 
 	{ "name": "m_axi_bcid1_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bcid1", "role": "AWUSER" }} , 
 	{ "name": "m_axi_bcid1_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bcid1", "role": "WVALID" }} , 
 	{ "name": "m_axi_bcid1_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bcid1", "role": "WREADY" }} , 
 	{ "name": "m_axi_bcid1_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "bcid1", "role": "WDATA" }} , 
 	{ "name": "m_axi_bcid1_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bcid1", "role": "WSTRB" }} , 
 	{ "name": "m_axi_bcid1_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bcid1", "role": "WLAST" }} , 
 	{ "name": "m_axi_bcid1_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bcid1", "role": "WID" }} , 
 	{ "name": "m_axi_bcid1_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bcid1", "role": "WUSER" }} , 
 	{ "name": "m_axi_bcid1_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bcid1", "role": "ARVALID" }} , 
 	{ "name": "m_axi_bcid1_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bcid1", "role": "ARREADY" }} , 
 	{ "name": "m_axi_bcid1_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "bcid1", "role": "ARADDR" }} , 
 	{ "name": "m_axi_bcid1_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bcid1", "role": "ARID" }} , 
 	{ "name": "m_axi_bcid1_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bcid1", "role": "ARLEN" }} , 
 	{ "name": "m_axi_bcid1_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "bcid1", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_bcid1_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bcid1", "role": "ARBURST" }} , 
 	{ "name": "m_axi_bcid1_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bcid1", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_bcid1_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bcid1", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_bcid1_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "bcid1", "role": "ARPROT" }} , 
 	{ "name": "m_axi_bcid1_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bcid1", "role": "ARQOS" }} , 
 	{ "name": "m_axi_bcid1_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bcid1", "role": "ARREGION" }} , 
 	{ "name": "m_axi_bcid1_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bcid1", "role": "ARUSER" }} , 
 	{ "name": "m_axi_bcid1_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bcid1", "role": "RVALID" }} , 
 	{ "name": "m_axi_bcid1_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bcid1", "role": "RREADY" }} , 
 	{ "name": "m_axi_bcid1_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "bcid1", "role": "RDATA" }} , 
 	{ "name": "m_axi_bcid1_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bcid1", "role": "RLAST" }} , 
 	{ "name": "m_axi_bcid1_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bcid1", "role": "RID" }} , 
 	{ "name": "m_axi_bcid1_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bcid1", "role": "RUSER" }} , 
 	{ "name": "m_axi_bcid1_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bcid1", "role": "RRESP" }} , 
 	{ "name": "m_axi_bcid1_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bcid1", "role": "BVALID" }} , 
 	{ "name": "m_axi_bcid1_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bcid1", "role": "BREADY" }} , 
 	{ "name": "m_axi_bcid1_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bcid1", "role": "BRESP" }} , 
 	{ "name": "m_axi_bcid1_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bcid1", "role": "BID" }} , 
 	{ "name": "m_axi_bcid1_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bcid1", "role": "BUSER" }} , 
 	{ "name": "m_axi_bcid2_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bcid2", "role": "AWVALID" }} , 
 	{ "name": "m_axi_bcid2_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bcid2", "role": "AWREADY" }} , 
 	{ "name": "m_axi_bcid2_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "bcid2", "role": "AWADDR" }} , 
 	{ "name": "m_axi_bcid2_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bcid2", "role": "AWID" }} , 
 	{ "name": "m_axi_bcid2_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bcid2", "role": "AWLEN" }} , 
 	{ "name": "m_axi_bcid2_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "bcid2", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_bcid2_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bcid2", "role": "AWBURST" }} , 
 	{ "name": "m_axi_bcid2_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bcid2", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_bcid2_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bcid2", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_bcid2_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "bcid2", "role": "AWPROT" }} , 
 	{ "name": "m_axi_bcid2_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bcid2", "role": "AWQOS" }} , 
 	{ "name": "m_axi_bcid2_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bcid2", "role": "AWREGION" }} , 
 	{ "name": "m_axi_bcid2_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bcid2", "role": "AWUSER" }} , 
 	{ "name": "m_axi_bcid2_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bcid2", "role": "WVALID" }} , 
 	{ "name": "m_axi_bcid2_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bcid2", "role": "WREADY" }} , 
 	{ "name": "m_axi_bcid2_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "bcid2", "role": "WDATA" }} , 
 	{ "name": "m_axi_bcid2_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bcid2", "role": "WSTRB" }} , 
 	{ "name": "m_axi_bcid2_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bcid2", "role": "WLAST" }} , 
 	{ "name": "m_axi_bcid2_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bcid2", "role": "WID" }} , 
 	{ "name": "m_axi_bcid2_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bcid2", "role": "WUSER" }} , 
 	{ "name": "m_axi_bcid2_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bcid2", "role": "ARVALID" }} , 
 	{ "name": "m_axi_bcid2_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bcid2", "role": "ARREADY" }} , 
 	{ "name": "m_axi_bcid2_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "bcid2", "role": "ARADDR" }} , 
 	{ "name": "m_axi_bcid2_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bcid2", "role": "ARID" }} , 
 	{ "name": "m_axi_bcid2_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bcid2", "role": "ARLEN" }} , 
 	{ "name": "m_axi_bcid2_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "bcid2", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_bcid2_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bcid2", "role": "ARBURST" }} , 
 	{ "name": "m_axi_bcid2_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bcid2", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_bcid2_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bcid2", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_bcid2_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "bcid2", "role": "ARPROT" }} , 
 	{ "name": "m_axi_bcid2_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bcid2", "role": "ARQOS" }} , 
 	{ "name": "m_axi_bcid2_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bcid2", "role": "ARREGION" }} , 
 	{ "name": "m_axi_bcid2_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bcid2", "role": "ARUSER" }} , 
 	{ "name": "m_axi_bcid2_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bcid2", "role": "RVALID" }} , 
 	{ "name": "m_axi_bcid2_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bcid2", "role": "RREADY" }} , 
 	{ "name": "m_axi_bcid2_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "bcid2", "role": "RDATA" }} , 
 	{ "name": "m_axi_bcid2_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bcid2", "role": "RLAST" }} , 
 	{ "name": "m_axi_bcid2_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bcid2", "role": "RID" }} , 
 	{ "name": "m_axi_bcid2_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bcid2", "role": "RUSER" }} , 
 	{ "name": "m_axi_bcid2_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bcid2", "role": "RRESP" }} , 
 	{ "name": "m_axi_bcid2_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bcid2", "role": "BVALID" }} , 
 	{ "name": "m_axi_bcid2_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bcid2", "role": "BREADY" }} , 
 	{ "name": "m_axi_bcid2_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bcid2", "role": "BRESP" }} , 
 	{ "name": "m_axi_bcid2_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bcid2", "role": "BID" }} , 
 	{ "name": "m_axi_bcid2_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bcid2", "role": "BUSER" }} , 
 	{ "name": "m_axi_bcid3_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bcid3", "role": "AWVALID" }} , 
 	{ "name": "m_axi_bcid3_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bcid3", "role": "AWREADY" }} , 
 	{ "name": "m_axi_bcid3_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "bcid3", "role": "AWADDR" }} , 
 	{ "name": "m_axi_bcid3_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bcid3", "role": "AWID" }} , 
 	{ "name": "m_axi_bcid3_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bcid3", "role": "AWLEN" }} , 
 	{ "name": "m_axi_bcid3_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "bcid3", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_bcid3_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bcid3", "role": "AWBURST" }} , 
 	{ "name": "m_axi_bcid3_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bcid3", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_bcid3_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bcid3", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_bcid3_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "bcid3", "role": "AWPROT" }} , 
 	{ "name": "m_axi_bcid3_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bcid3", "role": "AWQOS" }} , 
 	{ "name": "m_axi_bcid3_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bcid3", "role": "AWREGION" }} , 
 	{ "name": "m_axi_bcid3_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bcid3", "role": "AWUSER" }} , 
 	{ "name": "m_axi_bcid3_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bcid3", "role": "WVALID" }} , 
 	{ "name": "m_axi_bcid3_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bcid3", "role": "WREADY" }} , 
 	{ "name": "m_axi_bcid3_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "bcid3", "role": "WDATA" }} , 
 	{ "name": "m_axi_bcid3_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bcid3", "role": "WSTRB" }} , 
 	{ "name": "m_axi_bcid3_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bcid3", "role": "WLAST" }} , 
 	{ "name": "m_axi_bcid3_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bcid3", "role": "WID" }} , 
 	{ "name": "m_axi_bcid3_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bcid3", "role": "WUSER" }} , 
 	{ "name": "m_axi_bcid3_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bcid3", "role": "ARVALID" }} , 
 	{ "name": "m_axi_bcid3_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bcid3", "role": "ARREADY" }} , 
 	{ "name": "m_axi_bcid3_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "bcid3", "role": "ARADDR" }} , 
 	{ "name": "m_axi_bcid3_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bcid3", "role": "ARID" }} , 
 	{ "name": "m_axi_bcid3_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bcid3", "role": "ARLEN" }} , 
 	{ "name": "m_axi_bcid3_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "bcid3", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_bcid3_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bcid3", "role": "ARBURST" }} , 
 	{ "name": "m_axi_bcid3_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bcid3", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_bcid3_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bcid3", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_bcid3_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "bcid3", "role": "ARPROT" }} , 
 	{ "name": "m_axi_bcid3_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bcid3", "role": "ARQOS" }} , 
 	{ "name": "m_axi_bcid3_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bcid3", "role": "ARREGION" }} , 
 	{ "name": "m_axi_bcid3_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bcid3", "role": "ARUSER" }} , 
 	{ "name": "m_axi_bcid3_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bcid3", "role": "RVALID" }} , 
 	{ "name": "m_axi_bcid3_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bcid3", "role": "RREADY" }} , 
 	{ "name": "m_axi_bcid3_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "bcid3", "role": "RDATA" }} , 
 	{ "name": "m_axi_bcid3_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bcid3", "role": "RLAST" }} , 
 	{ "name": "m_axi_bcid3_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bcid3", "role": "RID" }} , 
 	{ "name": "m_axi_bcid3_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bcid3", "role": "RUSER" }} , 
 	{ "name": "m_axi_bcid3_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bcid3", "role": "RRESP" }} , 
 	{ "name": "m_axi_bcid3_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bcid3", "role": "BVALID" }} , 
 	{ "name": "m_axi_bcid3_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bcid3", "role": "BREADY" }} , 
 	{ "name": "m_axi_bcid3_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bcid3", "role": "BRESP" }} , 
 	{ "name": "m_axi_bcid3_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bcid3", "role": "BID" }} , 
 	{ "name": "m_axi_bcid3_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bcid3", "role": "BUSER" }} , 
 	{ "name": "m_axi_bcid4_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bcid4", "role": "AWVALID" }} , 
 	{ "name": "m_axi_bcid4_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bcid4", "role": "AWREADY" }} , 
 	{ "name": "m_axi_bcid4_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "bcid4", "role": "AWADDR" }} , 
 	{ "name": "m_axi_bcid4_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bcid4", "role": "AWID" }} , 
 	{ "name": "m_axi_bcid4_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bcid4", "role": "AWLEN" }} , 
 	{ "name": "m_axi_bcid4_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "bcid4", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_bcid4_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bcid4", "role": "AWBURST" }} , 
 	{ "name": "m_axi_bcid4_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bcid4", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_bcid4_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bcid4", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_bcid4_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "bcid4", "role": "AWPROT" }} , 
 	{ "name": "m_axi_bcid4_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bcid4", "role": "AWQOS" }} , 
 	{ "name": "m_axi_bcid4_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bcid4", "role": "AWREGION" }} , 
 	{ "name": "m_axi_bcid4_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bcid4", "role": "AWUSER" }} , 
 	{ "name": "m_axi_bcid4_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bcid4", "role": "WVALID" }} , 
 	{ "name": "m_axi_bcid4_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bcid4", "role": "WREADY" }} , 
 	{ "name": "m_axi_bcid4_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "bcid4", "role": "WDATA" }} , 
 	{ "name": "m_axi_bcid4_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bcid4", "role": "WSTRB" }} , 
 	{ "name": "m_axi_bcid4_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bcid4", "role": "WLAST" }} , 
 	{ "name": "m_axi_bcid4_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bcid4", "role": "WID" }} , 
 	{ "name": "m_axi_bcid4_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bcid4", "role": "WUSER" }} , 
 	{ "name": "m_axi_bcid4_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bcid4", "role": "ARVALID" }} , 
 	{ "name": "m_axi_bcid4_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bcid4", "role": "ARREADY" }} , 
 	{ "name": "m_axi_bcid4_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "bcid4", "role": "ARADDR" }} , 
 	{ "name": "m_axi_bcid4_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bcid4", "role": "ARID" }} , 
 	{ "name": "m_axi_bcid4_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bcid4", "role": "ARLEN" }} , 
 	{ "name": "m_axi_bcid4_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "bcid4", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_bcid4_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bcid4", "role": "ARBURST" }} , 
 	{ "name": "m_axi_bcid4_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bcid4", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_bcid4_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bcid4", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_bcid4_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "bcid4", "role": "ARPROT" }} , 
 	{ "name": "m_axi_bcid4_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bcid4", "role": "ARQOS" }} , 
 	{ "name": "m_axi_bcid4_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bcid4", "role": "ARREGION" }} , 
 	{ "name": "m_axi_bcid4_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bcid4", "role": "ARUSER" }} , 
 	{ "name": "m_axi_bcid4_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bcid4", "role": "RVALID" }} , 
 	{ "name": "m_axi_bcid4_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bcid4", "role": "RREADY" }} , 
 	{ "name": "m_axi_bcid4_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "bcid4", "role": "RDATA" }} , 
 	{ "name": "m_axi_bcid4_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bcid4", "role": "RLAST" }} , 
 	{ "name": "m_axi_bcid4_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bcid4", "role": "RID" }} , 
 	{ "name": "m_axi_bcid4_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bcid4", "role": "RUSER" }} , 
 	{ "name": "m_axi_bcid4_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bcid4", "role": "RRESP" }} , 
 	{ "name": "m_axi_bcid4_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bcid4", "role": "BVALID" }} , 
 	{ "name": "m_axi_bcid4_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bcid4", "role": "BREADY" }} , 
 	{ "name": "m_axi_bcid4_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bcid4", "role": "BRESP" }} , 
 	{ "name": "m_axi_bcid4_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bcid4", "role": "BID" }} , 
 	{ "name": "m_axi_bcid4_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bcid4", "role": "BUSER" }} , 
 	{ "name": "m_axi_brcsr1_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "brcsr1", "role": "AWVALID" }} , 
 	{ "name": "m_axi_brcsr1_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "brcsr1", "role": "AWREADY" }} , 
 	{ "name": "m_axi_brcsr1_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "brcsr1", "role": "AWADDR" }} , 
 	{ "name": "m_axi_brcsr1_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "brcsr1", "role": "AWID" }} , 
 	{ "name": "m_axi_brcsr1_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "brcsr1", "role": "AWLEN" }} , 
 	{ "name": "m_axi_brcsr1_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "brcsr1", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_brcsr1_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "brcsr1", "role": "AWBURST" }} , 
 	{ "name": "m_axi_brcsr1_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "brcsr1", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_brcsr1_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "brcsr1", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_brcsr1_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "brcsr1", "role": "AWPROT" }} , 
 	{ "name": "m_axi_brcsr1_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "brcsr1", "role": "AWQOS" }} , 
 	{ "name": "m_axi_brcsr1_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "brcsr1", "role": "AWREGION" }} , 
 	{ "name": "m_axi_brcsr1_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "brcsr1", "role": "AWUSER" }} , 
 	{ "name": "m_axi_brcsr1_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "brcsr1", "role": "WVALID" }} , 
 	{ "name": "m_axi_brcsr1_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "brcsr1", "role": "WREADY" }} , 
 	{ "name": "m_axi_brcsr1_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "brcsr1", "role": "WDATA" }} , 
 	{ "name": "m_axi_brcsr1_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "brcsr1", "role": "WSTRB" }} , 
 	{ "name": "m_axi_brcsr1_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "brcsr1", "role": "WLAST" }} , 
 	{ "name": "m_axi_brcsr1_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "brcsr1", "role": "WID" }} , 
 	{ "name": "m_axi_brcsr1_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "brcsr1", "role": "WUSER" }} , 
 	{ "name": "m_axi_brcsr1_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "brcsr1", "role": "ARVALID" }} , 
 	{ "name": "m_axi_brcsr1_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "brcsr1", "role": "ARREADY" }} , 
 	{ "name": "m_axi_brcsr1_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "brcsr1", "role": "ARADDR" }} , 
 	{ "name": "m_axi_brcsr1_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "brcsr1", "role": "ARID" }} , 
 	{ "name": "m_axi_brcsr1_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "brcsr1", "role": "ARLEN" }} , 
 	{ "name": "m_axi_brcsr1_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "brcsr1", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_brcsr1_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "brcsr1", "role": "ARBURST" }} , 
 	{ "name": "m_axi_brcsr1_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "brcsr1", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_brcsr1_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "brcsr1", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_brcsr1_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "brcsr1", "role": "ARPROT" }} , 
 	{ "name": "m_axi_brcsr1_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "brcsr1", "role": "ARQOS" }} , 
 	{ "name": "m_axi_brcsr1_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "brcsr1", "role": "ARREGION" }} , 
 	{ "name": "m_axi_brcsr1_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "brcsr1", "role": "ARUSER" }} , 
 	{ "name": "m_axi_brcsr1_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "brcsr1", "role": "RVALID" }} , 
 	{ "name": "m_axi_brcsr1_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "brcsr1", "role": "RREADY" }} , 
 	{ "name": "m_axi_brcsr1_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "brcsr1", "role": "RDATA" }} , 
 	{ "name": "m_axi_brcsr1_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "brcsr1", "role": "RLAST" }} , 
 	{ "name": "m_axi_brcsr1_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "brcsr1", "role": "RID" }} , 
 	{ "name": "m_axi_brcsr1_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "brcsr1", "role": "RUSER" }} , 
 	{ "name": "m_axi_brcsr1_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "brcsr1", "role": "RRESP" }} , 
 	{ "name": "m_axi_brcsr1_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "brcsr1", "role": "BVALID" }} , 
 	{ "name": "m_axi_brcsr1_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "brcsr1", "role": "BREADY" }} , 
 	{ "name": "m_axi_brcsr1_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "brcsr1", "role": "BRESP" }} , 
 	{ "name": "m_axi_brcsr1_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "brcsr1", "role": "BID" }} , 
 	{ "name": "m_axi_brcsr1_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "brcsr1", "role": "BUSER" }} , 
 	{ "name": "m_axi_brcsr2_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "brcsr2", "role": "AWVALID" }} , 
 	{ "name": "m_axi_brcsr2_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "brcsr2", "role": "AWREADY" }} , 
 	{ "name": "m_axi_brcsr2_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "brcsr2", "role": "AWADDR" }} , 
 	{ "name": "m_axi_brcsr2_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "brcsr2", "role": "AWID" }} , 
 	{ "name": "m_axi_brcsr2_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "brcsr2", "role": "AWLEN" }} , 
 	{ "name": "m_axi_brcsr2_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "brcsr2", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_brcsr2_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "brcsr2", "role": "AWBURST" }} , 
 	{ "name": "m_axi_brcsr2_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "brcsr2", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_brcsr2_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "brcsr2", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_brcsr2_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "brcsr2", "role": "AWPROT" }} , 
 	{ "name": "m_axi_brcsr2_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "brcsr2", "role": "AWQOS" }} , 
 	{ "name": "m_axi_brcsr2_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "brcsr2", "role": "AWREGION" }} , 
 	{ "name": "m_axi_brcsr2_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "brcsr2", "role": "AWUSER" }} , 
 	{ "name": "m_axi_brcsr2_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "brcsr2", "role": "WVALID" }} , 
 	{ "name": "m_axi_brcsr2_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "brcsr2", "role": "WREADY" }} , 
 	{ "name": "m_axi_brcsr2_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "brcsr2", "role": "WDATA" }} , 
 	{ "name": "m_axi_brcsr2_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "brcsr2", "role": "WSTRB" }} , 
 	{ "name": "m_axi_brcsr2_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "brcsr2", "role": "WLAST" }} , 
 	{ "name": "m_axi_brcsr2_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "brcsr2", "role": "WID" }} , 
 	{ "name": "m_axi_brcsr2_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "brcsr2", "role": "WUSER" }} , 
 	{ "name": "m_axi_brcsr2_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "brcsr2", "role": "ARVALID" }} , 
 	{ "name": "m_axi_brcsr2_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "brcsr2", "role": "ARREADY" }} , 
 	{ "name": "m_axi_brcsr2_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "brcsr2", "role": "ARADDR" }} , 
 	{ "name": "m_axi_brcsr2_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "brcsr2", "role": "ARID" }} , 
 	{ "name": "m_axi_brcsr2_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "brcsr2", "role": "ARLEN" }} , 
 	{ "name": "m_axi_brcsr2_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "brcsr2", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_brcsr2_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "brcsr2", "role": "ARBURST" }} , 
 	{ "name": "m_axi_brcsr2_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "brcsr2", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_brcsr2_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "brcsr2", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_brcsr2_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "brcsr2", "role": "ARPROT" }} , 
 	{ "name": "m_axi_brcsr2_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "brcsr2", "role": "ARQOS" }} , 
 	{ "name": "m_axi_brcsr2_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "brcsr2", "role": "ARREGION" }} , 
 	{ "name": "m_axi_brcsr2_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "brcsr2", "role": "ARUSER" }} , 
 	{ "name": "m_axi_brcsr2_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "brcsr2", "role": "RVALID" }} , 
 	{ "name": "m_axi_brcsr2_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "brcsr2", "role": "RREADY" }} , 
 	{ "name": "m_axi_brcsr2_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "brcsr2", "role": "RDATA" }} , 
 	{ "name": "m_axi_brcsr2_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "brcsr2", "role": "RLAST" }} , 
 	{ "name": "m_axi_brcsr2_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "brcsr2", "role": "RID" }} , 
 	{ "name": "m_axi_brcsr2_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "brcsr2", "role": "RUSER" }} , 
 	{ "name": "m_axi_brcsr2_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "brcsr2", "role": "RRESP" }} , 
 	{ "name": "m_axi_brcsr2_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "brcsr2", "role": "BVALID" }} , 
 	{ "name": "m_axi_brcsr2_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "brcsr2", "role": "BREADY" }} , 
 	{ "name": "m_axi_brcsr2_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "brcsr2", "role": "BRESP" }} , 
 	{ "name": "m_axi_brcsr2_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "brcsr2", "role": "BID" }} , 
 	{ "name": "m_axi_brcsr2_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "brcsr2", "role": "BUSER" }} , 
 	{ "name": "m_axi_brcsr3_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "brcsr3", "role": "AWVALID" }} , 
 	{ "name": "m_axi_brcsr3_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "brcsr3", "role": "AWREADY" }} , 
 	{ "name": "m_axi_brcsr3_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "brcsr3", "role": "AWADDR" }} , 
 	{ "name": "m_axi_brcsr3_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "brcsr3", "role": "AWID" }} , 
 	{ "name": "m_axi_brcsr3_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "brcsr3", "role": "AWLEN" }} , 
 	{ "name": "m_axi_brcsr3_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "brcsr3", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_brcsr3_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "brcsr3", "role": "AWBURST" }} , 
 	{ "name": "m_axi_brcsr3_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "brcsr3", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_brcsr3_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "brcsr3", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_brcsr3_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "brcsr3", "role": "AWPROT" }} , 
 	{ "name": "m_axi_brcsr3_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "brcsr3", "role": "AWQOS" }} , 
 	{ "name": "m_axi_brcsr3_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "brcsr3", "role": "AWREGION" }} , 
 	{ "name": "m_axi_brcsr3_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "brcsr3", "role": "AWUSER" }} , 
 	{ "name": "m_axi_brcsr3_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "brcsr3", "role": "WVALID" }} , 
 	{ "name": "m_axi_brcsr3_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "brcsr3", "role": "WREADY" }} , 
 	{ "name": "m_axi_brcsr3_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "brcsr3", "role": "WDATA" }} , 
 	{ "name": "m_axi_brcsr3_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "brcsr3", "role": "WSTRB" }} , 
 	{ "name": "m_axi_brcsr3_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "brcsr3", "role": "WLAST" }} , 
 	{ "name": "m_axi_brcsr3_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "brcsr3", "role": "WID" }} , 
 	{ "name": "m_axi_brcsr3_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "brcsr3", "role": "WUSER" }} , 
 	{ "name": "m_axi_brcsr3_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "brcsr3", "role": "ARVALID" }} , 
 	{ "name": "m_axi_brcsr3_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "brcsr3", "role": "ARREADY" }} , 
 	{ "name": "m_axi_brcsr3_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "brcsr3", "role": "ARADDR" }} , 
 	{ "name": "m_axi_brcsr3_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "brcsr3", "role": "ARID" }} , 
 	{ "name": "m_axi_brcsr3_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "brcsr3", "role": "ARLEN" }} , 
 	{ "name": "m_axi_brcsr3_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "brcsr3", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_brcsr3_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "brcsr3", "role": "ARBURST" }} , 
 	{ "name": "m_axi_brcsr3_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "brcsr3", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_brcsr3_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "brcsr3", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_brcsr3_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "brcsr3", "role": "ARPROT" }} , 
 	{ "name": "m_axi_brcsr3_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "brcsr3", "role": "ARQOS" }} , 
 	{ "name": "m_axi_brcsr3_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "brcsr3", "role": "ARREGION" }} , 
 	{ "name": "m_axi_brcsr3_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "brcsr3", "role": "ARUSER" }} , 
 	{ "name": "m_axi_brcsr3_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "brcsr3", "role": "RVALID" }} , 
 	{ "name": "m_axi_brcsr3_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "brcsr3", "role": "RREADY" }} , 
 	{ "name": "m_axi_brcsr3_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "brcsr3", "role": "RDATA" }} , 
 	{ "name": "m_axi_brcsr3_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "brcsr3", "role": "RLAST" }} , 
 	{ "name": "m_axi_brcsr3_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "brcsr3", "role": "RID" }} , 
 	{ "name": "m_axi_brcsr3_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "brcsr3", "role": "RUSER" }} , 
 	{ "name": "m_axi_brcsr3_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "brcsr3", "role": "RRESP" }} , 
 	{ "name": "m_axi_brcsr3_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "brcsr3", "role": "BVALID" }} , 
 	{ "name": "m_axi_brcsr3_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "brcsr3", "role": "BREADY" }} , 
 	{ "name": "m_axi_brcsr3_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "brcsr3", "role": "BRESP" }} , 
 	{ "name": "m_axi_brcsr3_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "brcsr3", "role": "BID" }} , 
 	{ "name": "m_axi_brcsr3_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "brcsr3", "role": "BUSER" }} , 
 	{ "name": "m_axi_brcsr4_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "brcsr4", "role": "AWVALID" }} , 
 	{ "name": "m_axi_brcsr4_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "brcsr4", "role": "AWREADY" }} , 
 	{ "name": "m_axi_brcsr4_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "brcsr4", "role": "AWADDR" }} , 
 	{ "name": "m_axi_brcsr4_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "brcsr4", "role": "AWID" }} , 
 	{ "name": "m_axi_brcsr4_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "brcsr4", "role": "AWLEN" }} , 
 	{ "name": "m_axi_brcsr4_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "brcsr4", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_brcsr4_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "brcsr4", "role": "AWBURST" }} , 
 	{ "name": "m_axi_brcsr4_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "brcsr4", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_brcsr4_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "brcsr4", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_brcsr4_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "brcsr4", "role": "AWPROT" }} , 
 	{ "name": "m_axi_brcsr4_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "brcsr4", "role": "AWQOS" }} , 
 	{ "name": "m_axi_brcsr4_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "brcsr4", "role": "AWREGION" }} , 
 	{ "name": "m_axi_brcsr4_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "brcsr4", "role": "AWUSER" }} , 
 	{ "name": "m_axi_brcsr4_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "brcsr4", "role": "WVALID" }} , 
 	{ "name": "m_axi_brcsr4_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "brcsr4", "role": "WREADY" }} , 
 	{ "name": "m_axi_brcsr4_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "brcsr4", "role": "WDATA" }} , 
 	{ "name": "m_axi_brcsr4_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "brcsr4", "role": "WSTRB" }} , 
 	{ "name": "m_axi_brcsr4_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "brcsr4", "role": "WLAST" }} , 
 	{ "name": "m_axi_brcsr4_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "brcsr4", "role": "WID" }} , 
 	{ "name": "m_axi_brcsr4_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "brcsr4", "role": "WUSER" }} , 
 	{ "name": "m_axi_brcsr4_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "brcsr4", "role": "ARVALID" }} , 
 	{ "name": "m_axi_brcsr4_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "brcsr4", "role": "ARREADY" }} , 
 	{ "name": "m_axi_brcsr4_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "brcsr4", "role": "ARADDR" }} , 
 	{ "name": "m_axi_brcsr4_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "brcsr4", "role": "ARID" }} , 
 	{ "name": "m_axi_brcsr4_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "brcsr4", "role": "ARLEN" }} , 
 	{ "name": "m_axi_brcsr4_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "brcsr4", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_brcsr4_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "brcsr4", "role": "ARBURST" }} , 
 	{ "name": "m_axi_brcsr4_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "brcsr4", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_brcsr4_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "brcsr4", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_brcsr4_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "brcsr4", "role": "ARPROT" }} , 
 	{ "name": "m_axi_brcsr4_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "brcsr4", "role": "ARQOS" }} , 
 	{ "name": "m_axi_brcsr4_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "brcsr4", "role": "ARREGION" }} , 
 	{ "name": "m_axi_brcsr4_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "brcsr4", "role": "ARUSER" }} , 
 	{ "name": "m_axi_brcsr4_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "brcsr4", "role": "RVALID" }} , 
 	{ "name": "m_axi_brcsr4_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "brcsr4", "role": "RREADY" }} , 
 	{ "name": "m_axi_brcsr4_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "brcsr4", "role": "RDATA" }} , 
 	{ "name": "m_axi_brcsr4_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "brcsr4", "role": "RLAST" }} , 
 	{ "name": "m_axi_brcsr4_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "brcsr4", "role": "RID" }} , 
 	{ "name": "m_axi_brcsr4_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "brcsr4", "role": "RUSER" }} , 
 	{ "name": "m_axi_brcsr4_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "brcsr4", "role": "RRESP" }} , 
 	{ "name": "m_axi_brcsr4_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "brcsr4", "role": "BVALID" }} , 
 	{ "name": "m_axi_brcsr4_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "brcsr4", "role": "BREADY" }} , 
 	{ "name": "m_axi_brcsr4_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "brcsr4", "role": "BRESP" }} , 
 	{ "name": "m_axi_brcsr4_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "brcsr4", "role": "BID" }} , 
 	{ "name": "m_axi_brcsr4_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "brcsr4", "role": "BUSER" }} , 
 	{ "name": "m_axi_bv1_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bv1", "role": "AWVALID" }} , 
 	{ "name": "m_axi_bv1_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bv1", "role": "AWREADY" }} , 
 	{ "name": "m_axi_bv1_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "bv1", "role": "AWADDR" }} , 
 	{ "name": "m_axi_bv1_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bv1", "role": "AWID" }} , 
 	{ "name": "m_axi_bv1_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bv1", "role": "AWLEN" }} , 
 	{ "name": "m_axi_bv1_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "bv1", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_bv1_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bv1", "role": "AWBURST" }} , 
 	{ "name": "m_axi_bv1_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bv1", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_bv1_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bv1", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_bv1_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "bv1", "role": "AWPROT" }} , 
 	{ "name": "m_axi_bv1_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bv1", "role": "AWQOS" }} , 
 	{ "name": "m_axi_bv1_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bv1", "role": "AWREGION" }} , 
 	{ "name": "m_axi_bv1_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bv1", "role": "AWUSER" }} , 
 	{ "name": "m_axi_bv1_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bv1", "role": "WVALID" }} , 
 	{ "name": "m_axi_bv1_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bv1", "role": "WREADY" }} , 
 	{ "name": "m_axi_bv1_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "bv1", "role": "WDATA" }} , 
 	{ "name": "m_axi_bv1_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bv1", "role": "WSTRB" }} , 
 	{ "name": "m_axi_bv1_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bv1", "role": "WLAST" }} , 
 	{ "name": "m_axi_bv1_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bv1", "role": "WID" }} , 
 	{ "name": "m_axi_bv1_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bv1", "role": "WUSER" }} , 
 	{ "name": "m_axi_bv1_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bv1", "role": "ARVALID" }} , 
 	{ "name": "m_axi_bv1_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bv1", "role": "ARREADY" }} , 
 	{ "name": "m_axi_bv1_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "bv1", "role": "ARADDR" }} , 
 	{ "name": "m_axi_bv1_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bv1", "role": "ARID" }} , 
 	{ "name": "m_axi_bv1_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bv1", "role": "ARLEN" }} , 
 	{ "name": "m_axi_bv1_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "bv1", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_bv1_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bv1", "role": "ARBURST" }} , 
 	{ "name": "m_axi_bv1_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bv1", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_bv1_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bv1", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_bv1_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "bv1", "role": "ARPROT" }} , 
 	{ "name": "m_axi_bv1_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bv1", "role": "ARQOS" }} , 
 	{ "name": "m_axi_bv1_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bv1", "role": "ARREGION" }} , 
 	{ "name": "m_axi_bv1_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bv1", "role": "ARUSER" }} , 
 	{ "name": "m_axi_bv1_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bv1", "role": "RVALID" }} , 
 	{ "name": "m_axi_bv1_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bv1", "role": "RREADY" }} , 
 	{ "name": "m_axi_bv1_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "bv1", "role": "RDATA" }} , 
 	{ "name": "m_axi_bv1_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bv1", "role": "RLAST" }} , 
 	{ "name": "m_axi_bv1_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bv1", "role": "RID" }} , 
 	{ "name": "m_axi_bv1_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bv1", "role": "RUSER" }} , 
 	{ "name": "m_axi_bv1_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bv1", "role": "RRESP" }} , 
 	{ "name": "m_axi_bv1_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bv1", "role": "BVALID" }} , 
 	{ "name": "m_axi_bv1_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bv1", "role": "BREADY" }} , 
 	{ "name": "m_axi_bv1_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bv1", "role": "BRESP" }} , 
 	{ "name": "m_axi_bv1_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bv1", "role": "BID" }} , 
 	{ "name": "m_axi_bv1_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bv1", "role": "BUSER" }} , 
 	{ "name": "m_axi_bv2_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bv2", "role": "AWVALID" }} , 
 	{ "name": "m_axi_bv2_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bv2", "role": "AWREADY" }} , 
 	{ "name": "m_axi_bv2_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "bv2", "role": "AWADDR" }} , 
 	{ "name": "m_axi_bv2_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bv2", "role": "AWID" }} , 
 	{ "name": "m_axi_bv2_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bv2", "role": "AWLEN" }} , 
 	{ "name": "m_axi_bv2_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "bv2", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_bv2_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bv2", "role": "AWBURST" }} , 
 	{ "name": "m_axi_bv2_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bv2", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_bv2_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bv2", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_bv2_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "bv2", "role": "AWPROT" }} , 
 	{ "name": "m_axi_bv2_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bv2", "role": "AWQOS" }} , 
 	{ "name": "m_axi_bv2_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bv2", "role": "AWREGION" }} , 
 	{ "name": "m_axi_bv2_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bv2", "role": "AWUSER" }} , 
 	{ "name": "m_axi_bv2_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bv2", "role": "WVALID" }} , 
 	{ "name": "m_axi_bv2_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bv2", "role": "WREADY" }} , 
 	{ "name": "m_axi_bv2_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "bv2", "role": "WDATA" }} , 
 	{ "name": "m_axi_bv2_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bv2", "role": "WSTRB" }} , 
 	{ "name": "m_axi_bv2_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bv2", "role": "WLAST" }} , 
 	{ "name": "m_axi_bv2_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bv2", "role": "WID" }} , 
 	{ "name": "m_axi_bv2_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bv2", "role": "WUSER" }} , 
 	{ "name": "m_axi_bv2_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bv2", "role": "ARVALID" }} , 
 	{ "name": "m_axi_bv2_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bv2", "role": "ARREADY" }} , 
 	{ "name": "m_axi_bv2_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "bv2", "role": "ARADDR" }} , 
 	{ "name": "m_axi_bv2_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bv2", "role": "ARID" }} , 
 	{ "name": "m_axi_bv2_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bv2", "role": "ARLEN" }} , 
 	{ "name": "m_axi_bv2_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "bv2", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_bv2_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bv2", "role": "ARBURST" }} , 
 	{ "name": "m_axi_bv2_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bv2", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_bv2_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bv2", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_bv2_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "bv2", "role": "ARPROT" }} , 
 	{ "name": "m_axi_bv2_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bv2", "role": "ARQOS" }} , 
 	{ "name": "m_axi_bv2_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bv2", "role": "ARREGION" }} , 
 	{ "name": "m_axi_bv2_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bv2", "role": "ARUSER" }} , 
 	{ "name": "m_axi_bv2_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bv2", "role": "RVALID" }} , 
 	{ "name": "m_axi_bv2_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bv2", "role": "RREADY" }} , 
 	{ "name": "m_axi_bv2_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "bv2", "role": "RDATA" }} , 
 	{ "name": "m_axi_bv2_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bv2", "role": "RLAST" }} , 
 	{ "name": "m_axi_bv2_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bv2", "role": "RID" }} , 
 	{ "name": "m_axi_bv2_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bv2", "role": "RUSER" }} , 
 	{ "name": "m_axi_bv2_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bv2", "role": "RRESP" }} , 
 	{ "name": "m_axi_bv2_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bv2", "role": "BVALID" }} , 
 	{ "name": "m_axi_bv2_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bv2", "role": "BREADY" }} , 
 	{ "name": "m_axi_bv2_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bv2", "role": "BRESP" }} , 
 	{ "name": "m_axi_bv2_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bv2", "role": "BID" }} , 
 	{ "name": "m_axi_bv2_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bv2", "role": "BUSER" }} , 
 	{ "name": "m_axi_bv3_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bv3", "role": "AWVALID" }} , 
 	{ "name": "m_axi_bv3_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bv3", "role": "AWREADY" }} , 
 	{ "name": "m_axi_bv3_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "bv3", "role": "AWADDR" }} , 
 	{ "name": "m_axi_bv3_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bv3", "role": "AWID" }} , 
 	{ "name": "m_axi_bv3_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bv3", "role": "AWLEN" }} , 
 	{ "name": "m_axi_bv3_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "bv3", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_bv3_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bv3", "role": "AWBURST" }} , 
 	{ "name": "m_axi_bv3_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bv3", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_bv3_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bv3", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_bv3_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "bv3", "role": "AWPROT" }} , 
 	{ "name": "m_axi_bv3_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bv3", "role": "AWQOS" }} , 
 	{ "name": "m_axi_bv3_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bv3", "role": "AWREGION" }} , 
 	{ "name": "m_axi_bv3_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bv3", "role": "AWUSER" }} , 
 	{ "name": "m_axi_bv3_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bv3", "role": "WVALID" }} , 
 	{ "name": "m_axi_bv3_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bv3", "role": "WREADY" }} , 
 	{ "name": "m_axi_bv3_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "bv3", "role": "WDATA" }} , 
 	{ "name": "m_axi_bv3_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bv3", "role": "WSTRB" }} , 
 	{ "name": "m_axi_bv3_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bv3", "role": "WLAST" }} , 
 	{ "name": "m_axi_bv3_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bv3", "role": "WID" }} , 
 	{ "name": "m_axi_bv3_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bv3", "role": "WUSER" }} , 
 	{ "name": "m_axi_bv3_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bv3", "role": "ARVALID" }} , 
 	{ "name": "m_axi_bv3_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bv3", "role": "ARREADY" }} , 
 	{ "name": "m_axi_bv3_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "bv3", "role": "ARADDR" }} , 
 	{ "name": "m_axi_bv3_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bv3", "role": "ARID" }} , 
 	{ "name": "m_axi_bv3_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bv3", "role": "ARLEN" }} , 
 	{ "name": "m_axi_bv3_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "bv3", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_bv3_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bv3", "role": "ARBURST" }} , 
 	{ "name": "m_axi_bv3_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bv3", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_bv3_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bv3", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_bv3_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "bv3", "role": "ARPROT" }} , 
 	{ "name": "m_axi_bv3_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bv3", "role": "ARQOS" }} , 
 	{ "name": "m_axi_bv3_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bv3", "role": "ARREGION" }} , 
 	{ "name": "m_axi_bv3_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bv3", "role": "ARUSER" }} , 
 	{ "name": "m_axi_bv3_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bv3", "role": "RVALID" }} , 
 	{ "name": "m_axi_bv3_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bv3", "role": "RREADY" }} , 
 	{ "name": "m_axi_bv3_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "bv3", "role": "RDATA" }} , 
 	{ "name": "m_axi_bv3_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bv3", "role": "RLAST" }} , 
 	{ "name": "m_axi_bv3_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bv3", "role": "RID" }} , 
 	{ "name": "m_axi_bv3_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bv3", "role": "RUSER" }} , 
 	{ "name": "m_axi_bv3_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bv3", "role": "RRESP" }} , 
 	{ "name": "m_axi_bv3_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bv3", "role": "BVALID" }} , 
 	{ "name": "m_axi_bv3_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bv3", "role": "BREADY" }} , 
 	{ "name": "m_axi_bv3_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bv3", "role": "BRESP" }} , 
 	{ "name": "m_axi_bv3_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bv3", "role": "BID" }} , 
 	{ "name": "m_axi_bv3_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bv3", "role": "BUSER" }} , 
 	{ "name": "m_axi_bv4_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bv4", "role": "AWVALID" }} , 
 	{ "name": "m_axi_bv4_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bv4", "role": "AWREADY" }} , 
 	{ "name": "m_axi_bv4_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "bv4", "role": "AWADDR" }} , 
 	{ "name": "m_axi_bv4_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bv4", "role": "AWID" }} , 
 	{ "name": "m_axi_bv4_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bv4", "role": "AWLEN" }} , 
 	{ "name": "m_axi_bv4_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "bv4", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_bv4_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bv4", "role": "AWBURST" }} , 
 	{ "name": "m_axi_bv4_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bv4", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_bv4_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bv4", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_bv4_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "bv4", "role": "AWPROT" }} , 
 	{ "name": "m_axi_bv4_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bv4", "role": "AWQOS" }} , 
 	{ "name": "m_axi_bv4_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bv4", "role": "AWREGION" }} , 
 	{ "name": "m_axi_bv4_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bv4", "role": "AWUSER" }} , 
 	{ "name": "m_axi_bv4_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bv4", "role": "WVALID" }} , 
 	{ "name": "m_axi_bv4_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bv4", "role": "WREADY" }} , 
 	{ "name": "m_axi_bv4_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "bv4", "role": "WDATA" }} , 
 	{ "name": "m_axi_bv4_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bv4", "role": "WSTRB" }} , 
 	{ "name": "m_axi_bv4_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bv4", "role": "WLAST" }} , 
 	{ "name": "m_axi_bv4_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bv4", "role": "WID" }} , 
 	{ "name": "m_axi_bv4_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bv4", "role": "WUSER" }} , 
 	{ "name": "m_axi_bv4_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bv4", "role": "ARVALID" }} , 
 	{ "name": "m_axi_bv4_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bv4", "role": "ARREADY" }} , 
 	{ "name": "m_axi_bv4_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "bv4", "role": "ARADDR" }} , 
 	{ "name": "m_axi_bv4_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bv4", "role": "ARID" }} , 
 	{ "name": "m_axi_bv4_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bv4", "role": "ARLEN" }} , 
 	{ "name": "m_axi_bv4_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "bv4", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_bv4_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bv4", "role": "ARBURST" }} , 
 	{ "name": "m_axi_bv4_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bv4", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_bv4_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bv4", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_bv4_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "bv4", "role": "ARPROT" }} , 
 	{ "name": "m_axi_bv4_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bv4", "role": "ARQOS" }} , 
 	{ "name": "m_axi_bv4_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bv4", "role": "ARREGION" }} , 
 	{ "name": "m_axi_bv4_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bv4", "role": "ARUSER" }} , 
 	{ "name": "m_axi_bv4_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bv4", "role": "RVALID" }} , 
 	{ "name": "m_axi_bv4_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bv4", "role": "RREADY" }} , 
 	{ "name": "m_axi_bv4_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "bv4", "role": "RDATA" }} , 
 	{ "name": "m_axi_bv4_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bv4", "role": "RLAST" }} , 
 	{ "name": "m_axi_bv4_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bv4", "role": "RID" }} , 
 	{ "name": "m_axi_bv4_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bv4", "role": "RUSER" }} , 
 	{ "name": "m_axi_bv4_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bv4", "role": "RRESP" }} , 
 	{ "name": "m_axi_bv4_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bv4", "role": "BVALID" }} , 
 	{ "name": "m_axi_bv4_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bv4", "role": "BREADY" }} , 
 	{ "name": "m_axi_bv4_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bv4", "role": "BRESP" }} , 
 	{ "name": "m_axi_bv4_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bv4", "role": "BID" }} , 
 	{ "name": "m_axi_bv4_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bv4", "role": "BUSER" }} , 
 	{ "name": "m_axi_bval1_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bval1", "role": "AWVALID" }} , 
 	{ "name": "m_axi_bval1_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bval1", "role": "AWREADY" }} , 
 	{ "name": "m_axi_bval1_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "bval1", "role": "AWADDR" }} , 
 	{ "name": "m_axi_bval1_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bval1", "role": "AWID" }} , 
 	{ "name": "m_axi_bval1_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bval1", "role": "AWLEN" }} , 
 	{ "name": "m_axi_bval1_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "bval1", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_bval1_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bval1", "role": "AWBURST" }} , 
 	{ "name": "m_axi_bval1_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bval1", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_bval1_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bval1", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_bval1_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "bval1", "role": "AWPROT" }} , 
 	{ "name": "m_axi_bval1_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bval1", "role": "AWQOS" }} , 
 	{ "name": "m_axi_bval1_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bval1", "role": "AWREGION" }} , 
 	{ "name": "m_axi_bval1_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bval1", "role": "AWUSER" }} , 
 	{ "name": "m_axi_bval1_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bval1", "role": "WVALID" }} , 
 	{ "name": "m_axi_bval1_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bval1", "role": "WREADY" }} , 
 	{ "name": "m_axi_bval1_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "bval1", "role": "WDATA" }} , 
 	{ "name": "m_axi_bval1_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bval1", "role": "WSTRB" }} , 
 	{ "name": "m_axi_bval1_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bval1", "role": "WLAST" }} , 
 	{ "name": "m_axi_bval1_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bval1", "role": "WID" }} , 
 	{ "name": "m_axi_bval1_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bval1", "role": "WUSER" }} , 
 	{ "name": "m_axi_bval1_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bval1", "role": "ARVALID" }} , 
 	{ "name": "m_axi_bval1_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bval1", "role": "ARREADY" }} , 
 	{ "name": "m_axi_bval1_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "bval1", "role": "ARADDR" }} , 
 	{ "name": "m_axi_bval1_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bval1", "role": "ARID" }} , 
 	{ "name": "m_axi_bval1_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bval1", "role": "ARLEN" }} , 
 	{ "name": "m_axi_bval1_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "bval1", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_bval1_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bval1", "role": "ARBURST" }} , 
 	{ "name": "m_axi_bval1_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bval1", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_bval1_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bval1", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_bval1_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "bval1", "role": "ARPROT" }} , 
 	{ "name": "m_axi_bval1_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bval1", "role": "ARQOS" }} , 
 	{ "name": "m_axi_bval1_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bval1", "role": "ARREGION" }} , 
 	{ "name": "m_axi_bval1_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bval1", "role": "ARUSER" }} , 
 	{ "name": "m_axi_bval1_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bval1", "role": "RVALID" }} , 
 	{ "name": "m_axi_bval1_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bval1", "role": "RREADY" }} , 
 	{ "name": "m_axi_bval1_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "bval1", "role": "RDATA" }} , 
 	{ "name": "m_axi_bval1_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bval1", "role": "RLAST" }} , 
 	{ "name": "m_axi_bval1_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bval1", "role": "RID" }} , 
 	{ "name": "m_axi_bval1_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bval1", "role": "RUSER" }} , 
 	{ "name": "m_axi_bval1_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bval1", "role": "RRESP" }} , 
 	{ "name": "m_axi_bval1_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bval1", "role": "BVALID" }} , 
 	{ "name": "m_axi_bval1_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bval1", "role": "BREADY" }} , 
 	{ "name": "m_axi_bval1_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bval1", "role": "BRESP" }} , 
 	{ "name": "m_axi_bval1_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bval1", "role": "BID" }} , 
 	{ "name": "m_axi_bval1_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bval1", "role": "BUSER" }} , 
 	{ "name": "m_axi_bval2_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bval2", "role": "AWVALID" }} , 
 	{ "name": "m_axi_bval2_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bval2", "role": "AWREADY" }} , 
 	{ "name": "m_axi_bval2_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "bval2", "role": "AWADDR" }} , 
 	{ "name": "m_axi_bval2_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bval2", "role": "AWID" }} , 
 	{ "name": "m_axi_bval2_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bval2", "role": "AWLEN" }} , 
 	{ "name": "m_axi_bval2_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "bval2", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_bval2_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bval2", "role": "AWBURST" }} , 
 	{ "name": "m_axi_bval2_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bval2", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_bval2_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bval2", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_bval2_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "bval2", "role": "AWPROT" }} , 
 	{ "name": "m_axi_bval2_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bval2", "role": "AWQOS" }} , 
 	{ "name": "m_axi_bval2_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bval2", "role": "AWREGION" }} , 
 	{ "name": "m_axi_bval2_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bval2", "role": "AWUSER" }} , 
 	{ "name": "m_axi_bval2_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bval2", "role": "WVALID" }} , 
 	{ "name": "m_axi_bval2_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bval2", "role": "WREADY" }} , 
 	{ "name": "m_axi_bval2_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "bval2", "role": "WDATA" }} , 
 	{ "name": "m_axi_bval2_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bval2", "role": "WSTRB" }} , 
 	{ "name": "m_axi_bval2_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bval2", "role": "WLAST" }} , 
 	{ "name": "m_axi_bval2_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bval2", "role": "WID" }} , 
 	{ "name": "m_axi_bval2_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bval2", "role": "WUSER" }} , 
 	{ "name": "m_axi_bval2_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bval2", "role": "ARVALID" }} , 
 	{ "name": "m_axi_bval2_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bval2", "role": "ARREADY" }} , 
 	{ "name": "m_axi_bval2_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "bval2", "role": "ARADDR" }} , 
 	{ "name": "m_axi_bval2_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bval2", "role": "ARID" }} , 
 	{ "name": "m_axi_bval2_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bval2", "role": "ARLEN" }} , 
 	{ "name": "m_axi_bval2_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "bval2", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_bval2_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bval2", "role": "ARBURST" }} , 
 	{ "name": "m_axi_bval2_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bval2", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_bval2_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bval2", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_bval2_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "bval2", "role": "ARPROT" }} , 
 	{ "name": "m_axi_bval2_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bval2", "role": "ARQOS" }} , 
 	{ "name": "m_axi_bval2_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bval2", "role": "ARREGION" }} , 
 	{ "name": "m_axi_bval2_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bval2", "role": "ARUSER" }} , 
 	{ "name": "m_axi_bval2_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bval2", "role": "RVALID" }} , 
 	{ "name": "m_axi_bval2_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bval2", "role": "RREADY" }} , 
 	{ "name": "m_axi_bval2_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "bval2", "role": "RDATA" }} , 
 	{ "name": "m_axi_bval2_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bval2", "role": "RLAST" }} , 
 	{ "name": "m_axi_bval2_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bval2", "role": "RID" }} , 
 	{ "name": "m_axi_bval2_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bval2", "role": "RUSER" }} , 
 	{ "name": "m_axi_bval2_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bval2", "role": "RRESP" }} , 
 	{ "name": "m_axi_bval2_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bval2", "role": "BVALID" }} , 
 	{ "name": "m_axi_bval2_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bval2", "role": "BREADY" }} , 
 	{ "name": "m_axi_bval2_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bval2", "role": "BRESP" }} , 
 	{ "name": "m_axi_bval2_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bval2", "role": "BID" }} , 
 	{ "name": "m_axi_bval2_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bval2", "role": "BUSER" }} , 
 	{ "name": "m_axi_bval3_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bval3", "role": "AWVALID" }} , 
 	{ "name": "m_axi_bval3_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bval3", "role": "AWREADY" }} , 
 	{ "name": "m_axi_bval3_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "bval3", "role": "AWADDR" }} , 
 	{ "name": "m_axi_bval3_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bval3", "role": "AWID" }} , 
 	{ "name": "m_axi_bval3_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bval3", "role": "AWLEN" }} , 
 	{ "name": "m_axi_bval3_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "bval3", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_bval3_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bval3", "role": "AWBURST" }} , 
 	{ "name": "m_axi_bval3_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bval3", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_bval3_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bval3", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_bval3_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "bval3", "role": "AWPROT" }} , 
 	{ "name": "m_axi_bval3_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bval3", "role": "AWQOS" }} , 
 	{ "name": "m_axi_bval3_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bval3", "role": "AWREGION" }} , 
 	{ "name": "m_axi_bval3_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bval3", "role": "AWUSER" }} , 
 	{ "name": "m_axi_bval3_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bval3", "role": "WVALID" }} , 
 	{ "name": "m_axi_bval3_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bval3", "role": "WREADY" }} , 
 	{ "name": "m_axi_bval3_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "bval3", "role": "WDATA" }} , 
 	{ "name": "m_axi_bval3_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bval3", "role": "WSTRB" }} , 
 	{ "name": "m_axi_bval3_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bval3", "role": "WLAST" }} , 
 	{ "name": "m_axi_bval3_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bval3", "role": "WID" }} , 
 	{ "name": "m_axi_bval3_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bval3", "role": "WUSER" }} , 
 	{ "name": "m_axi_bval3_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bval3", "role": "ARVALID" }} , 
 	{ "name": "m_axi_bval3_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bval3", "role": "ARREADY" }} , 
 	{ "name": "m_axi_bval3_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "bval3", "role": "ARADDR" }} , 
 	{ "name": "m_axi_bval3_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bval3", "role": "ARID" }} , 
 	{ "name": "m_axi_bval3_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bval3", "role": "ARLEN" }} , 
 	{ "name": "m_axi_bval3_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "bval3", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_bval3_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bval3", "role": "ARBURST" }} , 
 	{ "name": "m_axi_bval3_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bval3", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_bval3_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bval3", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_bval3_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "bval3", "role": "ARPROT" }} , 
 	{ "name": "m_axi_bval3_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bval3", "role": "ARQOS" }} , 
 	{ "name": "m_axi_bval3_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bval3", "role": "ARREGION" }} , 
 	{ "name": "m_axi_bval3_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bval3", "role": "ARUSER" }} , 
 	{ "name": "m_axi_bval3_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bval3", "role": "RVALID" }} , 
 	{ "name": "m_axi_bval3_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bval3", "role": "RREADY" }} , 
 	{ "name": "m_axi_bval3_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "bval3", "role": "RDATA" }} , 
 	{ "name": "m_axi_bval3_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bval3", "role": "RLAST" }} , 
 	{ "name": "m_axi_bval3_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bval3", "role": "RID" }} , 
 	{ "name": "m_axi_bval3_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bval3", "role": "RUSER" }} , 
 	{ "name": "m_axi_bval3_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bval3", "role": "RRESP" }} , 
 	{ "name": "m_axi_bval3_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bval3", "role": "BVALID" }} , 
 	{ "name": "m_axi_bval3_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bval3", "role": "BREADY" }} , 
 	{ "name": "m_axi_bval3_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bval3", "role": "BRESP" }} , 
 	{ "name": "m_axi_bval3_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bval3", "role": "BID" }} , 
 	{ "name": "m_axi_bval3_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bval3", "role": "BUSER" }} , 
 	{ "name": "m_axi_bval4_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bval4", "role": "AWVALID" }} , 
 	{ "name": "m_axi_bval4_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bval4", "role": "AWREADY" }} , 
 	{ "name": "m_axi_bval4_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "bval4", "role": "AWADDR" }} , 
 	{ "name": "m_axi_bval4_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bval4", "role": "AWID" }} , 
 	{ "name": "m_axi_bval4_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bval4", "role": "AWLEN" }} , 
 	{ "name": "m_axi_bval4_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "bval4", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_bval4_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bval4", "role": "AWBURST" }} , 
 	{ "name": "m_axi_bval4_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bval4", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_bval4_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bval4", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_bval4_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "bval4", "role": "AWPROT" }} , 
 	{ "name": "m_axi_bval4_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bval4", "role": "AWQOS" }} , 
 	{ "name": "m_axi_bval4_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bval4", "role": "AWREGION" }} , 
 	{ "name": "m_axi_bval4_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bval4", "role": "AWUSER" }} , 
 	{ "name": "m_axi_bval4_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bval4", "role": "WVALID" }} , 
 	{ "name": "m_axi_bval4_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bval4", "role": "WREADY" }} , 
 	{ "name": "m_axi_bval4_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "bval4", "role": "WDATA" }} , 
 	{ "name": "m_axi_bval4_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bval4", "role": "WSTRB" }} , 
 	{ "name": "m_axi_bval4_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bval4", "role": "WLAST" }} , 
 	{ "name": "m_axi_bval4_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bval4", "role": "WID" }} , 
 	{ "name": "m_axi_bval4_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bval4", "role": "WUSER" }} , 
 	{ "name": "m_axi_bval4_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bval4", "role": "ARVALID" }} , 
 	{ "name": "m_axi_bval4_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bval4", "role": "ARREADY" }} , 
 	{ "name": "m_axi_bval4_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "bval4", "role": "ARADDR" }} , 
 	{ "name": "m_axi_bval4_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bval4", "role": "ARID" }} , 
 	{ "name": "m_axi_bval4_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bval4", "role": "ARLEN" }} , 
 	{ "name": "m_axi_bval4_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "bval4", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_bval4_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bval4", "role": "ARBURST" }} , 
 	{ "name": "m_axi_bval4_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bval4", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_bval4_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bval4", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_bval4_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "bval4", "role": "ARPROT" }} , 
 	{ "name": "m_axi_bval4_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bval4", "role": "ARQOS" }} , 
 	{ "name": "m_axi_bval4_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bval4", "role": "ARREGION" }} , 
 	{ "name": "m_axi_bval4_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bval4", "role": "ARUSER" }} , 
 	{ "name": "m_axi_bval4_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bval4", "role": "RVALID" }} , 
 	{ "name": "m_axi_bval4_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bval4", "role": "RREADY" }} , 
 	{ "name": "m_axi_bval4_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "bval4", "role": "RDATA" }} , 
 	{ "name": "m_axi_bval4_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bval4", "role": "RLAST" }} , 
 	{ "name": "m_axi_bval4_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bval4", "role": "RID" }} , 
 	{ "name": "m_axi_bval4_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bval4", "role": "RUSER" }} , 
 	{ "name": "m_axi_bval4_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bval4", "role": "RRESP" }} , 
 	{ "name": "m_axi_bval4_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bval4", "role": "BVALID" }} , 
 	{ "name": "m_axi_bval4_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bval4", "role": "BREADY" }} , 
 	{ "name": "m_axi_bval4_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bval4", "role": "BRESP" }} , 
 	{ "name": "m_axi_bval4_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bval4", "role": "BID" }} , 
 	{ "name": "m_axi_bval4_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bval4", "role": "BUSER" }} , 
 	{ "name": "m_axi_ccid_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ccid", "role": "AWVALID" }} , 
 	{ "name": "m_axi_ccid_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ccid", "role": "AWREADY" }} , 
 	{ "name": "m_axi_ccid_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "ccid", "role": "AWADDR" }} , 
 	{ "name": "m_axi_ccid_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ccid", "role": "AWID" }} , 
 	{ "name": "m_axi_ccid_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ccid", "role": "AWLEN" }} , 
 	{ "name": "m_axi_ccid_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "ccid", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_ccid_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "ccid", "role": "AWBURST" }} , 
 	{ "name": "m_axi_ccid_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "ccid", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_ccid_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "ccid", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_ccid_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "ccid", "role": "AWPROT" }} , 
 	{ "name": "m_axi_ccid_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "ccid", "role": "AWQOS" }} , 
 	{ "name": "m_axi_ccid_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "ccid", "role": "AWREGION" }} , 
 	{ "name": "m_axi_ccid_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ccid", "role": "AWUSER" }} , 
 	{ "name": "m_axi_ccid_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ccid", "role": "WVALID" }} , 
 	{ "name": "m_axi_ccid_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ccid", "role": "WREADY" }} , 
 	{ "name": "m_axi_ccid_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ccid", "role": "WDATA" }} , 
 	{ "name": "m_axi_ccid_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "ccid", "role": "WSTRB" }} , 
 	{ "name": "m_axi_ccid_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ccid", "role": "WLAST" }} , 
 	{ "name": "m_axi_ccid_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ccid", "role": "WID" }} , 
 	{ "name": "m_axi_ccid_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ccid", "role": "WUSER" }} , 
 	{ "name": "m_axi_ccid_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ccid", "role": "ARVALID" }} , 
 	{ "name": "m_axi_ccid_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ccid", "role": "ARREADY" }} , 
 	{ "name": "m_axi_ccid_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "ccid", "role": "ARADDR" }} , 
 	{ "name": "m_axi_ccid_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ccid", "role": "ARID" }} , 
 	{ "name": "m_axi_ccid_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ccid", "role": "ARLEN" }} , 
 	{ "name": "m_axi_ccid_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "ccid", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_ccid_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "ccid", "role": "ARBURST" }} , 
 	{ "name": "m_axi_ccid_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "ccid", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_ccid_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "ccid", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_ccid_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "ccid", "role": "ARPROT" }} , 
 	{ "name": "m_axi_ccid_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "ccid", "role": "ARQOS" }} , 
 	{ "name": "m_axi_ccid_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "ccid", "role": "ARREGION" }} , 
 	{ "name": "m_axi_ccid_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ccid", "role": "ARUSER" }} , 
 	{ "name": "m_axi_ccid_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ccid", "role": "RVALID" }} , 
 	{ "name": "m_axi_ccid_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ccid", "role": "RREADY" }} , 
 	{ "name": "m_axi_ccid_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ccid", "role": "RDATA" }} , 
 	{ "name": "m_axi_ccid_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ccid", "role": "RLAST" }} , 
 	{ "name": "m_axi_ccid_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ccid", "role": "RID" }} , 
 	{ "name": "m_axi_ccid_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ccid", "role": "RUSER" }} , 
 	{ "name": "m_axi_ccid_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "ccid", "role": "RRESP" }} , 
 	{ "name": "m_axi_ccid_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ccid", "role": "BVALID" }} , 
 	{ "name": "m_axi_ccid_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ccid", "role": "BREADY" }} , 
 	{ "name": "m_axi_ccid_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "ccid", "role": "BRESP" }} , 
 	{ "name": "m_axi_ccid_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ccid", "role": "BID" }} , 
 	{ "name": "m_axi_ccid_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ccid", "role": "BUSER" }} , 
 	{ "name": "m_axi_crcsr_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "crcsr", "role": "AWVALID" }} , 
 	{ "name": "m_axi_crcsr_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "crcsr", "role": "AWREADY" }} , 
 	{ "name": "m_axi_crcsr_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "crcsr", "role": "AWADDR" }} , 
 	{ "name": "m_axi_crcsr_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "crcsr", "role": "AWID" }} , 
 	{ "name": "m_axi_crcsr_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "crcsr", "role": "AWLEN" }} , 
 	{ "name": "m_axi_crcsr_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "crcsr", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_crcsr_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "crcsr", "role": "AWBURST" }} , 
 	{ "name": "m_axi_crcsr_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "crcsr", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_crcsr_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "crcsr", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_crcsr_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "crcsr", "role": "AWPROT" }} , 
 	{ "name": "m_axi_crcsr_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "crcsr", "role": "AWQOS" }} , 
 	{ "name": "m_axi_crcsr_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "crcsr", "role": "AWREGION" }} , 
 	{ "name": "m_axi_crcsr_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "crcsr", "role": "AWUSER" }} , 
 	{ "name": "m_axi_crcsr_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "crcsr", "role": "WVALID" }} , 
 	{ "name": "m_axi_crcsr_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "crcsr", "role": "WREADY" }} , 
 	{ "name": "m_axi_crcsr_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "crcsr", "role": "WDATA" }} , 
 	{ "name": "m_axi_crcsr_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "crcsr", "role": "WSTRB" }} , 
 	{ "name": "m_axi_crcsr_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "crcsr", "role": "WLAST" }} , 
 	{ "name": "m_axi_crcsr_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "crcsr", "role": "WID" }} , 
 	{ "name": "m_axi_crcsr_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "crcsr", "role": "WUSER" }} , 
 	{ "name": "m_axi_crcsr_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "crcsr", "role": "ARVALID" }} , 
 	{ "name": "m_axi_crcsr_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "crcsr", "role": "ARREADY" }} , 
 	{ "name": "m_axi_crcsr_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "crcsr", "role": "ARADDR" }} , 
 	{ "name": "m_axi_crcsr_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "crcsr", "role": "ARID" }} , 
 	{ "name": "m_axi_crcsr_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "crcsr", "role": "ARLEN" }} , 
 	{ "name": "m_axi_crcsr_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "crcsr", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_crcsr_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "crcsr", "role": "ARBURST" }} , 
 	{ "name": "m_axi_crcsr_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "crcsr", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_crcsr_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "crcsr", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_crcsr_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "crcsr", "role": "ARPROT" }} , 
 	{ "name": "m_axi_crcsr_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "crcsr", "role": "ARQOS" }} , 
 	{ "name": "m_axi_crcsr_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "crcsr", "role": "ARREGION" }} , 
 	{ "name": "m_axi_crcsr_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "crcsr", "role": "ARUSER" }} , 
 	{ "name": "m_axi_crcsr_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "crcsr", "role": "RVALID" }} , 
 	{ "name": "m_axi_crcsr_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "crcsr", "role": "RREADY" }} , 
 	{ "name": "m_axi_crcsr_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "crcsr", "role": "RDATA" }} , 
 	{ "name": "m_axi_crcsr_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "crcsr", "role": "RLAST" }} , 
 	{ "name": "m_axi_crcsr_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "crcsr", "role": "RID" }} , 
 	{ "name": "m_axi_crcsr_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "crcsr", "role": "RUSER" }} , 
 	{ "name": "m_axi_crcsr_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "crcsr", "role": "RRESP" }} , 
 	{ "name": "m_axi_crcsr_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "crcsr", "role": "BVALID" }} , 
 	{ "name": "m_axi_crcsr_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "crcsr", "role": "BREADY" }} , 
 	{ "name": "m_axi_crcsr_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "crcsr", "role": "BRESP" }} , 
 	{ "name": "m_axi_crcsr_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "crcsr", "role": "BID" }} , 
 	{ "name": "m_axi_crcsr_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "crcsr", "role": "BUSER" }} , 
 	{ "name": "m_axi_cval_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cval", "role": "AWVALID" }} , 
 	{ "name": "m_axi_cval_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cval", "role": "AWREADY" }} , 
 	{ "name": "m_axi_cval_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "cval", "role": "AWADDR" }} , 
 	{ "name": "m_axi_cval_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "cval", "role": "AWID" }} , 
 	{ "name": "m_axi_cval_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "cval", "role": "AWLEN" }} , 
 	{ "name": "m_axi_cval_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "cval", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_cval_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "cval", "role": "AWBURST" }} , 
 	{ "name": "m_axi_cval_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "cval", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_cval_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "cval", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_cval_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "cval", "role": "AWPROT" }} , 
 	{ "name": "m_axi_cval_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "cval", "role": "AWQOS" }} , 
 	{ "name": "m_axi_cval_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "cval", "role": "AWREGION" }} , 
 	{ "name": "m_axi_cval_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "cval", "role": "AWUSER" }} , 
 	{ "name": "m_axi_cval_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cval", "role": "WVALID" }} , 
 	{ "name": "m_axi_cval_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cval", "role": "WREADY" }} , 
 	{ "name": "m_axi_cval_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "cval", "role": "WDATA" }} , 
 	{ "name": "m_axi_cval_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "cval", "role": "WSTRB" }} , 
 	{ "name": "m_axi_cval_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cval", "role": "WLAST" }} , 
 	{ "name": "m_axi_cval_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "cval", "role": "WID" }} , 
 	{ "name": "m_axi_cval_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "cval", "role": "WUSER" }} , 
 	{ "name": "m_axi_cval_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cval", "role": "ARVALID" }} , 
 	{ "name": "m_axi_cval_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cval", "role": "ARREADY" }} , 
 	{ "name": "m_axi_cval_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "cval", "role": "ARADDR" }} , 
 	{ "name": "m_axi_cval_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "cval", "role": "ARID" }} , 
 	{ "name": "m_axi_cval_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "cval", "role": "ARLEN" }} , 
 	{ "name": "m_axi_cval_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "cval", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_cval_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "cval", "role": "ARBURST" }} , 
 	{ "name": "m_axi_cval_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "cval", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_cval_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "cval", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_cval_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "cval", "role": "ARPROT" }} , 
 	{ "name": "m_axi_cval_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "cval", "role": "ARQOS" }} , 
 	{ "name": "m_axi_cval_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "cval", "role": "ARREGION" }} , 
 	{ "name": "m_axi_cval_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "cval", "role": "ARUSER" }} , 
 	{ "name": "m_axi_cval_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cval", "role": "RVALID" }} , 
 	{ "name": "m_axi_cval_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cval", "role": "RREADY" }} , 
 	{ "name": "m_axi_cval_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "cval", "role": "RDATA" }} , 
 	{ "name": "m_axi_cval_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cval", "role": "RLAST" }} , 
 	{ "name": "m_axi_cval_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "cval", "role": "RID" }} , 
 	{ "name": "m_axi_cval_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "cval", "role": "RUSER" }} , 
 	{ "name": "m_axi_cval_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "cval", "role": "RRESP" }} , 
 	{ "name": "m_axi_cval_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cval", "role": "BVALID" }} , 
 	{ "name": "m_axi_cval_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cval", "role": "BREADY" }} , 
 	{ "name": "m_axi_cval_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "cval", "role": "BRESP" }} , 
 	{ "name": "m_axi_cval_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "cval", "role": "BID" }} , 
 	{ "name": "m_axi_cval_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "cval", "role": "BUSER" }}  ]}

set ArgLastReadFirstWriteLatency {
	spmm {
		arcsr {Type I LastRead 1 FirstWrite -1}
		acid {Type I LastRead 2 FirstWrite -1}
		aval {Type I LastRead 2 FirstWrite -1}
		brcsr1 {Type I LastRead 1 FirstWrite -1}
		brcsr2 {Type I LastRead 3 FirstWrite -1}
		brcsr3 {Type I LastRead 3 FirstWrite -1}
		brcsr4 {Type I LastRead 3 FirstWrite -1}
		bval1 {Type I LastRead 3 FirstWrite -1}
		bcid1 {Type I LastRead 3 FirstWrite -1}
		bval2 {Type I LastRead 3 FirstWrite -1}
		bcid2 {Type I LastRead 3 FirstWrite -1}
		bval3 {Type I LastRead 3 FirstWrite -1}
		bcid3 {Type I LastRead 3 FirstWrite -1}
		bval4 {Type I LastRead 3 FirstWrite -1}
		bcid4 {Type I LastRead 3 FirstWrite -1}
		bv1 {Type I LastRead 5 FirstWrite -1}
		bc1 {Type I LastRead 5 FirstWrite -1}
		bv2 {Type I LastRead 5 FirstWrite -1}
		bc2 {Type I LastRead 5 FirstWrite -1}
		bv3 {Type I LastRead 5 FirstWrite -1}
		bc3 {Type I LastRead 5 FirstWrite -1}
		bv4 {Type I LastRead 5 FirstWrite -1}
		bc4 {Type I LastRead 5 FirstWrite -1}
		crcsr {Type I LastRead 11 FirstWrite -1}
		ccid {Type I LastRead 32 FirstWrite -1}
		cval {Type IO LastRead 52 FirstWrite 51}
		A_rcsr {Type I LastRead 0 FirstWrite -1}
		A_cid {Type I LastRead 0 FirstWrite -1}
		A_val {Type I LastRead 0 FirstWrite -1}
		arnum {Type I LastRead 0 FirstWrite -1}
		atnum {Type I LastRead -1 FirstWrite -1}
		B_rcsr1 {Type I LastRead 0 FirstWrite -1}
		B_rcsr2 {Type I LastRead 0 FirstWrite -1}
		B_rcsr3 {Type I LastRead 0 FirstWrite -1}
		B_rcsr4 {Type I LastRead 0 FirstWrite -1}
		B_val1 {Type I LastRead 0 FirstWrite -1}
		B_cid1 {Type I LastRead 0 FirstWrite -1}
		B_val2 {Type I LastRead 0 FirstWrite -1}
		B_cid2 {Type I LastRead 0 FirstWrite -1}
		B_val3 {Type I LastRead 0 FirstWrite -1}
		B_cid3 {Type I LastRead 0 FirstWrite -1}
		B_val4 {Type I LastRead 0 FirstWrite -1}
		B_cid4 {Type I LastRead 0 FirstWrite -1}
		brnum {Type I LastRead 0 FirstWrite -1}
		btnum {Type I LastRead -1 FirstWrite -1}
		B_val_port1 {Type I LastRead 0 FirstWrite -1}
		B_cid_port1 {Type I LastRead 0 FirstWrite -1}
		B_val_port2 {Type I LastRead 0 FirstWrite -1}
		B_cid_port2 {Type I LastRead 0 FirstWrite -1}
		B_val_port3 {Type I LastRead 0 FirstWrite -1}
		B_cid_port3 {Type I LastRead 0 FirstWrite -1}
		B_val_port4 {Type I LastRead 0 FirstWrite -1}
		B_cid_port4 {Type I LastRead 0 FirstWrite -1}
		C_rcsr {Type I LastRead 0 FirstWrite -1}
		C_cid {Type I LastRead 0 FirstWrite -1}
		C_val {Type I LastRead 0 FirstWrite -1}
		B_rcsr_base {Type I LastRead 0 FirstWrite -1}
		B_val_base {Type I LastRead 0 FirstWrite -1}
		B_cid_base {Type I LastRead 0 FirstWrite -1}
		r1acc {Type O LastRead -1 FirstWrite 2}
		r1hit {Type O LastRead -1 FirstWrite 2}
		r2acc {Type O LastRead -1 FirstWrite 2}
		r2hit {Type O LastRead -1 FirstWrite 2}
		r3acc {Type O LastRead -1 FirstWrite 2}
		r3hit {Type O LastRead -1 FirstWrite 2}
		r4acc {Type O LastRead -1 FirstWrite 2}
		r4hit {Type O LastRead -1 FirstWrite 2}
		r5acc {Type I LastRead -1 FirstWrite -1}
		r5hit {Type I LastRead -1 FirstWrite -1}
		r6acc {Type I LastRead -1 FirstWrite -1}
		r6hit {Type I LastRead -1 FirstWrite -1}
		r7acc {Type I LastRead -1 FirstWrite -1}
		r7hit {Type I LastRead -1 FirstWrite -1}
		r8acc {Type I LastRead -1 FirstWrite -1}
		r8hit {Type I LastRead -1 FirstWrite -1}
		vc1acc {Type O LastRead -1 FirstWrite 2}
		vc1hit {Type O LastRead -1 FirstWrite 2}
		vc2acc {Type O LastRead -1 FirstWrite 2}
		vc2hit {Type O LastRead -1 FirstWrite 2}
		vc3acc {Type O LastRead -1 FirstWrite 2}
		vc3hit {Type O LastRead -1 FirstWrite 2}
		vc4acc {Type O LastRead -1 FirstWrite 2}
		vc4hit {Type O LastRead -1 FirstWrite 2}
		vc5acc {Type I LastRead -1 FirstWrite -1}
		vc5hit {Type I LastRead -1 FirstWrite -1}
		vc6acc {Type I LastRead -1 FirstWrite -1}
		vc6hit {Type I LastRead -1 FirstWrite -1}
		vc7acc {Type I LastRead -1 FirstWrite -1}
		vc7hit {Type I LastRead -1 FirstWrite -1}
		vc8acc {Type I LastRead -1 FirstWrite -1}
		vc8hit {Type I LastRead -1 FirstWrite -1}
		fnum {Type O LastRead -1 FirstWrite 10}
		workload_counter1 {Type O LastRead -1 FirstWrite 1}
		workload_counter2 {Type O LastRead -1 FirstWrite 1}
		workload_counter3 {Type O LastRead -1 FirstWrite 1}
		workload_counter4 {Type O LastRead -1 FirstWrite 1}}
	entry_proc {
		B_rcsr_base {Type I LastRead 0 FirstWrite -1}
		B_rcsr_base_c4 {Type O LastRead -1 FirstWrite 0}
		B_val_base {Type I LastRead 0 FirstWrite -1}
		B_val_base_c6 {Type O LastRead -1 FirstWrite 0}
		B_val_base_c7 {Type O LastRead -1 FirstWrite 0}
		B_val_base_c8 {Type O LastRead -1 FirstWrite 0}
		B_val_base_c9 {Type O LastRead -1 FirstWrite 0}
		B_val_base_c10 {Type O LastRead -1 FirstWrite 0}
		B_val_base_c11 {Type O LastRead -1 FirstWrite 0}
		B_val_base_c12 {Type O LastRead -1 FirstWrite 0}
		B_val_base_c13 {Type O LastRead -1 FirstWrite 0}
		B_cid_base {Type I LastRead 0 FirstWrite -1}
		B_cid_base_c15 {Type O LastRead -1 FirstWrite 0}
		B_cid_base_c16 {Type O LastRead -1 FirstWrite 0}
		B_cid_base_c17 {Type O LastRead -1 FirstWrite 0}
		B_cid_base_c18 {Type O LastRead -1 FirstWrite 0}
		B_cid_base_c19 {Type O LastRead -1 FirstWrite 0}
		B_cid_base_c20 {Type O LastRead -1 FirstWrite 0}
		B_cid_base_c21 {Type O LastRead -1 FirstWrite 0}
		B_cid_base_c22 {Type O LastRead -1 FirstWrite 0}}
	A_row_reader {
		arcsr {Type I LastRead 1 FirstWrite -1}
		A_rcsr {Type I LastRead 1 FirstWrite -1}
		rnum {Type I LastRead 0 FirstWrite -1}
		p_A_reader_rs {Type O LastRead -1 FirstWrite 2}}
	A_row_reader_Pipeline_VITIS_LOOP_13_1 {
		add_ln13 {Type I LastRead 0 FirstWrite -1}
		arcsr {Type I LastRead 1 FirstWrite -1}
		sext_ln13 {Type I LastRead 0 FirstWrite -1}
		p_A_reader_rs {Type O LastRead -1 FirstWrite 2}}
	prepare_b_rcsr {
		brcsr1 {Type I LastRead 1 FirstWrite -1}
		B_rcsr {Type I LastRead 0 FirstWrite -1}
		local_rcsr {Type IO LastRead 1 FirstWrite -1}
		brnum {Type I LastRead 10 FirstWrite -1}
		p_B_keep_col1 {Type O LastRead -1 FirstWrite 12}}
	prepare_b_rcsr_Pipeline_VITIS_LOOP_199_1 {
		brcsr1 {Type I LastRead 1 FirstWrite -1}
		sext_ln199 {Type I LastRead 0 FirstWrite -1}
		local_rcsr {Type O LastRead -1 FirstWrite 2}}
	prepare_b_rcsr_Pipeline_VITIS_LOOP_207_2 {
		zext_ln205 {Type I LastRead 0 FirstWrite -1}
		local_rcsr {Type I LastRead 1 FirstWrite -1}
		keep_mask_out {Type O LastRead -1 FirstWrite 1}}
	A_element_filter {
		aval {Type I LastRead 2 FirstWrite -1}
		A_val {Type I LastRead 0 FirstWrite -1}
		acid {Type I LastRead 2 FirstWrite -1}
		A_cid {Type I LastRead 0 FirstWrite -1}
		p_A_reader_rs {Type I LastRead 1 FirstWrite -1}
		brnum {Type I LastRead 0 FirstWrite -1}
		p_B_keep_col1 {Type I LastRead 0 FirstWrite -1}
		p_A_element_as {Type O LastRead -1 FirstWrite 2}}
	A_element_filter_Pipeline_VITIS_LOOP_64_2 {
		row_rlen {Type I LastRead 0 FirstWrite -1}
		acid {Type I LastRead 1 FirstWrite -1}
		sext_ln64 {Type I LastRead 0 FirstWrite -1}
		aval {Type I LastRead 2 FirstWrite -1}
		sext_ln64_1 {Type I LastRead 0 FirstWrite -1}
		brnum {Type I LastRead 0 FirstWrite -1}
		keep_col {Type I LastRead 0 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}
		p_A_element_as {Type O LastRead -1 FirstWrite 3}}
	A_element_distributor {
		p_A_element_as {Type I LastRead 1 FirstWrite -1}
		pe1_idle {Type I LastRead 3 FirstWrite -1}
		pe2_idle {Type I LastRead 3 FirstWrite -1}
		pe3_idle {Type I LastRead 3 FirstWrite -1}
		pe4_idle {Type I LastRead 3 FirstWrite -1}
		rm1_idle {Type I LastRead 3 FirstWrite -1}
		rm2_idle {Type I LastRead 3 FirstWrite -1}
		rm3_idle {Type I LastRead 3 FirstWrite -1}
		rm4_idle {Type I LastRead 3 FirstWrite -1}
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
		p_out {Type O LastRead -1 FirstWrite 1}}
	rcrequest_manager {
		rcache_stream1 {Type I LastRead 0 FirstWrite -1}
		rrequest1 {Type O LastRead -1 FirstWrite 1}
		rresponse1 {Type I LastRead 2 FirstWrite -1}
		rblock1 {Type O LastRead -1 FirstWrite 1}
		B_rcsr {Type I LastRead 0 FirstWrite -1}}
	rrequest_splitter {
		rcache_stream1 {Type I LastRead 0 FirstWrite -1}
		rrequest {Type O LastRead -1 FirstWrite 1}
		rcollec {Type O LastRead -1 FirstWrite 1}
		rscheduler {Type O LastRead -1 FirstWrite 1}}
	rrequest_splitter_Pipeline_VITIS_LOOP_9_1 {
		rcache_stream1 {Type I LastRead 0 FirstWrite -1}
		rrequest {Type O LastRead -1 FirstWrite 1}
		rcollec {Type O LastRead -1 FirstWrite 1}
		rscheduler {Type O LastRead -1 FirstWrite 1}
		temp_r_0_0_out {Type O LastRead -1 FirstWrite 0}
		temp_r_2_0_out {Type O LastRead -1 FirstWrite 0}
		temp_r_3_0_out {Type O LastRead -1 FirstWrite 0}
		temp_r_4_0_out {Type O LastRead -1 FirstWrite 0}
		temp_r_6_0_out {Type O LastRead -1 FirstWrite 0}}
	rrequest_manager {
		rrequest {Type I LastRead 0 FirstWrite -1}
		r_first {Type O LastRead -1 FirstWrite 1}}
	rrequest_manager_Pipeline_VITIS_LOOP_40_1 {
		rrequest {Type I LastRead 0 FirstWrite -1}
		r_first {Type O LastRead -1 FirstWrite 1}
		curr_request_0_0_out {Type O LastRead -1 FirstWrite 0}
		curr_request_3_0_out {Type O LastRead -1 FirstWrite 0}
		curr_request_4_0_out {Type O LastRead -1 FirstWrite 0}
		curr_request_6_0_out {Type O LastRead -1 FirstWrite 0}}
	rschedule_access {
		rscheduler {Type I LastRead 1 FirstWrite -1}
		rresponse1 {Type I LastRead 2 FirstWrite -1}
		roff {Type O LastRead -1 FirstWrite 3}
		off_pointer {Type I LastRead 0 FirstWrite -1}
		r_req {Type O LastRead -1 FirstWrite 1}}
	rschedule_access_Pipeline_VITIS_LOOP_87_3 {
		zext_ln87_1 {Type I LastRead 0 FirstWrite -1}
		add_ln87 {Type I LastRead 0 FirstWrite -1}
		off_pointer {Type I LastRead 0 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}
		Bridx {Type O LastRead -1 FirstWrite 1}}
	rrequest_merger {
		r_first {Type I LastRead 0 FirstWrite -1}
		r_req {Type I LastRead 0 FirstWrite -1}
		rrequest1 {Type O LastRead -1 FirstWrite 1}}
	rrequest_merger_Pipeline_VITIS_LOOP_125_1 {
		r_first {Type I LastRead 0 FirstWrite -1}
		rrequest1 {Type O LastRead -1 FirstWrite 1}
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
	rcollector {
		rcollec {Type I LastRead 1 FirstWrite -1}
		roff {Type I LastRead 2 FirstWrite -1}
		rblock1 {Type O LastRead -1 FirstWrite 1}}
	rcrequest_manager_87 {
		rcache_stream2 {Type I LastRead 0 FirstWrite -1}
		rrequest2 {Type O LastRead -1 FirstWrite 1}
		rresponse2 {Type I LastRead 2 FirstWrite -1}
		rblock2 {Type O LastRead -1 FirstWrite 1}
		brcsr2 {Type I LastRead 3 FirstWrite -1}
		B_rcsr {Type I LastRead 2 FirstWrite -1}}
	rrequest_splitter_75 {
		rcache_stream2 {Type I LastRead 0 FirstWrite -1}
		rrequest {Type O LastRead -1 FirstWrite 1}
		rcollec {Type O LastRead -1 FirstWrite 1}
		rscheduler {Type O LastRead -1 FirstWrite 1}}
	rrequest_splitter_75_Pipeline_VITIS_LOOP_9_1 {
		rcache_stream2 {Type I LastRead 0 FirstWrite -1}
		rrequest {Type O LastRead -1 FirstWrite 1}
		rcollec {Type O LastRead -1 FirstWrite 1}
		rscheduler {Type O LastRead -1 FirstWrite 1}
		temp_r_0_0_out {Type O LastRead -1 FirstWrite 0}
		temp_r_2_0_out {Type O LastRead -1 FirstWrite 0}
		temp_r_3_0_out {Type O LastRead -1 FirstWrite 0}
		temp_r_4_0_out {Type O LastRead -1 FirstWrite 0}
		temp_r_6_0_out {Type O LastRead -1 FirstWrite 0}}
	rrequest_manager_76 {
		rrequest {Type I LastRead 0 FirstWrite -1}
		r_first {Type O LastRead -1 FirstWrite 1}}
	rrequest_manager_76_Pipeline_VITIS_LOOP_40_1 {
		rrequest {Type I LastRead 0 FirstWrite -1}
		r_first {Type O LastRead -1 FirstWrite 1}
		curr_request_0_0_out {Type O LastRead -1 FirstWrite 0}
		curr_request_3_0_out {Type O LastRead -1 FirstWrite 0}
		curr_request_4_0_out {Type O LastRead -1 FirstWrite 0}
		curr_request_6_0_out {Type O LastRead -1 FirstWrite 0}}
	rschedule_access_96 {
		rscheduler {Type I LastRead 1 FirstWrite -1}
		rresponse2 {Type I LastRead 2 FirstWrite -1}
		roff {Type O LastRead -1 FirstWrite 3}
		brcsr2 {Type I LastRead 3 FirstWrite -1}
		off_pointer {Type I LastRead 0 FirstWrite -1}
		r_req {Type O LastRead -1 FirstWrite 1}}
	rschedule_access_96_Pipeline_VITIS_LOOP_87_3 {
		zext_ln87 {Type I LastRead 0 FirstWrite -1}
		add_ln87 {Type I LastRead 0 FirstWrite -1}
		brcsr2 {Type I LastRead 1 FirstWrite -1}
		sext_ln87 {Type I LastRead 0 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}
		Bridx {Type O LastRead -1 FirstWrite 2}}
	rrequest_merger_77 {
		r_first {Type I LastRead 0 FirstWrite -1}
		r_req {Type I LastRead 0 FirstWrite -1}
		rrequest2 {Type O LastRead -1 FirstWrite 1}}
	rrequest_merger_77_Pipeline_VITIS_LOOP_125_1 {
		r_first {Type I LastRead 0 FirstWrite -1}
		rrequest2 {Type O LastRead -1 FirstWrite 1}
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
	rcollector_78 {
		rcollec {Type I LastRead 1 FirstWrite -1}
		roff {Type I LastRead 2 FirstWrite -1}
		rblock2 {Type O LastRead -1 FirstWrite 1}}
	rcrequest_manager_88 {
		rcache_stream3 {Type I LastRead 0 FirstWrite -1}
		rrequest3 {Type O LastRead -1 FirstWrite 1}
		rresponse3 {Type I LastRead 2 FirstWrite -1}
		rblock3 {Type O LastRead -1 FirstWrite 1}
		brcsr3 {Type I LastRead 3 FirstWrite -1}
		B_rcsr {Type I LastRead 2 FirstWrite -1}}
	rrequest_splitter_79 {
		rcache_stream3 {Type I LastRead 0 FirstWrite -1}
		rrequest {Type O LastRead -1 FirstWrite 1}
		rcollec {Type O LastRead -1 FirstWrite 1}
		rscheduler {Type O LastRead -1 FirstWrite 1}}
	rrequest_splitter_79_Pipeline_VITIS_LOOP_9_1 {
		rcache_stream3 {Type I LastRead 0 FirstWrite -1}
		rrequest {Type O LastRead -1 FirstWrite 1}
		rcollec {Type O LastRead -1 FirstWrite 1}
		rscheduler {Type O LastRead -1 FirstWrite 1}
		temp_r_0_0_out {Type O LastRead -1 FirstWrite 0}
		temp_r_2_0_out {Type O LastRead -1 FirstWrite 0}
		temp_r_3_0_out {Type O LastRead -1 FirstWrite 0}
		temp_r_4_0_out {Type O LastRead -1 FirstWrite 0}
		temp_r_6_0_out {Type O LastRead -1 FirstWrite 0}}
	rrequest_manager_80 {
		rrequest {Type I LastRead 0 FirstWrite -1}
		r_first {Type O LastRead -1 FirstWrite 1}}
	rrequest_manager_80_Pipeline_VITIS_LOOP_40_1 {
		rrequest {Type I LastRead 0 FirstWrite -1}
		r_first {Type O LastRead -1 FirstWrite 1}
		curr_request_0_0_out {Type O LastRead -1 FirstWrite 0}
		curr_request_3_0_out {Type O LastRead -1 FirstWrite 0}
		curr_request_4_0_out {Type O LastRead -1 FirstWrite 0}
		curr_request_6_0_out {Type O LastRead -1 FirstWrite 0}}
	rschedule_access_97 {
		rscheduler {Type I LastRead 1 FirstWrite -1}
		rresponse3 {Type I LastRead 2 FirstWrite -1}
		roff {Type O LastRead -1 FirstWrite 3}
		brcsr3 {Type I LastRead 3 FirstWrite -1}
		off_pointer {Type I LastRead 0 FirstWrite -1}
		r_req {Type O LastRead -1 FirstWrite 1}}
	rschedule_access_97_Pipeline_VITIS_LOOP_87_3 {
		zext_ln87 {Type I LastRead 0 FirstWrite -1}
		add_ln87 {Type I LastRead 0 FirstWrite -1}
		brcsr3 {Type I LastRead 1 FirstWrite -1}
		sext_ln87 {Type I LastRead 0 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}
		Bridx {Type O LastRead -1 FirstWrite 2}}
	rrequest_merger_81 {
		r_first {Type I LastRead 0 FirstWrite -1}
		r_req {Type I LastRead 0 FirstWrite -1}
		rrequest3 {Type O LastRead -1 FirstWrite 1}}
	rrequest_merger_81_Pipeline_VITIS_LOOP_125_1 {
		r_first {Type I LastRead 0 FirstWrite -1}
		rrequest3 {Type O LastRead -1 FirstWrite 1}
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
	rcollector_82 {
		rcollec {Type I LastRead 1 FirstWrite -1}
		roff {Type I LastRead 2 FirstWrite -1}
		rblock3 {Type O LastRead -1 FirstWrite 1}}
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
		rblock4 {Type O LastRead -1 FirstWrite 1}}
	merge_4_to_1_rrequest {
		rrequest1 {Type I LastRead 0 FirstWrite -1}
		rrequest2 {Type I LastRead 0 FirstWrite -1}
		rrequest3 {Type I LastRead 0 FirstWrite -1}
		rrequest4 {Type I LastRead 0 FirstWrite -1}
		rrequestf {Type O LastRead -1 FirstWrite 1}}
	merge_4_to_1_rrequest_Pipeline_VITIS_LOOP_24_1 {
		rrequest1 {Type I LastRead 0 FirstWrite -1}
		rrequest2 {Type I LastRead 0 FirstWrite -1}
		rrequest3 {Type I LastRead 0 FirstWrite -1}
		rrequest4 {Type I LastRead 0 FirstWrite -1}
		rrequestf {Type O LastRead -1 FirstWrite 1}
		temp_5_sroa_180_0_out {Type O LastRead -1 FirstWrite 0}
		temp_5_sroa_171_0_out {Type O LastRead -1 FirstWrite 0}
		temp_5_sroa_162_0_out {Type O LastRead -1 FirstWrite 0}
		temp_5_sroa_153_0_out {Type O LastRead -1 FirstWrite 0}
		temp_5_sroa_144_0_out {Type O LastRead -1 FirstWrite 0}
		temp_5_sroa_135_0_out {Type O LastRead -1 FirstWrite 0}
		temp_5_sroa_126_0_out {Type O LastRead -1 FirstWrite 0}
		temp_5_sroa_117_0_out {Type O LastRead -1 FirstWrite 0}
		temp_5_sroa_108_0_out {Type O LastRead -1 FirstWrite 0}
		temp_5_sroa_99_0_out {Type O LastRead -1 FirstWrite 0}
		temp_5_sroa_90_0_out {Type O LastRead -1 FirstWrite 0}
		temp_5_sroa_81_0_out {Type O LastRead -1 FirstWrite 0}
		temp_5_sroa_72_0_out {Type O LastRead -1 FirstWrite 0}
		temp_5_sroa_63_0_out {Type O LastRead -1 FirstWrite 0}
		temp_5_sroa_54_0_out {Type O LastRead -1 FirstWrite 0}
		temp_5_sroa_45_0_out {Type O LastRead -1 FirstWrite 0}
		temp_5_sroa_36_0_out {Type O LastRead -1 FirstWrite 0}
		temp_5_sroa_27_0_out {Type O LastRead -1 FirstWrite 0}
		temp_5_sroa_18_0_out {Type O LastRead -1 FirstWrite 0}
		temp_5_sroa_9_0_out {Type O LastRead -1 FirstWrite 0}
		temp_5_sroa_0_0_out {Type O LastRead -1 FirstWrite 0}
		temp_6_0_out {Type O LastRead -1 FirstWrite 0}
		temp_4511_0_out {Type O LastRead -1 FirstWrite 0}
		temp_3510_0_out {Type O LastRead -1 FirstWrite 0}
		temp_2_0_out {Type O LastRead -1 FirstWrite 0}
		temp_0_0_out {Type O LastRead -1 FirstWrite 0}}
	request_to_rbanks {
		rrequestf {Type I LastRead 0 FirstWrite -1}
		base_addr_rcsr {Type I LastRead 0 FirstWrite -1}
		rcache_re_bank1 {Type O LastRead -1 FirstWrite 1}
		rcache_re_bank2 {Type O LastRead -1 FirstWrite 1}
		rcache_re_bank3 {Type O LastRead -1 FirstWrite 1}
		rcache_re_bank4 {Type O LastRead -1 FirstWrite 1}
		B_rcsr_base_c {Type O LastRead -1 FirstWrite 0}
		B_rcsr_base_c1 {Type O LastRead -1 FirstWrite 0}
		B_rcsr_base_c2 {Type O LastRead -1 FirstWrite 0}
		B_rcsr_base_c3 {Type O LastRead -1 FirstWrite 0}}
	request_to_rbanks_Pipeline_VITIS_LOOP_251_1 {
		rrequestf {Type I LastRead 0 FirstWrite -1}
		rcache_re_bank1 {Type O LastRead -1 FirstWrite 1}
		empty {Type I LastRead 0 FirstWrite -1}
		rcache_re_bank2 {Type O LastRead -1 FirstWrite 1}
		rcache_re_bank3 {Type O LastRead -1 FirstWrite 1}
		rcache_re_bank4 {Type O LastRead -1 FirstWrite 1}
		temp_req_5_sroa_180_0_out {Type O LastRead -1 FirstWrite 0}
		temp_req_5_sroa_171_0_out {Type O LastRead -1 FirstWrite 0}
		temp_req_5_sroa_162_0_out {Type O LastRead -1 FirstWrite 0}
		temp_req_5_sroa_153_0_out {Type O LastRead -1 FirstWrite 0}
		temp_req_5_sroa_144_0_out {Type O LastRead -1 FirstWrite 0}
		temp_req_5_sroa_135_0_out {Type O LastRead -1 FirstWrite 0}
		temp_req_5_sroa_126_0_out {Type O LastRead -1 FirstWrite 0}
		temp_req_5_sroa_117_0_out {Type O LastRead -1 FirstWrite 0}
		temp_req_5_sroa_108_0_out {Type O LastRead -1 FirstWrite 0}
		temp_req_5_sroa_99_0_out {Type O LastRead -1 FirstWrite 0}
		temp_req_5_sroa_90_0_out {Type O LastRead -1 FirstWrite 0}
		temp_req_5_sroa_81_0_out {Type O LastRead -1 FirstWrite 0}
		temp_req_5_sroa_72_0_out {Type O LastRead -1 FirstWrite 0}
		temp_req_5_sroa_63_0_out {Type O LastRead -1 FirstWrite 0}
		temp_req_5_sroa_54_0_out {Type O LastRead -1 FirstWrite 0}
		temp_req_5_sroa_45_0_out {Type O LastRead -1 FirstWrite 0}
		temp_req_5_sroa_36_0_out {Type O LastRead -1 FirstWrite 0}
		temp_req_5_sroa_27_0_out {Type O LastRead -1 FirstWrite 0}
		temp_req_5_sroa_18_0_out {Type O LastRead -1 FirstWrite 0}
		temp_req_5_sroa_9_0_out {Type O LastRead -1 FirstWrite 0}
		temp_req_5_sroa_0_0_out {Type O LastRead -1 FirstWrite 0}
		temp_req_6_0_out {Type O LastRead -1 FirstWrite 0}
		temp_req_4578_0_out {Type O LastRead -1 FirstWrite 0}
		temp_req_3577_0_out {Type O LastRead -1 FirstWrite 0}
		temp_req_2_0_out {Type O LastRead -1 FirstWrite 0}
		temp_req_0_0_out {Type O LastRead -1 FirstWrite 0}}
	rcache_1 {
		rcache_re_bank1 {Type I LastRead 2 FirstWrite -1}
		base_addr_rcsr {Type I LastRead 0 FirstWrite -1}
		rcache_bank1_res {Type O LastRead -1 FirstWrite 2}
		r1acc {Type O LastRead -1 FirstWrite 2}
		r1hit {Type O LastRead -1 FirstWrite 2}
		mi1 {Type O LastRead -1 FirstWrite 2}}
	rcache_1_Pipeline_VITIS_LOOP_330_1 {
		p_lru_count_1 {Type O LastRead -1 FirstWrite 0}
		p_lru_count_2 {Type O LastRead -1 FirstWrite 0}
		p_lru_count_3 {Type O LastRead -1 FirstWrite 0}
		p_lru_count_4 {Type O LastRead -1 FirstWrite 0}
		p_lru_count_5 {Type O LastRead -1 FirstWrite 0}
		p_lru_count_6 {Type O LastRead -1 FirstWrite 0}
		p_lru_count_7 {Type O LastRead -1 FirstWrite 0}
		p_lru_count_8 {Type O LastRead -1 FirstWrite 0}
		p_tag_15 {Type O LastRead -1 FirstWrite 0}
		p_tag_14 {Type O LastRead -1 FirstWrite 0}
		p_tag_13 {Type O LastRead -1 FirstWrite 0}
		p_tag_12 {Type O LastRead -1 FirstWrite 0}
		p_tag_11 {Type O LastRead -1 FirstWrite 0}
		p_tag_10 {Type O LastRead -1 FirstWrite 0}
		p_tag_9 {Type O LastRead -1 FirstWrite 0}
		p_tag_8 {Type O LastRead -1 FirstWrite 0}
		p_tag_7 {Type O LastRead -1 FirstWrite 0}
		p_tag_6 {Type O LastRead -1 FirstWrite 0}
		p_tag_5 {Type O LastRead -1 FirstWrite 0}
		p_tag_4 {Type O LastRead -1 FirstWrite 0}
		p_tag_3 {Type O LastRead -1 FirstWrite 0}
		p_tag_2 {Type O LastRead -1 FirstWrite 0}
		p_tag_1 {Type O LastRead -1 FirstWrite 0}
		p_tag {Type O LastRead -1 FirstWrite 0}}
	rcache_2 {
		rcache_re_bank2 {Type I LastRead 2 FirstWrite -1}
		base_addr_rcsr {Type I LastRead 0 FirstWrite -1}
		rcache_bank2_res {Type O LastRead -1 FirstWrite 2}
		r2acc {Type O LastRead -1 FirstWrite 2}
		r2hit {Type O LastRead -1 FirstWrite 2}
		mi2 {Type O LastRead -1 FirstWrite 2}}
	rcache_2_Pipeline_VITIS_LOOP_330_1 {
		p_lru_count_1 {Type O LastRead -1 FirstWrite 0}
		p_lru_count_2 {Type O LastRead -1 FirstWrite 0}
		p_lru_count_3 {Type O LastRead -1 FirstWrite 0}
		p_lru_count_4 {Type O LastRead -1 FirstWrite 0}
		p_lru_count_5 {Type O LastRead -1 FirstWrite 0}
		p_lru_count_6 {Type O LastRead -1 FirstWrite 0}
		p_lru_count_7 {Type O LastRead -1 FirstWrite 0}
		p_lru_count_8 {Type O LastRead -1 FirstWrite 0}
		p_tag_15 {Type O LastRead -1 FirstWrite 0}
		p_tag_14 {Type O LastRead -1 FirstWrite 0}
		p_tag_13 {Type O LastRead -1 FirstWrite 0}
		p_tag_12 {Type O LastRead -1 FirstWrite 0}
		p_tag_11 {Type O LastRead -1 FirstWrite 0}
		p_tag_10 {Type O LastRead -1 FirstWrite 0}
		p_tag_9 {Type O LastRead -1 FirstWrite 0}
		p_tag_8 {Type O LastRead -1 FirstWrite 0}
		p_tag_7 {Type O LastRead -1 FirstWrite 0}
		p_tag_6 {Type O LastRead -1 FirstWrite 0}
		p_tag_5 {Type O LastRead -1 FirstWrite 0}
		p_tag_4 {Type O LastRead -1 FirstWrite 0}
		p_tag_3 {Type O LastRead -1 FirstWrite 0}
		p_tag_2 {Type O LastRead -1 FirstWrite 0}
		p_tag_1 {Type O LastRead -1 FirstWrite 0}
		p_tag {Type O LastRead -1 FirstWrite 0}}
	rcache_3 {
		rcache_re_bank3 {Type I LastRead 2 FirstWrite -1}
		base_addr_rcsr {Type I LastRead 0 FirstWrite -1}
		rcache_bank3_res {Type O LastRead -1 FirstWrite 2}
		r3acc {Type O LastRead -1 FirstWrite 2}
		r3hit {Type O LastRead -1 FirstWrite 2}
		mi3 {Type O LastRead -1 FirstWrite 2}}
	rcache_3_Pipeline_VITIS_LOOP_330_1 {
		p_lru_count_1 {Type O LastRead -1 FirstWrite 0}
		p_lru_count_2 {Type O LastRead -1 FirstWrite 0}
		p_lru_count_3 {Type O LastRead -1 FirstWrite 0}
		p_lru_count_4 {Type O LastRead -1 FirstWrite 0}
		p_lru_count_5 {Type O LastRead -1 FirstWrite 0}
		p_lru_count_6 {Type O LastRead -1 FirstWrite 0}
		p_lru_count_7 {Type O LastRead -1 FirstWrite 0}
		p_lru_count_8 {Type O LastRead -1 FirstWrite 0}
		p_tag_15 {Type O LastRead -1 FirstWrite 0}
		p_tag_14 {Type O LastRead -1 FirstWrite 0}
		p_tag_13 {Type O LastRead -1 FirstWrite 0}
		p_tag_12 {Type O LastRead -1 FirstWrite 0}
		p_tag_11 {Type O LastRead -1 FirstWrite 0}
		p_tag_10 {Type O LastRead -1 FirstWrite 0}
		p_tag_9 {Type O LastRead -1 FirstWrite 0}
		p_tag_8 {Type O LastRead -1 FirstWrite 0}
		p_tag_7 {Type O LastRead -1 FirstWrite 0}
		p_tag_6 {Type O LastRead -1 FirstWrite 0}
		p_tag_5 {Type O LastRead -1 FirstWrite 0}
		p_tag_4 {Type O LastRead -1 FirstWrite 0}
		p_tag_3 {Type O LastRead -1 FirstWrite 0}
		p_tag_2 {Type O LastRead -1 FirstWrite 0}
		p_tag_1 {Type O LastRead -1 FirstWrite 0}
		p_tag {Type O LastRead -1 FirstWrite 0}}
	rcache {
		rcache_re_bank4 {Type I LastRead 2 FirstWrite -1}
		base_addr_rcsr {Type I LastRead 0 FirstWrite -1}
		rcache_bank4_res {Type O LastRead -1 FirstWrite 2}
		r4acc {Type O LastRead -1 FirstWrite 2}
		r4hit {Type O LastRead -1 FirstWrite 2}
		mi4 {Type O LastRead -1 FirstWrite 2}}
	rcache_Pipeline_VITIS_LOOP_330_1 {
		p_lru_count_1 {Type O LastRead -1 FirstWrite 0}
		p_lru_count_2 {Type O LastRead -1 FirstWrite 0}
		p_lru_count_3 {Type O LastRead -1 FirstWrite 0}
		p_lru_count_4 {Type O LastRead -1 FirstWrite 0}
		p_lru_count_5 {Type O LastRead -1 FirstWrite 0}
		p_lru_count_6 {Type O LastRead -1 FirstWrite 0}
		p_lru_count_7 {Type O LastRead -1 FirstWrite 0}
		p_lru_count_8 {Type O LastRead -1 FirstWrite 0}
		p_tag_15 {Type O LastRead -1 FirstWrite 0}
		p_tag_14 {Type O LastRead -1 FirstWrite 0}
		p_tag_13 {Type O LastRead -1 FirstWrite 0}
		p_tag_12 {Type O LastRead -1 FirstWrite 0}
		p_tag_11 {Type O LastRead -1 FirstWrite 0}
		p_tag_10 {Type O LastRead -1 FirstWrite 0}
		p_tag_9 {Type O LastRead -1 FirstWrite 0}
		p_tag_8 {Type O LastRead -1 FirstWrite 0}
		p_tag_7 {Type O LastRead -1 FirstWrite 0}
		p_tag_6 {Type O LastRead -1 FirstWrite 0}
		p_tag_5 {Type O LastRead -1 FirstWrite 0}
		p_tag_4 {Type O LastRead -1 FirstWrite 0}
		p_tag_3 {Type O LastRead -1 FirstWrite 0}
		p_tag_2 {Type O LastRead -1 FirstWrite 0}
		p_tag_1 {Type O LastRead -1 FirstWrite 0}
		p_tag {Type O LastRead -1 FirstWrite 0}}
	distributer_mi_4 {
		mi1 {Type I LastRead 0 FirstWrite -1}
		mi1_1 {Type O LastRead -1 FirstWrite 1}
		mi1_2 {Type O LastRead -1 FirstWrite 1}
		mi1_3 {Type O LastRead -1 FirstWrite 1}
		mi1_4 {Type O LastRead -1 FirstWrite 1}}
	distributer_mi_4_Pipeline_VITIS_LOOP_120_1 {
		mi1 {Type I LastRead 0 FirstWrite -1}
		mi1_1 {Type O LastRead -1 FirstWrite 1}
		mi1_2 {Type O LastRead -1 FirstWrite 1}
		mi1_3 {Type O LastRead -1 FirstWrite 1}
		mi1_4 {Type O LastRead -1 FirstWrite 1}
		temp_idle_out {Type O LastRead -1 FirstWrite 0}
		temp_dest_out {Type O LastRead -1 FirstWrite 0}}
	distributer_mi_5 {
		mi2 {Type I LastRead 0 FirstWrite -1}
		mi2_1 {Type O LastRead -1 FirstWrite 1}
		mi2_2 {Type O LastRead -1 FirstWrite 1}
		mi2_3 {Type O LastRead -1 FirstWrite 1}
		mi2_4 {Type O LastRead -1 FirstWrite 1}}
	distributer_mi_5_Pipeline_VITIS_LOOP_120_1 {
		mi2 {Type I LastRead 0 FirstWrite -1}
		mi2_1 {Type O LastRead -1 FirstWrite 1}
		mi2_2 {Type O LastRead -1 FirstWrite 1}
		mi2_3 {Type O LastRead -1 FirstWrite 1}
		mi2_4 {Type O LastRead -1 FirstWrite 1}
		temp_idle_out {Type O LastRead -1 FirstWrite 0}
		temp_dest_out {Type O LastRead -1 FirstWrite 0}}
	distributer_mi_6 {
		mi3 {Type I LastRead 0 FirstWrite -1}
		mi3_1 {Type O LastRead -1 FirstWrite 1}
		mi3_2 {Type O LastRead -1 FirstWrite 1}
		mi3_3 {Type O LastRead -1 FirstWrite 1}
		mi3_4 {Type O LastRead -1 FirstWrite 1}}
	distributer_mi_6_Pipeline_VITIS_LOOP_120_1 {
		mi3 {Type I LastRead 0 FirstWrite -1}
		mi3_1 {Type O LastRead -1 FirstWrite 1}
		mi3_2 {Type O LastRead -1 FirstWrite 1}
		mi3_3 {Type O LastRead -1 FirstWrite 1}
		mi3_4 {Type O LastRead -1 FirstWrite 1}
		temp_idle_out {Type O LastRead -1 FirstWrite 0}
		temp_dest_out {Type O LastRead -1 FirstWrite 0}}
	distributer_mi {
		mi4 {Type I LastRead 0 FirstWrite -1}
		mi4_1 {Type O LastRead -1 FirstWrite 1}
		mi4_2 {Type O LastRead -1 FirstWrite 1}
		mi4_3 {Type O LastRead -1 FirstWrite 1}
		mi4_4 {Type O LastRead -1 FirstWrite 1}}
	distributer_mi_Pipeline_VITIS_LOOP_120_1 {
		mi4 {Type I LastRead 0 FirstWrite -1}
		mi4_1 {Type O LastRead -1 FirstWrite 1}
		mi4_2 {Type O LastRead -1 FirstWrite 1}
		mi4_3 {Type O LastRead -1 FirstWrite 1}
		mi4_4 {Type O LastRead -1 FirstWrite 1}
		temp_idle_out {Type O LastRead -1 FirstWrite 0}
		temp_dest_out {Type O LastRead -1 FirstWrite 0}}
	merge_4_to_1_mi_7 {
		mi1_1 {Type I LastRead 0 FirstWrite -1}
		mi2_1 {Type I LastRead 0 FirstWrite -1}
		mi3_1 {Type I LastRead 0 FirstWrite -1}
		mi4_1 {Type I LastRead 0 FirstWrite -1}
		rm1_idle {Type O LastRead -1 FirstWrite 0}}
	merge_4_to_1_mi_7_Pipeline_VITIS_LOOP_86_1 {
		mi1_1 {Type I LastRead 0 FirstWrite -1}
		rm1_idle {Type O LastRead -1 FirstWrite 1}
		mi2_1 {Type I LastRead 0 FirstWrite -1}
		mi3_1 {Type I LastRead 0 FirstWrite -1}
		mi4_1 {Type I LastRead 0 FirstWrite -1}}
	merge_4_to_1_mi_8 {
		mi1_2 {Type I LastRead 0 FirstWrite -1}
		mi2_2 {Type I LastRead 0 FirstWrite -1}
		mi3_2 {Type I LastRead 0 FirstWrite -1}
		mi4_2 {Type I LastRead 0 FirstWrite -1}
		rm2_idle {Type O LastRead -1 FirstWrite 0}}
	merge_4_to_1_mi_8_Pipeline_VITIS_LOOP_86_1 {
		mi1_2 {Type I LastRead 0 FirstWrite -1}
		rm2_idle {Type O LastRead -1 FirstWrite 1}
		mi2_2 {Type I LastRead 0 FirstWrite -1}
		mi3_2 {Type I LastRead 0 FirstWrite -1}
		mi4_2 {Type I LastRead 0 FirstWrite -1}}
	merge_4_to_1_mi_9 {
		mi1_3 {Type I LastRead 0 FirstWrite -1}
		mi2_3 {Type I LastRead 0 FirstWrite -1}
		mi3_3 {Type I LastRead 0 FirstWrite -1}
		mi4_3 {Type I LastRead 0 FirstWrite -1}
		rm3_idle {Type O LastRead -1 FirstWrite 0}}
	merge_4_to_1_mi_9_Pipeline_VITIS_LOOP_86_1 {
		mi1_3 {Type I LastRead 0 FirstWrite -1}
		rm3_idle {Type O LastRead -1 FirstWrite 1}
		mi2_3 {Type I LastRead 0 FirstWrite -1}
		mi3_3 {Type I LastRead 0 FirstWrite -1}
		mi4_3 {Type I LastRead 0 FirstWrite -1}}
	merge_4_to_1_mi {
		mi1_4 {Type I LastRead 0 FirstWrite -1}
		mi2_4 {Type I LastRead 0 FirstWrite -1}
		mi3_4 {Type I LastRead 0 FirstWrite -1}
		mi4_4 {Type I LastRead 0 FirstWrite -1}
		rm4_idle {Type O LastRead -1 FirstWrite 0}}
	merge_4_to_1_mi_Pipeline_VITIS_LOOP_86_1 {
		mi1_4 {Type I LastRead 0 FirstWrite -1}
		rm4_idle {Type O LastRead -1 FirstWrite 1}
		mi2_4 {Type I LastRead 0 FirstWrite -1}
		mi3_4 {Type I LastRead 0 FirstWrite -1}
		mi4_4 {Type I LastRead 0 FirstWrite -1}}
	distributer_rresponse_10 {
		rcache_bank1_res {Type I LastRead 0 FirstWrite -1}
		rcache_re_bank1_1 {Type O LastRead -1 FirstWrite 1}
		rcache_re_bank1_2 {Type O LastRead -1 FirstWrite 1}
		rcache_re_bank1_3 {Type O LastRead -1 FirstWrite 1}
		rcache_re_bank1_4 {Type O LastRead -1 FirstWrite 1}}
	distributer_rresponse_10_Pipeline_VITIS_LOOP_92_1 {
		rcache_bank1_res {Type I LastRead 0 FirstWrite -1}
		rcache_re_bank1_1 {Type O LastRead -1 FirstWrite 1}
		rcache_re_bank1_2 {Type O LastRead -1 FirstWrite 1}
		rcache_re_bank1_3 {Type O LastRead -1 FirstWrite 1}
		rcache_re_bank1_4 {Type O LastRead -1 FirstWrite 1}
		temp_data_out {Type O LastRead -1 FirstWrite 0}
		temp_result_out {Type O LastRead -1 FirstWrite 0}
		temp_dest_out {Type O LastRead -1 FirstWrite 0}
		temp_no_use_out {Type O LastRead -1 FirstWrite 0}}
	distributer_rresponse_11 {
		rcache_bank2_res {Type I LastRead 0 FirstWrite -1}
		rcache_re_bank2_1 {Type O LastRead -1 FirstWrite 1}
		rcache_re_bank2_2 {Type O LastRead -1 FirstWrite 1}
		rcache_re_bank2_3 {Type O LastRead -1 FirstWrite 1}
		rcache_re_bank2_4 {Type O LastRead -1 FirstWrite 1}}
	distributer_rresponse_11_Pipeline_VITIS_LOOP_92_1 {
		rcache_bank2_res {Type I LastRead 0 FirstWrite -1}
		rcache_re_bank2_1 {Type O LastRead -1 FirstWrite 1}
		rcache_re_bank2_2 {Type O LastRead -1 FirstWrite 1}
		rcache_re_bank2_3 {Type O LastRead -1 FirstWrite 1}
		rcache_re_bank2_4 {Type O LastRead -1 FirstWrite 1}
		temp_data_out {Type O LastRead -1 FirstWrite 0}
		temp_result_out {Type O LastRead -1 FirstWrite 0}
		temp_dest_out {Type O LastRead -1 FirstWrite 0}
		temp_no_use_out {Type O LastRead -1 FirstWrite 0}}
	distributer_rresponse_12 {
		rcache_bank3_res {Type I LastRead 0 FirstWrite -1}
		rcache_re_bank3_1 {Type O LastRead -1 FirstWrite 1}
		rcache_re_bank3_2 {Type O LastRead -1 FirstWrite 1}
		rcache_re_bank3_3 {Type O LastRead -1 FirstWrite 1}
		rcache_re_bank3_4 {Type O LastRead -1 FirstWrite 1}}
	distributer_rresponse_12_Pipeline_VITIS_LOOP_92_1 {
		rcache_bank3_res {Type I LastRead 0 FirstWrite -1}
		rcache_re_bank3_1 {Type O LastRead -1 FirstWrite 1}
		rcache_re_bank3_2 {Type O LastRead -1 FirstWrite 1}
		rcache_re_bank3_3 {Type O LastRead -1 FirstWrite 1}
		rcache_re_bank3_4 {Type O LastRead -1 FirstWrite 1}
		temp_data_out {Type O LastRead -1 FirstWrite 0}
		temp_result_out {Type O LastRead -1 FirstWrite 0}
		temp_dest_out {Type O LastRead -1 FirstWrite 0}
		temp_no_use_out {Type O LastRead -1 FirstWrite 0}}
	distributer_rresponse {
		rcache_bank4_res {Type I LastRead 0 FirstWrite -1}
		rcache_re_bank4_1 {Type O LastRead -1 FirstWrite 1}
		rcache_re_bank4_2 {Type O LastRead -1 FirstWrite 1}
		rcache_re_bank4_3 {Type O LastRead -1 FirstWrite 1}
		rcache_re_bank4_4 {Type O LastRead -1 FirstWrite 1}}
	distributer_rresponse_Pipeline_VITIS_LOOP_92_1 {
		rcache_bank4_res {Type I LastRead 0 FirstWrite -1}
		rcache_re_bank4_1 {Type O LastRead -1 FirstWrite 1}
		rcache_re_bank4_2 {Type O LastRead -1 FirstWrite 1}
		rcache_re_bank4_3 {Type O LastRead -1 FirstWrite 1}
		rcache_re_bank4_4 {Type O LastRead -1 FirstWrite 1}
		temp_data_out {Type O LastRead -1 FirstWrite 0}
		temp_result_out {Type O LastRead -1 FirstWrite 0}
		temp_dest_out {Type O LastRead -1 FirstWrite 0}
		temp_no_use_out {Type O LastRead -1 FirstWrite 0}}
	merge_4_to_1_rresponse_13 {
		rcache_re_bank1_1 {Type I LastRead 0 FirstWrite -1}
		rcache_re_bank2_1 {Type I LastRead 0 FirstWrite -1}
		rcache_re_bank3_1 {Type I LastRead 0 FirstWrite -1}
		rcache_re_bank4_1 {Type I LastRead 0 FirstWrite -1}
		rresponse1 {Type O LastRead -1 FirstWrite 1}}
	merge_4_to_1_rresponse_14 {
		rcache_re_bank1_2 {Type I LastRead 0 FirstWrite -1}
		rcache_re_bank2_2 {Type I LastRead 0 FirstWrite -1}
		rcache_re_bank3_2 {Type I LastRead 0 FirstWrite -1}
		rcache_re_bank4_2 {Type I LastRead 0 FirstWrite -1}
		rresponse2 {Type O LastRead -1 FirstWrite 1}}
	merge_4_to_1_rresponse_15 {
		rcache_re_bank1_3 {Type I LastRead 0 FirstWrite -1}
		rcache_re_bank2_3 {Type I LastRead 0 FirstWrite -1}
		rcache_re_bank3_3 {Type I LastRead 0 FirstWrite -1}
		rcache_re_bank4_3 {Type I LastRead 0 FirstWrite -1}
		rresponse3 {Type O LastRead -1 FirstWrite 1}}
	merge_4_to_1_rresponse {
		rcache_re_bank1_4 {Type I LastRead 0 FirstWrite -1}
		rcache_re_bank2_4 {Type I LastRead 0 FirstWrite -1}
		rcache_re_bank3_4 {Type I LastRead 0 FirstWrite -1}
		rcache_re_bank4_4 {Type I LastRead 0 FirstWrite -1}
		rresponse4 {Type O LastRead -1 FirstWrite 1}}
	from_rcache_result_to_B_vcrequest_16 {
		rblock1 {Type I LastRead 1 FirstWrite -1}
		rcache_result_bank1_b {Type O LastRead -1 FirstWrite 1}
		rcache_result_bank1_d {Type O LastRead 1 FirstWrite 1}
		B_rlen_pe1 {Type O LastRead -1 FirstWrite 2}}
	from_rcache_result_to_B_vcrequest_17 {
		rblock2 {Type I LastRead 1 FirstWrite -1}
		rcache_result_bank2_b {Type O LastRead -1 FirstWrite 1}
		rcache_result_bank2_d {Type O LastRead 1 FirstWrite 1}
		B_rlen_pe2 {Type O LastRead -1 FirstWrite 2}}
	from_rcache_result_to_B_vcrequest_18 {
		rblock3 {Type I LastRead 1 FirstWrite -1}
		rcache_result_bank3_b {Type O LastRead -1 FirstWrite 1}
		rcache_result_bank3_d {Type O LastRead 1 FirstWrite 1}
		B_rlen_pe3 {Type O LastRead -1 FirstWrite 2}}
	from_rcache_result_to_B_vcrequest {
		rblock4 {Type I LastRead 1 FirstWrite -1}
		rcache_result_bank4_b {Type O LastRead -1 FirstWrite 1}
		rcache_result_bank4_d {Type O LastRead 1 FirstWrite 1}
		B_rlen_pe4 {Type O LastRead -1 FirstWrite 2}}
	generate_data {
		rcache_result_bank1_d {Type I LastRead 1 FirstWrite -1}
		bval1 {Type I LastRead 3 FirstWrite -1}
		B_val {Type I LastRead 0 FirstWrite -1}
		bcid1 {Type I LastRead 3 FirstWrite -1}
		B_cid {Type I LastRead 0 FirstWrite -1}
		vblock1d {Type O LastRead -1 FirstWrite 2}
		cblock1d {Type O LastRead -1 FirstWrite 2}}
	generate_data_Pipeline_VITIS_LOOP_53_2 {
		tmp_256 {Type I LastRead 0 FirstWrite -1}
		begin_block_idx {Type I LastRead 0 FirstWrite -1}
		add_ln53 {Type I LastRead 0 FirstWrite -1}
		bcid1 {Type I LastRead 1 FirstWrite -1}
		sext_ln53 {Type I LastRead 0 FirstWrite -1}
		bval1 {Type I LastRead 1 FirstWrite -1}
		sext_ln53_4 {Type I LastRead 0 FirstWrite -1}
		trunc_ln55_4 {Type I LastRead 0 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}
		vblock1d {Type O LastRead -1 FirstWrite 2}
		cblock1d {Type O LastRead -1 FirstWrite 2}}
	generate_data_90 {
		rcache_result_bank2_d {Type I LastRead 1 FirstWrite -1}
		bval2 {Type I LastRead 3 FirstWrite -1}
		B_val {Type I LastRead 0 FirstWrite -1}
		bcid2 {Type I LastRead 3 FirstWrite -1}
		B_cid {Type I LastRead 0 FirstWrite -1}
		vblock2d {Type O LastRead -1 FirstWrite 2}
		cblock2d {Type O LastRead -1 FirstWrite 2}}
	generate_data_90_Pipeline_VITIS_LOOP_53_2 {
		tmp_254 {Type I LastRead 0 FirstWrite -1}
		begin_block_idx {Type I LastRead 0 FirstWrite -1}
		add_ln53 {Type I LastRead 0 FirstWrite -1}
		bcid2 {Type I LastRead 1 FirstWrite -1}
		sext_ln53 {Type I LastRead 0 FirstWrite -1}
		bval2 {Type I LastRead 1 FirstWrite -1}
		sext_ln53_3 {Type I LastRead 0 FirstWrite -1}
		trunc_ln55_3 {Type I LastRead 0 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}
		vblock2d {Type O LastRead -1 FirstWrite 2}
		cblock2d {Type O LastRead -1 FirstWrite 2}}
	generate_data_91 {
		rcache_result_bank3_d {Type I LastRead 1 FirstWrite -1}
		bval3 {Type I LastRead 3 FirstWrite -1}
		B_val {Type I LastRead 0 FirstWrite -1}
		bcid3 {Type I LastRead 3 FirstWrite -1}
		B_cid {Type I LastRead 0 FirstWrite -1}
		vblock3d {Type O LastRead -1 FirstWrite 2}
		cblock3d {Type O LastRead -1 FirstWrite 2}}
	generate_data_91_Pipeline_VITIS_LOOP_53_2 {
		tmp_252 {Type I LastRead 0 FirstWrite -1}
		begin_block_idx {Type I LastRead 0 FirstWrite -1}
		add_ln53 {Type I LastRead 0 FirstWrite -1}
		bcid3 {Type I LastRead 1 FirstWrite -1}
		sext_ln53 {Type I LastRead 0 FirstWrite -1}
		bval3 {Type I LastRead 1 FirstWrite -1}
		sext_ln53_2 {Type I LastRead 0 FirstWrite -1}
		trunc_ln55_2 {Type I LastRead 0 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}
		vblock3d {Type O LastRead -1 FirstWrite 2}
		cblock3d {Type O LastRead -1 FirstWrite 2}}
	generate_data_92 {
		rcache_result_bank4_d {Type I LastRead 1 FirstWrite -1}
		bval4 {Type I LastRead 3 FirstWrite -1}
		B_val {Type I LastRead 0 FirstWrite -1}
		bcid4 {Type I LastRead 3 FirstWrite -1}
		B_cid {Type I LastRead 0 FirstWrite -1}
		vblock4d {Type O LastRead -1 FirstWrite 2}
		cblock4d {Type O LastRead -1 FirstWrite 2}}
	generate_data_92_Pipeline_VITIS_LOOP_53_2 {
		tmp_250 {Type I LastRead 0 FirstWrite -1}
		begin_block_idx {Type I LastRead 0 FirstWrite -1}
		add_ln53 {Type I LastRead 0 FirstWrite -1}
		bcid4 {Type I LastRead 1 FirstWrite -1}
		sext_ln53 {Type I LastRead 0 FirstWrite -1}
		bval4 {Type I LastRead 1 FirstWrite -1}
		sext_ln53_1 {Type I LastRead 0 FirstWrite -1}
		trunc_ln55_1 {Type I LastRead 0 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}
		vblock4d {Type O LastRead -1 FirstWrite 2}
		cblock4d {Type O LastRead -1 FirstWrite 2}}
	vcrequest_manager {
		rcache_result_bank1_b {Type I LastRead 0 FirstWrite -1}
		vrequest1 {Type O LastRead -1 FirstWrite 1}
		crequest1 {Type O LastRead -1 FirstWrite 1}
		vresponse1 {Type I LastRead 3 FirstWrite -1}
		cresponse1 {Type I LastRead 3 FirstWrite -1}
		vresult1 {Type I LastRead 1 FirstWrite -1}
		cresult1 {Type I LastRead 1 FirstWrite -1}
		vblock1 {Type O LastRead -1 FirstWrite 2}
		cblock1 {Type O LastRead -1 FirstWrite 2}
		bv1 {Type I LastRead 5 FirstWrite -1}
		B_val {Type I LastRead 2 FirstWrite -1}
		bc1 {Type I LastRead 5 FirstWrite -1}
		B_cid {Type I LastRead 2 FirstWrite -1}}
	vcrequest_splitter_51 {
		rcache_result_bank1_b {Type I LastRead 0 FirstWrite -1}
		vrequest {Type O LastRead -1 FirstWrite 1}
		crequest {Type O LastRead -1 FirstWrite 1}
		vcollector {Type O LastRead -1 FirstWrite 1}
		ccollector {Type O LastRead -1 FirstWrite 1}
		vscheduler {Type O LastRead -1 FirstWrite 1}
		cscheduler {Type O LastRead -1 FirstWrite 1}}
	vcrequest_splitter_51_Pipeline_VITIS_LOOP_12_1 {
		rcache_result_bank1_b {Type I LastRead 0 FirstWrite -1}
		vrequest {Type O LastRead -1 FirstWrite 1}
		crequest {Type O LastRead -1 FirstWrite 1}
		vcollector {Type O LastRead -1 FirstWrite 1}
		ccollector {Type O LastRead -1 FirstWrite 1}
		vscheduler {Type O LastRead -1 FirstWrite 1}
		cscheduler {Type O LastRead -1 FirstWrite 1}
		tcontrol_peID_out {Type O LastRead -1 FirstWrite 0}
		tcontrol_bridx_out {Type O LastRead -1 FirstWrite 0}
		tcontrol_brlen_out {Type O LastRead -1 FirstWrite 0}}
	request_manager_52 {
		vrequest {Type I LastRead 0 FirstWrite -1}
		v_first {Type O LastRead -1 FirstWrite 1}}
	request_manager_52_Pipeline_VITIS_LOOP_48_1 {
		vrequest {Type I LastRead 0 FirstWrite -1}
		v_first {Type O LastRead -1 FirstWrite 1}
		curr_request_3_0_out {Type O LastRead -1 FirstWrite 0}
		curr_request_6_0_out {Type O LastRead -1 FirstWrite 0}
		curr_request_7_0_out {Type O LastRead -1 FirstWrite 0}}
	schedule_access {
		vscheduler {Type I LastRead 1 FirstWrite -1}
		vresponse1 {Type I LastRead 3 FirstWrite -1}
		voff {Type O LastRead -1 FirstWrite 3}
		bv1 {Type I LastRead 5 FirstWrite -1}
		off_pointer {Type I LastRead 0 FirstWrite -1}
		v_req {Type O LastRead -1 FirstWrite 1}
		v_hit {Type O LastRead -1 FirstWrite 4}}
	schedule_access_Pipeline_VITIS_LOOP_112_4 {
		zext_ln92 {Type I LastRead 0 FirstWrite -1}
		min_idx {Type I LastRead 0 FirstWrite -1}
		add_ln92 {Type I LastRead 0 FirstWrite -1}
		ori_request_peID {Type I LastRead 0 FirstWrite -1}
		zext_ln100 {Type I LastRead 0 FirstWrite -1}
		add_ln125 {Type I LastRead 0 FirstWrite -1}
		voff {Type O LastRead -1 FirstWrite 3}
		bv1 {Type I LastRead 2 FirstWrite -1}
		sext_ln112 {Type I LastRead 0 FirstWrite -1}
		trunc_ln43 {Type I LastRead 0 FirstWrite -1}
		begin_block_idx {Type I LastRead 0 FirstWrite -1}
		v_req {Type O LastRead -1 FirstWrite 3}
		curr_request_9_211_out {Type O LastRead -1 FirstWrite 2}
		curr_request_7_210_out {Type O LastRead -1 FirstWrite 1}
		curr_request_6_29_out {Type O LastRead -1 FirstWrite 1}
		curr_request_5_27_out {Type O LastRead -1 FirstWrite 1}
		curr_request_3_26_out {Type O LastRead -1 FirstWrite 1}}
	schedule_access_Pipeline_VITIS_LOOP_105_3 {
		select_ln105 {Type I LastRead 0 FirstWrite -1}
		bv1 {Type I LastRead 2 FirstWrite -1}
		sext_ln105 {Type I LastRead 0 FirstWrite -1}
		voff {Type O LastRead -1 FirstWrite 3}}
	request_manager_53 {
		crequest {Type I LastRead 0 FirstWrite -1}
		c_first {Type O LastRead -1 FirstWrite 1}}
	request_manager_53_Pipeline_VITIS_LOOP_48_1 {
		crequest {Type I LastRead 0 FirstWrite -1}
		c_first {Type O LastRead -1 FirstWrite 1}
		curr_request_3_0_out {Type O LastRead -1 FirstWrite 0}
		curr_request_6_0_out {Type O LastRead -1 FirstWrite 0}
		curr_request_7_0_out {Type O LastRead -1 FirstWrite 0}}
	schedule_access_99 {
		cscheduler {Type I LastRead 1 FirstWrite -1}
		cresponse1 {Type I LastRead 3 FirstWrite -1}
		coff {Type O LastRead -1 FirstWrite 3}
		bc1 {Type I LastRead 5 FirstWrite -1}
		off_pointer {Type I LastRead 0 FirstWrite -1}
		c_req {Type O LastRead -1 FirstWrite 1}
		c_hit {Type O LastRead -1 FirstWrite 4}}
	schedule_access_99_Pipeline_VITIS_LOOP_112_4 {
		zext_ln92 {Type I LastRead 0 FirstWrite -1}
		min_idx {Type I LastRead 0 FirstWrite -1}
		add_ln92 {Type I LastRead 0 FirstWrite -1}
		ori_request_peID {Type I LastRead 0 FirstWrite -1}
		zext_ln100 {Type I LastRead 0 FirstWrite -1}
		add_ln125 {Type I LastRead 0 FirstWrite -1}
		coff {Type O LastRead -1 FirstWrite 3}
		bc1 {Type I LastRead 2 FirstWrite -1}
		sext_ln112 {Type I LastRead 0 FirstWrite -1}
		trunc_ln22 {Type I LastRead 0 FirstWrite -1}
		begin_block_idx {Type I LastRead 0 FirstWrite -1}
		c_req {Type O LastRead -1 FirstWrite 3}
		curr_request_9_211_out {Type O LastRead -1 FirstWrite 2}
		curr_request_7_210_out {Type O LastRead -1 FirstWrite 1}
		curr_request_6_29_out {Type O LastRead -1 FirstWrite 1}
		curr_request_5_27_out {Type O LastRead -1 FirstWrite 1}
		curr_request_3_26_out {Type O LastRead -1 FirstWrite 1}}
	schedule_access_99_Pipeline_VITIS_LOOP_105_3 {
		select_ln105 {Type I LastRead 0 FirstWrite -1}
		bc1 {Type I LastRead 2 FirstWrite -1}
		sext_ln105 {Type I LastRead 0 FirstWrite -1}
		coff {Type O LastRead -1 FirstWrite 3}}
	request_merger_54 {
		v_first {Type I LastRead 0 FirstWrite -1}
		v_req {Type I LastRead 0 FirstWrite -1}
		vrequest1 {Type O LastRead -1 FirstWrite 1}}
	request_merger_54_Pipeline_VITIS_LOOP_152_1 {
		v_first {Type I LastRead 0 FirstWrite -1}
		vrequest1 {Type O LastRead -1 FirstWrite 1}
		v_req {Type I LastRead 0 FirstWrite -1}
		temp_8_sroa_5_0_out {Type O LastRead -1 FirstWrite 0}
		temp_8_sroa_0_0_out {Type O LastRead -1 FirstWrite 0}
		temp_9_0_out {Type O LastRead -1 FirstWrite 0}
		temp_797_0_out {Type O LastRead -1 FirstWrite 0}
		temp_696_0_out {Type O LastRead -1 FirstWrite 0}
		temp_5_0_out {Type O LastRead -1 FirstWrite 0}
		temp_4_0_out {Type O LastRead -1 FirstWrite 0}
		temp_3_0_out {Type O LastRead -1 FirstWrite 0}
		temp_2_0_out {Type O LastRead -1 FirstWrite 0}
		temp_1_0_out {Type O LastRead -1 FirstWrite 0}}
	request_merger_55 {
		c_first {Type I LastRead 0 FirstWrite -1}
		c_req {Type I LastRead 0 FirstWrite -1}
		crequest1 {Type O LastRead -1 FirstWrite 1}}
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
		temp_1_0_out {Type O LastRead -1 FirstWrite 0}}
	collector_56 {
		vcollector {Type I LastRead 1 FirstWrite -1}
		vresult1 {Type I LastRead 1 FirstWrite -1}
		voff {Type I LastRead 1 FirstWrite -1}
		vblock1 {Type O LastRead -1 FirstWrite 2}
		v_hit {Type I LastRead 1 FirstWrite -1}}
	collector_56_Pipeline_VITIS_LOOP_185_2 {
		tmp {Type I LastRead 0 FirstWrite -1}
		trunc_ln183_7 {Type I LastRead 0 FirstWrite -1}
		add_ln185 {Type I LastRead 0 FirstWrite -1}
		vblock1 {Type O LastRead -1 FirstWrite 2}
		cached_7 {Type I LastRead 0 FirstWrite -1}
		trunc_ln189_7 {Type I LastRead 0 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}
		hit {Type I LastRead 0 FirstWrite -1}
		voff {Type I LastRead 1 FirstWrite -1}}
	collector_57 {
		ccollector {Type I LastRead 1 FirstWrite -1}
		cresult1 {Type I LastRead 1 FirstWrite -1}
		coff {Type I LastRead 1 FirstWrite -1}
		cblock1 {Type O LastRead -1 FirstWrite 2}
		c_hit {Type I LastRead 1 FirstWrite -1}}
	collector_57_Pipeline_VITIS_LOOP_185_2 {
		tmp {Type I LastRead 0 FirstWrite -1}
		trunc_ln183_6 {Type I LastRead 0 FirstWrite -1}
		add_ln185 {Type I LastRead 0 FirstWrite -1}
		cblock1 {Type O LastRead -1 FirstWrite 2}
		cached_6 {Type I LastRead 0 FirstWrite -1}
		trunc_ln189_6 {Type I LastRead 0 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}
		hit {Type I LastRead 0 FirstWrite -1}
		coff {Type I LastRead 1 FirstWrite -1}}
	vcrequest_manager_93 {
		rcache_result_bank2_b {Type I LastRead 0 FirstWrite -1}
		vrequest2 {Type O LastRead -1 FirstWrite 1}
		crequest2 {Type O LastRead -1 FirstWrite 1}
		vresponse2 {Type I LastRead 3 FirstWrite -1}
		cresponse2 {Type I LastRead 3 FirstWrite -1}
		vresult2 {Type I LastRead 1 FirstWrite -1}
		cresult2 {Type I LastRead 1 FirstWrite -1}
		vblock2 {Type O LastRead -1 FirstWrite 2}
		cblock2 {Type O LastRead -1 FirstWrite 2}
		bv2 {Type I LastRead 5 FirstWrite -1}
		B_val {Type I LastRead 2 FirstWrite -1}
		bc2 {Type I LastRead 5 FirstWrite -1}
		B_cid {Type I LastRead 2 FirstWrite -1}}
	vcrequest_splitter_58 {
		rcache_result_bank2_b {Type I LastRead 0 FirstWrite -1}
		vrequest {Type O LastRead -1 FirstWrite 1}
		crequest {Type O LastRead -1 FirstWrite 1}
		vcollector {Type O LastRead -1 FirstWrite 1}
		ccollector {Type O LastRead -1 FirstWrite 1}
		vscheduler {Type O LastRead -1 FirstWrite 1}
		cscheduler {Type O LastRead -1 FirstWrite 1}}
	vcrequest_splitter_58_Pipeline_VITIS_LOOP_12_1 {
		rcache_result_bank2_b {Type I LastRead 0 FirstWrite -1}
		vrequest {Type O LastRead -1 FirstWrite 1}
		crequest {Type O LastRead -1 FirstWrite 1}
		vcollector {Type O LastRead -1 FirstWrite 1}
		ccollector {Type O LastRead -1 FirstWrite 1}
		vscheduler {Type O LastRead -1 FirstWrite 1}
		cscheduler {Type O LastRead -1 FirstWrite 1}
		tcontrol_peID_out {Type O LastRead -1 FirstWrite 0}
		tcontrol_bridx_out {Type O LastRead -1 FirstWrite 0}
		tcontrol_brlen_out {Type O LastRead -1 FirstWrite 0}}
	request_manager_59 {
		vrequest {Type I LastRead 0 FirstWrite -1}
		v_first {Type O LastRead -1 FirstWrite 1}}
	request_manager_59_Pipeline_VITIS_LOOP_48_1 {
		vrequest {Type I LastRead 0 FirstWrite -1}
		v_first {Type O LastRead -1 FirstWrite 1}
		curr_request_3_0_out {Type O LastRead -1 FirstWrite 0}
		curr_request_6_0_out {Type O LastRead -1 FirstWrite 0}
		curr_request_7_0_out {Type O LastRead -1 FirstWrite 0}}
	schedule_access_100 {
		vscheduler {Type I LastRead 1 FirstWrite -1}
		vresponse2 {Type I LastRead 3 FirstWrite -1}
		voff {Type O LastRead -1 FirstWrite 3}
		bv2 {Type I LastRead 5 FirstWrite -1}
		off_pointer {Type I LastRead 0 FirstWrite -1}
		v_req {Type O LastRead -1 FirstWrite 1}
		v_hit {Type O LastRead -1 FirstWrite 4}}
	schedule_access_100_Pipeline_VITIS_LOOP_112_4 {
		zext_ln92 {Type I LastRead 0 FirstWrite -1}
		min_idx {Type I LastRead 0 FirstWrite -1}
		add_ln92 {Type I LastRead 0 FirstWrite -1}
		ori_request_peID {Type I LastRead 0 FirstWrite -1}
		zext_ln100 {Type I LastRead 0 FirstWrite -1}
		add_ln125 {Type I LastRead 0 FirstWrite -1}
		voff {Type O LastRead -1 FirstWrite 3}
		bv2 {Type I LastRead 2 FirstWrite -1}
		sext_ln112 {Type I LastRead 0 FirstWrite -1}
		trunc_ln40 {Type I LastRead 0 FirstWrite -1}
		begin_block_idx {Type I LastRead 0 FirstWrite -1}
		v_req {Type O LastRead -1 FirstWrite 3}
		curr_request_9_211_out {Type O LastRead -1 FirstWrite 2}
		curr_request_7_210_out {Type O LastRead -1 FirstWrite 1}
		curr_request_6_29_out {Type O LastRead -1 FirstWrite 1}
		curr_request_5_27_out {Type O LastRead -1 FirstWrite 1}
		curr_request_3_26_out {Type O LastRead -1 FirstWrite 1}}
	schedule_access_100_Pipeline_VITIS_LOOP_105_3 {
		select_ln105 {Type I LastRead 0 FirstWrite -1}
		bv2 {Type I LastRead 2 FirstWrite -1}
		sext_ln105 {Type I LastRead 0 FirstWrite -1}
		voff {Type O LastRead -1 FirstWrite 3}}
	request_manager_60 {
		crequest {Type I LastRead 0 FirstWrite -1}
		c_first {Type O LastRead -1 FirstWrite 1}}
	request_manager_60_Pipeline_VITIS_LOOP_48_1 {
		crequest {Type I LastRead 0 FirstWrite -1}
		c_first {Type O LastRead -1 FirstWrite 1}
		curr_request_3_0_out {Type O LastRead -1 FirstWrite 0}
		curr_request_6_0_out {Type O LastRead -1 FirstWrite 0}
		curr_request_7_0_out {Type O LastRead -1 FirstWrite 0}}
	schedule_access_101 {
		cscheduler {Type I LastRead 1 FirstWrite -1}
		cresponse2 {Type I LastRead 3 FirstWrite -1}
		coff {Type O LastRead -1 FirstWrite 3}
		bc2 {Type I LastRead 5 FirstWrite -1}
		off_pointer {Type I LastRead 0 FirstWrite -1}
		c_req {Type O LastRead -1 FirstWrite 1}
		c_hit {Type O LastRead -1 FirstWrite 4}}
	schedule_access_101_Pipeline_VITIS_LOOP_112_4 {
		zext_ln92 {Type I LastRead 0 FirstWrite -1}
		min_idx {Type I LastRead 0 FirstWrite -1}
		add_ln92 {Type I LastRead 0 FirstWrite -1}
		ori_request_peID {Type I LastRead 0 FirstWrite -1}
		zext_ln100 {Type I LastRead 0 FirstWrite -1}
		add_ln125 {Type I LastRead 0 FirstWrite -1}
		coff {Type O LastRead -1 FirstWrite 3}
		bc2 {Type I LastRead 2 FirstWrite -1}
		sext_ln112 {Type I LastRead 0 FirstWrite -1}
		trunc_ln37 {Type I LastRead 0 FirstWrite -1}
		begin_block_idx {Type I LastRead 0 FirstWrite -1}
		c_req {Type O LastRead -1 FirstWrite 3}
		curr_request_9_211_out {Type O LastRead -1 FirstWrite 2}
		curr_request_7_210_out {Type O LastRead -1 FirstWrite 1}
		curr_request_6_29_out {Type O LastRead -1 FirstWrite 1}
		curr_request_5_27_out {Type O LastRead -1 FirstWrite 1}
		curr_request_3_26_out {Type O LastRead -1 FirstWrite 1}}
	schedule_access_101_Pipeline_VITIS_LOOP_105_3 {
		select_ln105 {Type I LastRead 0 FirstWrite -1}
		bc2 {Type I LastRead 2 FirstWrite -1}
		sext_ln105 {Type I LastRead 0 FirstWrite -1}
		coff {Type O LastRead -1 FirstWrite 3}}
	request_merger_61 {
		v_first {Type I LastRead 0 FirstWrite -1}
		v_req {Type I LastRead 0 FirstWrite -1}
		vrequest2 {Type O LastRead -1 FirstWrite 1}}
	request_merger_61_Pipeline_VITIS_LOOP_152_1 {
		v_first {Type I LastRead 0 FirstWrite -1}
		vrequest2 {Type O LastRead -1 FirstWrite 1}
		v_req {Type I LastRead 0 FirstWrite -1}
		temp_8_sroa_5_0_out {Type O LastRead -1 FirstWrite 0}
		temp_8_sroa_0_0_out {Type O LastRead -1 FirstWrite 0}
		temp_9_0_out {Type O LastRead -1 FirstWrite 0}
		temp_797_0_out {Type O LastRead -1 FirstWrite 0}
		temp_696_0_out {Type O LastRead -1 FirstWrite 0}
		temp_5_0_out {Type O LastRead -1 FirstWrite 0}
		temp_4_0_out {Type O LastRead -1 FirstWrite 0}
		temp_3_0_out {Type O LastRead -1 FirstWrite 0}
		temp_2_0_out {Type O LastRead -1 FirstWrite 0}
		temp_1_0_out {Type O LastRead -1 FirstWrite 0}}
	request_merger_62 {
		c_first {Type I LastRead 0 FirstWrite -1}
		c_req {Type I LastRead 0 FirstWrite -1}
		crequest2 {Type O LastRead -1 FirstWrite 1}}
	request_merger_62_Pipeline_VITIS_LOOP_152_1 {
		c_first {Type I LastRead 0 FirstWrite -1}
		crequest2 {Type O LastRead -1 FirstWrite 1}
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
		temp_1_0_out {Type O LastRead -1 FirstWrite 0}}
	collector_63 {
		vcollector {Type I LastRead 1 FirstWrite -1}
		vresult2 {Type I LastRead 1 FirstWrite -1}
		voff {Type I LastRead 1 FirstWrite -1}
		vblock2 {Type O LastRead -1 FirstWrite 2}
		v_hit {Type I LastRead 1 FirstWrite -1}}
	collector_63_Pipeline_VITIS_LOOP_185_2 {
		tmp {Type I LastRead 0 FirstWrite -1}
		trunc_ln183_5 {Type I LastRead 0 FirstWrite -1}
		add_ln185 {Type I LastRead 0 FirstWrite -1}
		vblock2 {Type O LastRead -1 FirstWrite 2}
		cached_5 {Type I LastRead 0 FirstWrite -1}
		trunc_ln189_5 {Type I LastRead 0 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}
		hit {Type I LastRead 0 FirstWrite -1}
		voff {Type I LastRead 1 FirstWrite -1}}
	collector_64 {
		ccollector {Type I LastRead 1 FirstWrite -1}
		cresult2 {Type I LastRead 1 FirstWrite -1}
		coff {Type I LastRead 1 FirstWrite -1}
		cblock2 {Type O LastRead -1 FirstWrite 2}
		c_hit {Type I LastRead 1 FirstWrite -1}}
	collector_64_Pipeline_VITIS_LOOP_185_2 {
		tmp {Type I LastRead 0 FirstWrite -1}
		trunc_ln183_4 {Type I LastRead 0 FirstWrite -1}
		add_ln185 {Type I LastRead 0 FirstWrite -1}
		cblock2 {Type O LastRead -1 FirstWrite 2}
		cached_4 {Type I LastRead 0 FirstWrite -1}
		trunc_ln189_4 {Type I LastRead 0 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}
		hit {Type I LastRead 0 FirstWrite -1}
		coff {Type I LastRead 1 FirstWrite -1}}
	vcrequest_manager_94 {
		rcache_result_bank3_b {Type I LastRead 0 FirstWrite -1}
		vrequest3 {Type O LastRead -1 FirstWrite 1}
		crequest3 {Type O LastRead -1 FirstWrite 1}
		vresponse3 {Type I LastRead 3 FirstWrite -1}
		cresponse3 {Type I LastRead 3 FirstWrite -1}
		vresult3 {Type I LastRead 1 FirstWrite -1}
		cresult3 {Type I LastRead 1 FirstWrite -1}
		vblock3 {Type O LastRead -1 FirstWrite 2}
		cblock3 {Type O LastRead -1 FirstWrite 2}
		bv3 {Type I LastRead 5 FirstWrite -1}
		B_val {Type I LastRead 2 FirstWrite -1}
		bc3 {Type I LastRead 5 FirstWrite -1}
		B_cid {Type I LastRead 2 FirstWrite -1}}
	vcrequest_splitter_65 {
		rcache_result_bank3_b {Type I LastRead 0 FirstWrite -1}
		vrequest {Type O LastRead -1 FirstWrite 1}
		crequest {Type O LastRead -1 FirstWrite 1}
		vcollector {Type O LastRead -1 FirstWrite 1}
		ccollector {Type O LastRead -1 FirstWrite 1}
		vscheduler {Type O LastRead -1 FirstWrite 1}
		cscheduler {Type O LastRead -1 FirstWrite 1}}
	vcrequest_splitter_65_Pipeline_VITIS_LOOP_12_1 {
		rcache_result_bank3_b {Type I LastRead 0 FirstWrite -1}
		vrequest {Type O LastRead -1 FirstWrite 1}
		crequest {Type O LastRead -1 FirstWrite 1}
		vcollector {Type O LastRead -1 FirstWrite 1}
		ccollector {Type O LastRead -1 FirstWrite 1}
		vscheduler {Type O LastRead -1 FirstWrite 1}
		cscheduler {Type O LastRead -1 FirstWrite 1}
		tcontrol_peID_out {Type O LastRead -1 FirstWrite 0}
		tcontrol_bridx_out {Type O LastRead -1 FirstWrite 0}
		tcontrol_brlen_out {Type O LastRead -1 FirstWrite 0}}
	request_manager_66 {
		vrequest {Type I LastRead 0 FirstWrite -1}
		v_first {Type O LastRead -1 FirstWrite 1}}
	request_manager_66_Pipeline_VITIS_LOOP_48_1 {
		vrequest {Type I LastRead 0 FirstWrite -1}
		v_first {Type O LastRead -1 FirstWrite 1}
		curr_request_3_0_out {Type O LastRead -1 FirstWrite 0}
		curr_request_6_0_out {Type O LastRead -1 FirstWrite 0}
		curr_request_7_0_out {Type O LastRead -1 FirstWrite 0}}
	schedule_access_102 {
		vscheduler {Type I LastRead 1 FirstWrite -1}
		vresponse3 {Type I LastRead 3 FirstWrite -1}
		voff {Type O LastRead -1 FirstWrite 3}
		bv3 {Type I LastRead 5 FirstWrite -1}
		off_pointer {Type I LastRead 0 FirstWrite -1}
		v_req {Type O LastRead -1 FirstWrite 1}
		v_hit {Type O LastRead -1 FirstWrite 4}}
	schedule_access_102_Pipeline_VITIS_LOOP_112_4 {
		zext_ln92 {Type I LastRead 0 FirstWrite -1}
		min_idx {Type I LastRead 0 FirstWrite -1}
		add_ln92 {Type I LastRead 0 FirstWrite -1}
		ori_request_peID {Type I LastRead 0 FirstWrite -1}
		zext_ln100 {Type I LastRead 0 FirstWrite -1}
		add_ln125 {Type I LastRead 0 FirstWrite -1}
		voff {Type O LastRead -1 FirstWrite 3}
		bv3 {Type I LastRead 2 FirstWrite -1}
		sext_ln112 {Type I LastRead 0 FirstWrite -1}
		trunc_ln34 {Type I LastRead 0 FirstWrite -1}
		begin_block_idx {Type I LastRead 0 FirstWrite -1}
		v_req {Type O LastRead -1 FirstWrite 3}
		curr_request_9_211_out {Type O LastRead -1 FirstWrite 2}
		curr_request_7_210_out {Type O LastRead -1 FirstWrite 1}
		curr_request_6_29_out {Type O LastRead -1 FirstWrite 1}
		curr_request_5_27_out {Type O LastRead -1 FirstWrite 1}
		curr_request_3_26_out {Type O LastRead -1 FirstWrite 1}}
	schedule_access_102_Pipeline_VITIS_LOOP_105_3 {
		select_ln105 {Type I LastRead 0 FirstWrite -1}
		bv3 {Type I LastRead 2 FirstWrite -1}
		sext_ln105 {Type I LastRead 0 FirstWrite -1}
		voff {Type O LastRead -1 FirstWrite 3}}
	request_manager_67 {
		crequest {Type I LastRead 0 FirstWrite -1}
		c_first {Type O LastRead -1 FirstWrite 1}}
	request_manager_67_Pipeline_VITIS_LOOP_48_1 {
		crequest {Type I LastRead 0 FirstWrite -1}
		c_first {Type O LastRead -1 FirstWrite 1}
		curr_request_3_0_out {Type O LastRead -1 FirstWrite 0}
		curr_request_6_0_out {Type O LastRead -1 FirstWrite 0}
		curr_request_7_0_out {Type O LastRead -1 FirstWrite 0}}
	schedule_access_103 {
		cscheduler {Type I LastRead 1 FirstWrite -1}
		cresponse3 {Type I LastRead 3 FirstWrite -1}
		coff {Type O LastRead -1 FirstWrite 3}
		bc3 {Type I LastRead 5 FirstWrite -1}
		off_pointer {Type I LastRead 0 FirstWrite -1}
		c_req {Type O LastRead -1 FirstWrite 1}
		c_hit {Type O LastRead -1 FirstWrite 4}}
	schedule_access_103_Pipeline_VITIS_LOOP_112_4 {
		zext_ln92 {Type I LastRead 0 FirstWrite -1}
		min_idx {Type I LastRead 0 FirstWrite -1}
		add_ln92 {Type I LastRead 0 FirstWrite -1}
		ori_request_peID {Type I LastRead 0 FirstWrite -1}
		zext_ln100 {Type I LastRead 0 FirstWrite -1}
		add_ln125 {Type I LastRead 0 FirstWrite -1}
		coff {Type O LastRead -1 FirstWrite 3}
		bc3 {Type I LastRead 2 FirstWrite -1}
		sext_ln112 {Type I LastRead 0 FirstWrite -1}
		trunc_ln31 {Type I LastRead 0 FirstWrite -1}
		begin_block_idx {Type I LastRead 0 FirstWrite -1}
		c_req {Type O LastRead -1 FirstWrite 3}
		curr_request_9_211_out {Type O LastRead -1 FirstWrite 2}
		curr_request_7_210_out {Type O LastRead -1 FirstWrite 1}
		curr_request_6_29_out {Type O LastRead -1 FirstWrite 1}
		curr_request_5_27_out {Type O LastRead -1 FirstWrite 1}
		curr_request_3_26_out {Type O LastRead -1 FirstWrite 1}}
	schedule_access_103_Pipeline_VITIS_LOOP_105_3 {
		select_ln105 {Type I LastRead 0 FirstWrite -1}
		bc3 {Type I LastRead 2 FirstWrite -1}
		sext_ln105 {Type I LastRead 0 FirstWrite -1}
		coff {Type O LastRead -1 FirstWrite 3}}
	request_merger_68 {
		v_first {Type I LastRead 0 FirstWrite -1}
		v_req {Type I LastRead 0 FirstWrite -1}
		vrequest3 {Type O LastRead -1 FirstWrite 1}}
	request_merger_68_Pipeline_VITIS_LOOP_152_1 {
		v_first {Type I LastRead 0 FirstWrite -1}
		vrequest3 {Type O LastRead -1 FirstWrite 1}
		v_req {Type I LastRead 0 FirstWrite -1}
		temp_8_sroa_5_0_out {Type O LastRead -1 FirstWrite 0}
		temp_8_sroa_0_0_out {Type O LastRead -1 FirstWrite 0}
		temp_9_0_out {Type O LastRead -1 FirstWrite 0}
		temp_797_0_out {Type O LastRead -1 FirstWrite 0}
		temp_696_0_out {Type O LastRead -1 FirstWrite 0}
		temp_5_0_out {Type O LastRead -1 FirstWrite 0}
		temp_4_0_out {Type O LastRead -1 FirstWrite 0}
		temp_3_0_out {Type O LastRead -1 FirstWrite 0}
		temp_2_0_out {Type O LastRead -1 FirstWrite 0}
		temp_1_0_out {Type O LastRead -1 FirstWrite 0}}
	request_merger_69 {
		c_first {Type I LastRead 0 FirstWrite -1}
		c_req {Type I LastRead 0 FirstWrite -1}
		crequest3 {Type O LastRead -1 FirstWrite 1}}
	request_merger_69_Pipeline_VITIS_LOOP_152_1 {
		c_first {Type I LastRead 0 FirstWrite -1}
		crequest3 {Type O LastRead -1 FirstWrite 1}
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
		temp_1_0_out {Type O LastRead -1 FirstWrite 0}}
	collector_70 {
		vcollector {Type I LastRead 1 FirstWrite -1}
		vresult3 {Type I LastRead 1 FirstWrite -1}
		voff {Type I LastRead 1 FirstWrite -1}
		vblock3 {Type O LastRead -1 FirstWrite 2}
		v_hit {Type I LastRead 1 FirstWrite -1}}
	collector_70_Pipeline_VITIS_LOOP_185_2 {
		tmp {Type I LastRead 0 FirstWrite -1}
		trunc_ln183_3 {Type I LastRead 0 FirstWrite -1}
		add_ln185 {Type I LastRead 0 FirstWrite -1}
		vblock3 {Type O LastRead -1 FirstWrite 2}
		cached_3 {Type I LastRead 0 FirstWrite -1}
		trunc_ln189_3 {Type I LastRead 0 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}
		hit {Type I LastRead 0 FirstWrite -1}
		voff {Type I LastRead 1 FirstWrite -1}}
	collector_71 {
		ccollector {Type I LastRead 1 FirstWrite -1}
		cresult3 {Type I LastRead 1 FirstWrite -1}
		coff {Type I LastRead 1 FirstWrite -1}
		cblock3 {Type O LastRead -1 FirstWrite 2}
		c_hit {Type I LastRead 1 FirstWrite -1}}
	collector_71_Pipeline_VITIS_LOOP_185_2 {
		tmp {Type I LastRead 0 FirstWrite -1}
		trunc_ln183_2 {Type I LastRead 0 FirstWrite -1}
		add_ln185 {Type I LastRead 0 FirstWrite -1}
		cblock3 {Type O LastRead -1 FirstWrite 2}
		cached_2 {Type I LastRead 0 FirstWrite -1}
		trunc_ln189_2 {Type I LastRead 0 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}
		hit {Type I LastRead 0 FirstWrite -1}
		coff {Type I LastRead 1 FirstWrite -1}}
	vcrequest_manager_95 {
		rcache_result_bank4_b {Type I LastRead 0 FirstWrite -1}
		vrequest4 {Type O LastRead -1 FirstWrite 1}
		crequest4 {Type O LastRead -1 FirstWrite 1}
		vresponse4 {Type I LastRead 3 FirstWrite -1}
		cresponse4 {Type I LastRead 3 FirstWrite -1}
		vresult4 {Type I LastRead 1 FirstWrite -1}
		cresult4 {Type I LastRead 1 FirstWrite -1}
		vblock4 {Type O LastRead -1 FirstWrite 2}
		cblock4 {Type O LastRead -1 FirstWrite 2}
		bv4 {Type I LastRead 5 FirstWrite -1}
		B_val {Type I LastRead 2 FirstWrite -1}
		bc4 {Type I LastRead 5 FirstWrite -1}
		B_cid {Type I LastRead 2 FirstWrite -1}}
	vcrequest_splitter {
		rcache_result_bank4_b {Type I LastRead 0 FirstWrite -1}
		vrequest {Type O LastRead -1 FirstWrite 1}
		crequest {Type O LastRead -1 FirstWrite 1}
		vcollector {Type O LastRead -1 FirstWrite 1}
		ccollector {Type O LastRead -1 FirstWrite 1}
		vscheduler {Type O LastRead -1 FirstWrite 1}
		cscheduler {Type O LastRead -1 FirstWrite 1}}
	vcrequest_splitter_Pipeline_VITIS_LOOP_12_1 {
		rcache_result_bank4_b {Type I LastRead 0 FirstWrite -1}
		vrequest {Type O LastRead -1 FirstWrite 1}
		crequest {Type O LastRead -1 FirstWrite 1}
		vcollector {Type O LastRead -1 FirstWrite 1}
		ccollector {Type O LastRead -1 FirstWrite 1}
		vscheduler {Type O LastRead -1 FirstWrite 1}
		cscheduler {Type O LastRead -1 FirstWrite 1}
		tcontrol_peID_out {Type O LastRead -1 FirstWrite 0}
		tcontrol_bridx_out {Type O LastRead -1 FirstWrite 0}
		tcontrol_brlen_out {Type O LastRead -1 FirstWrite 0}}
	request_manager_72 {
		vrequest {Type I LastRead 0 FirstWrite -1}
		v_first {Type O LastRead -1 FirstWrite 1}}
	request_manager_72_Pipeline_VITIS_LOOP_48_1 {
		vrequest {Type I LastRead 0 FirstWrite -1}
		v_first {Type O LastRead -1 FirstWrite 1}
		curr_request_3_0_out {Type O LastRead -1 FirstWrite 0}
		curr_request_6_0_out {Type O LastRead -1 FirstWrite 0}
		curr_request_7_0_out {Type O LastRead -1 FirstWrite 0}}
	schedule_access_104 {
		vscheduler {Type I LastRead 1 FirstWrite -1}
		vresponse4 {Type I LastRead 3 FirstWrite -1}
		voff {Type O LastRead -1 FirstWrite 3}
		bv4 {Type I LastRead 5 FirstWrite -1}
		off_pointer {Type I LastRead 0 FirstWrite -1}
		v_req {Type O LastRead -1 FirstWrite 1}
		v_hit {Type O LastRead -1 FirstWrite 4}}
	schedule_access_104_Pipeline_VITIS_LOOP_112_4 {
		zext_ln92 {Type I LastRead 0 FirstWrite -1}
		min_idx {Type I LastRead 0 FirstWrite -1}
		add_ln92 {Type I LastRead 0 FirstWrite -1}
		ori_request_peID {Type I LastRead 0 FirstWrite -1}
		zext_ln100 {Type I LastRead 0 FirstWrite -1}
		add_ln125 {Type I LastRead 0 FirstWrite -1}
		voff {Type O LastRead -1 FirstWrite 3}
		bv4 {Type I LastRead 2 FirstWrite -1}
		sext_ln112 {Type I LastRead 0 FirstWrite -1}
		trunc_ln28 {Type I LastRead 0 FirstWrite -1}
		begin_block_idx {Type I LastRead 0 FirstWrite -1}
		v_req {Type O LastRead -1 FirstWrite 3}
		curr_request_9_211_out {Type O LastRead -1 FirstWrite 2}
		curr_request_7_210_out {Type O LastRead -1 FirstWrite 1}
		curr_request_6_29_out {Type O LastRead -1 FirstWrite 1}
		curr_request_5_27_out {Type O LastRead -1 FirstWrite 1}
		curr_request_3_26_out {Type O LastRead -1 FirstWrite 1}}
	schedule_access_104_Pipeline_VITIS_LOOP_105_3 {
		select_ln105 {Type I LastRead 0 FirstWrite -1}
		bv4 {Type I LastRead 2 FirstWrite -1}
		sext_ln105 {Type I LastRead 0 FirstWrite -1}
		voff {Type O LastRead -1 FirstWrite 3}}
	request_manager {
		crequest {Type I LastRead 0 FirstWrite -1}
		c_first {Type O LastRead -1 FirstWrite 1}}
	request_manager_Pipeline_VITIS_LOOP_48_1 {
		crequest {Type I LastRead 0 FirstWrite -1}
		c_first {Type O LastRead -1 FirstWrite 1}
		curr_request_3_0_out {Type O LastRead -1 FirstWrite 0}
		curr_request_6_0_out {Type O LastRead -1 FirstWrite 0}
		curr_request_7_0_out {Type O LastRead -1 FirstWrite 0}}
	schedule_access_105 {
		cscheduler {Type I LastRead 1 FirstWrite -1}
		cresponse4 {Type I LastRead 3 FirstWrite -1}
		coff {Type O LastRead -1 FirstWrite 3}
		bc4 {Type I LastRead 5 FirstWrite -1}
		off_pointer {Type I LastRead 0 FirstWrite -1}
		c_req {Type O LastRead -1 FirstWrite 1}
		c_hit {Type O LastRead -1 FirstWrite 4}}
	schedule_access_105_Pipeline_VITIS_LOOP_112_4 {
		zext_ln92 {Type I LastRead 0 FirstWrite -1}
		min_idx {Type I LastRead 0 FirstWrite -1}
		add_ln92 {Type I LastRead 0 FirstWrite -1}
		ori_request_peID {Type I LastRead 0 FirstWrite -1}
		zext_ln100 {Type I LastRead 0 FirstWrite -1}
		add_ln125 {Type I LastRead 0 FirstWrite -1}
		coff {Type O LastRead -1 FirstWrite 3}
		bc4 {Type I LastRead 2 FirstWrite -1}
		sext_ln112 {Type I LastRead 0 FirstWrite -1}
		trunc_ln25 {Type I LastRead 0 FirstWrite -1}
		begin_block_idx {Type I LastRead 0 FirstWrite -1}
		c_req {Type O LastRead -1 FirstWrite 3}
		curr_request_9_211_out {Type O LastRead -1 FirstWrite 2}
		curr_request_7_210_out {Type O LastRead -1 FirstWrite 1}
		curr_request_6_29_out {Type O LastRead -1 FirstWrite 1}
		curr_request_5_27_out {Type O LastRead -1 FirstWrite 1}
		curr_request_3_26_out {Type O LastRead -1 FirstWrite 1}}
	schedule_access_105_Pipeline_VITIS_LOOP_105_3 {
		select_ln105 {Type I LastRead 0 FirstWrite -1}
		bc4 {Type I LastRead 2 FirstWrite -1}
		sext_ln105 {Type I LastRead 0 FirstWrite -1}
		coff {Type O LastRead -1 FirstWrite 3}}
	request_merger_73 {
		v_first {Type I LastRead 0 FirstWrite -1}
		v_req {Type I LastRead 0 FirstWrite -1}
		vrequest4 {Type O LastRead -1 FirstWrite 1}}
	request_merger_73_Pipeline_VITIS_LOOP_152_1 {
		v_first {Type I LastRead 0 FirstWrite -1}
		vrequest4 {Type O LastRead -1 FirstWrite 1}
		v_req {Type I LastRead 0 FirstWrite -1}
		temp_8_sroa_5_0_out {Type O LastRead -1 FirstWrite 0}
		temp_8_sroa_0_0_out {Type O LastRead -1 FirstWrite 0}
		temp_9_0_out {Type O LastRead -1 FirstWrite 0}
		temp_797_0_out {Type O LastRead -1 FirstWrite 0}
		temp_696_0_out {Type O LastRead -1 FirstWrite 0}
		temp_5_0_out {Type O LastRead -1 FirstWrite 0}
		temp_4_0_out {Type O LastRead -1 FirstWrite 0}
		temp_3_0_out {Type O LastRead -1 FirstWrite 0}
		temp_2_0_out {Type O LastRead -1 FirstWrite 0}
		temp_1_0_out {Type O LastRead -1 FirstWrite 0}}
	request_merger {
		c_first {Type I LastRead 0 FirstWrite -1}
		c_req {Type I LastRead 0 FirstWrite -1}
		crequest4 {Type O LastRead -1 FirstWrite 1}}
	request_merger_Pipeline_VITIS_LOOP_152_1 {
		c_first {Type I LastRead 0 FirstWrite -1}
		crequest4 {Type O LastRead -1 FirstWrite 1}
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
		temp_1_0_out {Type O LastRead -1 FirstWrite 0}}
	collector_74 {
		vcollector {Type I LastRead 1 FirstWrite -1}
		vresult4 {Type I LastRead 1 FirstWrite -1}
		voff {Type I LastRead 1 FirstWrite -1}
		vblock4 {Type O LastRead -1 FirstWrite 2}
		v_hit {Type I LastRead 1 FirstWrite -1}}
	collector_74_Pipeline_VITIS_LOOP_185_2 {
		tmp {Type I LastRead 0 FirstWrite -1}
		trunc_ln183_1 {Type I LastRead 0 FirstWrite -1}
		add_ln185 {Type I LastRead 0 FirstWrite -1}
		vblock4 {Type O LastRead -1 FirstWrite 2}
		cached_1 {Type I LastRead 0 FirstWrite -1}
		trunc_ln189_1 {Type I LastRead 0 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}
		hit {Type I LastRead 0 FirstWrite -1}
		voff {Type I LastRead 1 FirstWrite -1}}
	collector {
		ccollector {Type I LastRead 1 FirstWrite -1}
		cresult4 {Type I LastRead 1 FirstWrite -1}
		coff {Type I LastRead 1 FirstWrite -1}
		cblock4 {Type O LastRead -1 FirstWrite 2}
		c_hit {Type I LastRead 1 FirstWrite -1}}
	collector_Pipeline_VITIS_LOOP_185_2 {
		tmp {Type I LastRead 0 FirstWrite -1}
		trunc_ln183_8 {Type I LastRead 0 FirstWrite -1}
		add_ln185 {Type I LastRead 0 FirstWrite -1}
		cblock4 {Type O LastRead -1 FirstWrite 2}
		cached_8 {Type I LastRead 0 FirstWrite -1}
		trunc_ln189_8 {Type I LastRead 0 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}
		hit {Type I LastRead 0 FirstWrite -1}
		coff {Type I LastRead 1 FirstWrite -1}}
	request_to_vcbanks_19 {
		vrequest1 {Type I LastRead 0 FirstWrite -1}
		base_addr_val {Type I LastRead 0 FirstWrite -1}
		base_addr_cid {Type I LastRead 0 FirstWrite -1}
		vccache_re_bank1_pe1 {Type O LastRead -1 FirstWrite 1}
		vccache_re_bank2_pe1 {Type O LastRead -1 FirstWrite 1}
		B_val_base_c {Type O LastRead -1 FirstWrite 0}
		B_val_base_c5 {Type O LastRead -1 FirstWrite 0}}
	request_to_vcbanks_19_Pipeline_VITIS_LOOP_243_1 {
		vrequest1 {Type I LastRead 0 FirstWrite -1}
		vccache_re_bank1_pe1 {Type O LastRead -1 FirstWrite 1}
		base_addr_val_9 {Type I LastRead 0 FirstWrite -1}
		base_addr_cid_7 {Type I LastRead 0 FirstWrite -1}
		vccache_re_bank2_pe1 {Type O LastRead -1 FirstWrite 1}
		temp_vcreq_8_sroa_5_0_out {Type O LastRead -1 FirstWrite 0}
		temp_vcreq_8_sroa_0_0_out {Type O LastRead -1 FirstWrite 0}
		temp_vcreq_9_0_out {Type O LastRead -1 FirstWrite 0}
		temp_vcreq_7107_0_out {Type O LastRead -1 FirstWrite 0}
		temp_vcreq_6106_0_out {Type O LastRead -1 FirstWrite 0}
		temp_vcreq_5_0_out {Type O LastRead -1 FirstWrite 0}
		temp_vcreq_4_0_out {Type O LastRead -1 FirstWrite 0}
		temp_vcreq_3_0_out {Type O LastRead -1 FirstWrite 0}
		temp_vcreq_2_0_out {Type O LastRead -1 FirstWrite 0}
		temp_vcreq_1_0_out {Type O LastRead -1 FirstWrite 0}}
	request_to_vcbanks_20 {
		vrequest2 {Type I LastRead 0 FirstWrite -1}
		base_addr_val {Type I LastRead 0 FirstWrite -1}
		base_addr_cid {Type I LastRead 0 FirstWrite -1}
		vccache_re_bank1_pe2 {Type O LastRead -1 FirstWrite 1}
		vccache_re_bank2_pe2 {Type O LastRead -1 FirstWrite 1}}
	request_to_vcbanks_20_Pipeline_VITIS_LOOP_243_1 {
		vrequest2 {Type I LastRead 0 FirstWrite -1}
		vccache_re_bank1_pe2 {Type O LastRead -1 FirstWrite 1}
		base_addr_val_8 {Type I LastRead 0 FirstWrite -1}
		base_addr_cid_6 {Type I LastRead 0 FirstWrite -1}
		vccache_re_bank2_pe2 {Type O LastRead -1 FirstWrite 1}
		temp_vcreq_8_sroa_5_0_out {Type O LastRead -1 FirstWrite 0}
		temp_vcreq_8_sroa_0_0_out {Type O LastRead -1 FirstWrite 0}
		temp_vcreq_9_0_out {Type O LastRead -1 FirstWrite 0}
		temp_vcreq_7107_0_out {Type O LastRead -1 FirstWrite 0}
		temp_vcreq_6106_0_out {Type O LastRead -1 FirstWrite 0}
		temp_vcreq_5_0_out {Type O LastRead -1 FirstWrite 0}
		temp_vcreq_4_0_out {Type O LastRead -1 FirstWrite 0}
		temp_vcreq_3_0_out {Type O LastRead -1 FirstWrite 0}
		temp_vcreq_2_0_out {Type O LastRead -1 FirstWrite 0}
		temp_vcreq_1_0_out {Type O LastRead -1 FirstWrite 0}}
	request_to_vcbanks_21 {
		vrequest3 {Type I LastRead 0 FirstWrite -1}
		base_addr_val {Type I LastRead 0 FirstWrite -1}
		base_addr_cid {Type I LastRead 0 FirstWrite -1}
		vccache_re_bank1_pe3 {Type O LastRead -1 FirstWrite 1}
		vccache_re_bank2_pe3 {Type O LastRead -1 FirstWrite 1}}
	request_to_vcbanks_21_Pipeline_VITIS_LOOP_243_1 {
		vrequest3 {Type I LastRead 0 FirstWrite -1}
		vccache_re_bank1_pe3 {Type O LastRead -1 FirstWrite 1}
		base_addr_val_7 {Type I LastRead 0 FirstWrite -1}
		base_addr_cid_5 {Type I LastRead 0 FirstWrite -1}
		vccache_re_bank2_pe3 {Type O LastRead -1 FirstWrite 1}
		temp_vcreq_8_sroa_5_0_out {Type O LastRead -1 FirstWrite 0}
		temp_vcreq_8_sroa_0_0_out {Type O LastRead -1 FirstWrite 0}
		temp_vcreq_9_0_out {Type O LastRead -1 FirstWrite 0}
		temp_vcreq_7107_0_out {Type O LastRead -1 FirstWrite 0}
		temp_vcreq_6106_0_out {Type O LastRead -1 FirstWrite 0}
		temp_vcreq_5_0_out {Type O LastRead -1 FirstWrite 0}
		temp_vcreq_4_0_out {Type O LastRead -1 FirstWrite 0}
		temp_vcreq_3_0_out {Type O LastRead -1 FirstWrite 0}
		temp_vcreq_2_0_out {Type O LastRead -1 FirstWrite 0}
		temp_vcreq_1_0_out {Type O LastRead -1 FirstWrite 0}}
	request_to_vcbanks_22 {
		vrequest4 {Type I LastRead 0 FirstWrite -1}
		base_addr_val {Type I LastRead 0 FirstWrite -1}
		base_addr_cid {Type I LastRead 0 FirstWrite -1}
		vccache_re_bank1_pe4 {Type O LastRead -1 FirstWrite 1}
		vccache_re_bank2_pe4 {Type O LastRead -1 FirstWrite 1}}
	request_to_vcbanks_22_Pipeline_VITIS_LOOP_243_1 {
		vrequest4 {Type I LastRead 0 FirstWrite -1}
		vccache_re_bank1_pe4 {Type O LastRead -1 FirstWrite 1}
		base_addr_val_6 {Type I LastRead 0 FirstWrite -1}
		base_addr_cid_4 {Type I LastRead 0 FirstWrite -1}
		vccache_re_bank2_pe4 {Type O LastRead -1 FirstWrite 1}
		temp_vcreq_8_sroa_5_0_out {Type O LastRead -1 FirstWrite 0}
		temp_vcreq_8_sroa_0_0_out {Type O LastRead -1 FirstWrite 0}
		temp_vcreq_9_0_out {Type O LastRead -1 FirstWrite 0}
		temp_vcreq_7107_0_out {Type O LastRead -1 FirstWrite 0}
		temp_vcreq_6106_0_out {Type O LastRead -1 FirstWrite 0}
		temp_vcreq_5_0_out {Type O LastRead -1 FirstWrite 0}
		temp_vcreq_4_0_out {Type O LastRead -1 FirstWrite 0}
		temp_vcreq_3_0_out {Type O LastRead -1 FirstWrite 0}
		temp_vcreq_2_0_out {Type O LastRead -1 FirstWrite 0}
		temp_vcreq_1_0_out {Type O LastRead -1 FirstWrite 0}}
	request_to_vcbanks_23 {
		crequest1 {Type I LastRead 0 FirstWrite -1}
		base_addr_val {Type I LastRead 0 FirstWrite -1}
		base_addr_cid {Type I LastRead 0 FirstWrite -1}
		vccache_re_bank1_pe5 {Type O LastRead -1 FirstWrite 1}
		vccache_re_bank2_pe5 {Type O LastRead -1 FirstWrite 1}
		B_cid_base_c {Type O LastRead -1 FirstWrite 0}
		B_cid_base_c14 {Type O LastRead -1 FirstWrite 0}}
	request_to_vcbanks_23_Pipeline_VITIS_LOOP_243_1 {
		crequest1 {Type I LastRead 0 FirstWrite -1}
		vccache_re_bank1_pe5 {Type O LastRead -1 FirstWrite 1}
		base_addr_val_5 {Type I LastRead 0 FirstWrite -1}
		base_addr_cid_3 {Type I LastRead 0 FirstWrite -1}
		vccache_re_bank2_pe5 {Type O LastRead -1 FirstWrite 1}
		temp_vcreq_8_sroa_5_0_out {Type O LastRead -1 FirstWrite 0}
		temp_vcreq_8_sroa_0_0_out {Type O LastRead -1 FirstWrite 0}
		temp_vcreq_9_0_out {Type O LastRead -1 FirstWrite 0}
		temp_vcreq_7107_0_out {Type O LastRead -1 FirstWrite 0}
		temp_vcreq_6106_0_out {Type O LastRead -1 FirstWrite 0}
		temp_vcreq_5_0_out {Type O LastRead -1 FirstWrite 0}
		temp_vcreq_4_0_out {Type O LastRead -1 FirstWrite 0}
		temp_vcreq_3_0_out {Type O LastRead -1 FirstWrite 0}
		temp_vcreq_2_0_out {Type O LastRead -1 FirstWrite 0}
		temp_vcreq_1_0_out {Type O LastRead -1 FirstWrite 0}}
	request_to_vcbanks_24 {
		crequest2 {Type I LastRead 0 FirstWrite -1}
		base_addr_val {Type I LastRead 0 FirstWrite -1}
		base_addr_cid {Type I LastRead 0 FirstWrite -1}
		vccache_re_bank1_pe6 {Type O LastRead -1 FirstWrite 1}
		vccache_re_bank2_pe6 {Type O LastRead -1 FirstWrite 1}}
	request_to_vcbanks_24_Pipeline_VITIS_LOOP_243_1 {
		crequest2 {Type I LastRead 0 FirstWrite -1}
		vccache_re_bank1_pe6 {Type O LastRead -1 FirstWrite 1}
		base_addr_val_4 {Type I LastRead 0 FirstWrite -1}
		base_addr_cid_2 {Type I LastRead 0 FirstWrite -1}
		vccache_re_bank2_pe6 {Type O LastRead -1 FirstWrite 1}
		temp_vcreq_8_sroa_5_0_out {Type O LastRead -1 FirstWrite 0}
		temp_vcreq_8_sroa_0_0_out {Type O LastRead -1 FirstWrite 0}
		temp_vcreq_9_0_out {Type O LastRead -1 FirstWrite 0}
		temp_vcreq_7107_0_out {Type O LastRead -1 FirstWrite 0}
		temp_vcreq_6106_0_out {Type O LastRead -1 FirstWrite 0}
		temp_vcreq_5_0_out {Type O LastRead -1 FirstWrite 0}
		temp_vcreq_4_0_out {Type O LastRead -1 FirstWrite 0}
		temp_vcreq_3_0_out {Type O LastRead -1 FirstWrite 0}
		temp_vcreq_2_0_out {Type O LastRead -1 FirstWrite 0}
		temp_vcreq_1_0_out {Type O LastRead -1 FirstWrite 0}}
	request_to_vcbanks_25 {
		crequest3 {Type I LastRead 0 FirstWrite -1}
		base_addr_val {Type I LastRead 0 FirstWrite -1}
		base_addr_cid {Type I LastRead 0 FirstWrite -1}
		vccache_re_bank1_pe7 {Type O LastRead -1 FirstWrite 1}
		vccache_re_bank2_pe7 {Type O LastRead -1 FirstWrite 1}}
	request_to_vcbanks_25_Pipeline_VITIS_LOOP_243_1 {
		crequest3 {Type I LastRead 0 FirstWrite -1}
		vccache_re_bank1_pe7 {Type O LastRead -1 FirstWrite 1}
		base_addr_val_3 {Type I LastRead 0 FirstWrite -1}
		base_addr_cid_1 {Type I LastRead 0 FirstWrite -1}
		vccache_re_bank2_pe7 {Type O LastRead -1 FirstWrite 1}
		temp_vcreq_8_sroa_5_0_out {Type O LastRead -1 FirstWrite 0}
		temp_vcreq_8_sroa_0_0_out {Type O LastRead -1 FirstWrite 0}
		temp_vcreq_9_0_out {Type O LastRead -1 FirstWrite 0}
		temp_vcreq_7107_0_out {Type O LastRead -1 FirstWrite 0}
		temp_vcreq_6106_0_out {Type O LastRead -1 FirstWrite 0}
		temp_vcreq_5_0_out {Type O LastRead -1 FirstWrite 0}
		temp_vcreq_4_0_out {Type O LastRead -1 FirstWrite 0}
		temp_vcreq_3_0_out {Type O LastRead -1 FirstWrite 0}
		temp_vcreq_2_0_out {Type O LastRead -1 FirstWrite 0}
		temp_vcreq_1_0_out {Type O LastRead -1 FirstWrite 0}}
	request_to_vcbanks {
		crequest4 {Type I LastRead 0 FirstWrite -1}
		base_addr_val {Type I LastRead 0 FirstWrite -1}
		base_addr_cid {Type I LastRead 0 FirstWrite -1}
		vccache_re_bank1_pe8 {Type O LastRead -1 FirstWrite 1}
		vccache_re_bank2_pe8 {Type O LastRead -1 FirstWrite 1}}
	request_to_vcbanks_Pipeline_VITIS_LOOP_243_1 {
		crequest4 {Type I LastRead 0 FirstWrite -1}
		vccache_re_bank1_pe8 {Type O LastRead -1 FirstWrite 1}
		base_addr_val_10 {Type I LastRead 0 FirstWrite -1}
		base_addr_cid_8 {Type I LastRead 0 FirstWrite -1}
		vccache_re_bank2_pe8 {Type O LastRead -1 FirstWrite 1}
		temp_vcreq_8_sroa_5_0_out {Type O LastRead -1 FirstWrite 0}
		temp_vcreq_8_sroa_0_0_out {Type O LastRead -1 FirstWrite 0}
		temp_vcreq_9_0_out {Type O LastRead -1 FirstWrite 0}
		temp_vcreq_7107_0_out {Type O LastRead -1 FirstWrite 0}
		temp_vcreq_6106_0_out {Type O LastRead -1 FirstWrite 0}
		temp_vcreq_5_0_out {Type O LastRead -1 FirstWrite 0}
		temp_vcreq_4_0_out {Type O LastRead -1 FirstWrite 0}
		temp_vcreq_3_0_out {Type O LastRead -1 FirstWrite 0}
		temp_vcreq_2_0_out {Type O LastRead -1 FirstWrite 0}
		temp_vcreq_1_0_out {Type O LastRead -1 FirstWrite 0}}
	merge_4_to_1_vcrequest_26 {
		vccache_re_bank1_pe1 {Type I LastRead 0 FirstWrite -1}
		vccache_re_bank1_pe2 {Type I LastRead 0 FirstWrite -1}
		vccache_re_bank1_pe3 {Type I LastRead 0 FirstWrite -1}
		vccache_re_bank1_pe4 {Type I LastRead 0 FirstWrite -1}
		vccache_re_bank1 {Type O LastRead -1 FirstWrite 1}}
	merge_4_to_1_vcrequest_26_Pipeline_VITIS_LOOP_214_1 {
		vccache_re_bank1_pe1 {Type I LastRead 0 FirstWrite -1}
		vccache_re_bank1_pe2 {Type I LastRead 0 FirstWrite -1}
		vccache_re_bank1_pe3 {Type I LastRead 0 FirstWrite -1}
		vccache_re_bank1_pe4 {Type I LastRead 0 FirstWrite -1}
		vccache_re_bank1 {Type O LastRead -1 FirstWrite 1}
		temp_8_sroa_9_0_out {Type O LastRead -1 FirstWrite 0}
		temp_8_sroa_0_0_out {Type O LastRead -1 FirstWrite 0}
		temp_9_0_out {Type O LastRead -1 FirstWrite 0}
		temp_7223_0_out {Type O LastRead -1 FirstWrite 0}
		temp_6222_0_out {Type O LastRead -1 FirstWrite 0}
		temp_5_0_out {Type O LastRead -1 FirstWrite 0}
		temp_4_0_out {Type O LastRead -1 FirstWrite 0}
		temp_3_0_out {Type O LastRead -1 FirstWrite 0}
		temp_2_0_out {Type O LastRead -1 FirstWrite 0}
		temp_1_0_out {Type O LastRead -1 FirstWrite 0}}
	merge_4_to_1_vcrequest_27 {
		vccache_re_bank2_pe1 {Type I LastRead 0 FirstWrite -1}
		vccache_re_bank2_pe2 {Type I LastRead 0 FirstWrite -1}
		vccache_re_bank2_pe3 {Type I LastRead 0 FirstWrite -1}
		vccache_re_bank2_pe4 {Type I LastRead 0 FirstWrite -1}
		vccache_re_bank2 {Type O LastRead -1 FirstWrite 1}}
	merge_4_to_1_vcrequest_27_Pipeline_VITIS_LOOP_214_1 {
		vccache_re_bank2_pe1 {Type I LastRead 0 FirstWrite -1}
		vccache_re_bank2_pe2 {Type I LastRead 0 FirstWrite -1}
		vccache_re_bank2_pe3 {Type I LastRead 0 FirstWrite -1}
		vccache_re_bank2_pe4 {Type I LastRead 0 FirstWrite -1}
		vccache_re_bank2 {Type O LastRead -1 FirstWrite 1}
		temp_8_sroa_9_0_out {Type O LastRead -1 FirstWrite 0}
		temp_8_sroa_0_0_out {Type O LastRead -1 FirstWrite 0}
		temp_9_0_out {Type O LastRead -1 FirstWrite 0}
		temp_7223_0_out {Type O LastRead -1 FirstWrite 0}
		temp_6222_0_out {Type O LastRead -1 FirstWrite 0}
		temp_5_0_out {Type O LastRead -1 FirstWrite 0}
		temp_4_0_out {Type O LastRead -1 FirstWrite 0}
		temp_3_0_out {Type O LastRead -1 FirstWrite 0}
		temp_2_0_out {Type O LastRead -1 FirstWrite 0}
		temp_1_0_out {Type O LastRead -1 FirstWrite 0}}
	merge_4_to_1_vcrequest_28 {
		vccache_re_bank1_pe5 {Type I LastRead 0 FirstWrite -1}
		vccache_re_bank1_pe6 {Type I LastRead 0 FirstWrite -1}
		vccache_re_bank1_pe7 {Type I LastRead 0 FirstWrite -1}
		vccache_re_bank1_pe8 {Type I LastRead 0 FirstWrite -1}
		vccache_re_bank3 {Type O LastRead -1 FirstWrite 1}}
	merge_4_to_1_vcrequest_28_Pipeline_VITIS_LOOP_214_1 {
		vccache_re_bank1_pe5 {Type I LastRead 0 FirstWrite -1}
		vccache_re_bank1_pe6 {Type I LastRead 0 FirstWrite -1}
		vccache_re_bank1_pe7 {Type I LastRead 0 FirstWrite -1}
		vccache_re_bank1_pe8 {Type I LastRead 0 FirstWrite -1}
		vccache_re_bank3 {Type O LastRead -1 FirstWrite 1}
		temp_8_sroa_9_0_out {Type O LastRead -1 FirstWrite 0}
		temp_8_sroa_0_0_out {Type O LastRead -1 FirstWrite 0}
		temp_9_0_out {Type O LastRead -1 FirstWrite 0}
		temp_7223_0_out {Type O LastRead -1 FirstWrite 0}
		temp_6222_0_out {Type O LastRead -1 FirstWrite 0}
		temp_5_0_out {Type O LastRead -1 FirstWrite 0}
		temp_4_0_out {Type O LastRead -1 FirstWrite 0}
		temp_3_0_out {Type O LastRead -1 FirstWrite 0}
		temp_2_0_out {Type O LastRead -1 FirstWrite 0}
		temp_1_0_out {Type O LastRead -1 FirstWrite 0}}
	merge_4_to_1_vcrequest {
		vccache_re_bank2_pe5 {Type I LastRead 0 FirstWrite -1}
		vccache_re_bank2_pe6 {Type I LastRead 0 FirstWrite -1}
		vccache_re_bank2_pe7 {Type I LastRead 0 FirstWrite -1}
		vccache_re_bank2_pe8 {Type I LastRead 0 FirstWrite -1}
		vccache_re_bank4 {Type O LastRead -1 FirstWrite 1}}
	merge_4_to_1_vcrequest_Pipeline_VITIS_LOOP_214_1 {
		vccache_re_bank2_pe5 {Type I LastRead 0 FirstWrite -1}
		vccache_re_bank2_pe6 {Type I LastRead 0 FirstWrite -1}
		vccache_re_bank2_pe7 {Type I LastRead 0 FirstWrite -1}
		vccache_re_bank2_pe8 {Type I LastRead 0 FirstWrite -1}
		vccache_re_bank4 {Type O LastRead -1 FirstWrite 1}
		temp_8_sroa_9_0_out {Type O LastRead -1 FirstWrite 0}
		temp_8_sroa_0_0_out {Type O LastRead -1 FirstWrite 0}
		temp_9_0_out {Type O LastRead -1 FirstWrite 0}
		temp_7223_0_out {Type O LastRead -1 FirstWrite 0}
		temp_6222_0_out {Type O LastRead -1 FirstWrite 0}
		temp_5_0_out {Type O LastRead -1 FirstWrite 0}
		temp_4_0_out {Type O LastRead -1 FirstWrite 0}
		temp_3_0_out {Type O LastRead -1 FirstWrite 0}
		temp_2_0_out {Type O LastRead -1 FirstWrite 0}
		temp_1_0_out {Type O LastRead -1 FirstWrite 0}}
	vcache_29 {
		vccache_re_bank1 {Type I LastRead 2 FirstWrite -1}
		base_addr_val {Type I LastRead 0 FirstWrite -1}
		vcache_bank1_vres {Type O LastRead -1 FirstWrite 2}
		vcache_bank1_result {Type O LastRead -1 FirstWrite 2}
		vc1acc {Type O LastRead -1 FirstWrite 2}
		vc1hit {Type O LastRead -1 FirstWrite 2}}
	vcache_29_Pipeline_VITIS_LOOP_326_1 {
		p_lru_count_1 {Type O LastRead -1 FirstWrite 0}
		p_lru_count_2 {Type O LastRead -1 FirstWrite 0}
		p_lru_count_3 {Type O LastRead -1 FirstWrite 0}
		p_lru_count_4 {Type O LastRead -1 FirstWrite 0}
		p_lru_count_5 {Type O LastRead -1 FirstWrite 0}
		p_lru_count_6 {Type O LastRead -1 FirstWrite 0}
		p_lru_count_7 {Type O LastRead -1 FirstWrite 0}
		p_lru_count_8 {Type O LastRead -1 FirstWrite 0}
		p_filled_15 {Type O LastRead -1 FirstWrite 0}
		p_filled_14 {Type O LastRead -1 FirstWrite 0}
		p_filled_13 {Type O LastRead -1 FirstWrite 0}
		p_filled_12 {Type O LastRead -1 FirstWrite 0}
		p_filled_11 {Type O LastRead -1 FirstWrite 0}
		p_filled_10 {Type O LastRead -1 FirstWrite 0}
		p_filled_9 {Type O LastRead -1 FirstWrite 0}
		p_filled_8 {Type O LastRead -1 FirstWrite 0}
		p_filled_7 {Type O LastRead -1 FirstWrite 0}
		p_filled_6 {Type O LastRead -1 FirstWrite 0}
		p_filled_5 {Type O LastRead -1 FirstWrite 0}
		p_filled_4 {Type O LastRead -1 FirstWrite 0}
		p_filled_3 {Type O LastRead -1 FirstWrite 0}
		p_filled_2 {Type O LastRead -1 FirstWrite 0}
		p_filled_1 {Type O LastRead -1 FirstWrite 0}
		p_filled {Type O LastRead -1 FirstWrite 0}
		p_tag_15 {Type O LastRead -1 FirstWrite 0}
		p_tag_14 {Type O LastRead -1 FirstWrite 0}
		p_tag_13 {Type O LastRead -1 FirstWrite 0}
		p_tag_12 {Type O LastRead -1 FirstWrite 0}
		p_tag_11 {Type O LastRead -1 FirstWrite 0}
		p_tag_10 {Type O LastRead -1 FirstWrite 0}
		p_tag_9 {Type O LastRead -1 FirstWrite 0}
		p_tag_8 {Type O LastRead -1 FirstWrite 0}
		p_tag_7 {Type O LastRead -1 FirstWrite 0}
		p_tag_6 {Type O LastRead -1 FirstWrite 0}
		p_tag_5 {Type O LastRead -1 FirstWrite 0}
		p_tag_4 {Type O LastRead -1 FirstWrite 0}
		p_tag_3 {Type O LastRead -1 FirstWrite 0}
		p_tag_2 {Type O LastRead -1 FirstWrite 0}
		p_tag_1 {Type O LastRead -1 FirstWrite 0}
		p_tag {Type O LastRead -1 FirstWrite 0}}
	vcache {
		vccache_re_bank2 {Type I LastRead 2 FirstWrite -1}
		base_addr_val {Type I LastRead 0 FirstWrite -1}
		vcache_bank2_vres {Type O LastRead -1 FirstWrite 2}
		vcache_bank2_result {Type O LastRead -1 FirstWrite 2}
		vc2acc {Type O LastRead -1 FirstWrite 2}
		vc2hit {Type O LastRead -1 FirstWrite 2}}
	vcache_Pipeline_VITIS_LOOP_326_1 {
		p_lru_count_1 {Type O LastRead -1 FirstWrite 0}
		p_lru_count_2 {Type O LastRead -1 FirstWrite 0}
		p_lru_count_3 {Type O LastRead -1 FirstWrite 0}
		p_lru_count_4 {Type O LastRead -1 FirstWrite 0}
		p_lru_count_5 {Type O LastRead -1 FirstWrite 0}
		p_lru_count_6 {Type O LastRead -1 FirstWrite 0}
		p_lru_count_7 {Type O LastRead -1 FirstWrite 0}
		p_lru_count_8 {Type O LastRead -1 FirstWrite 0}
		p_filled_15 {Type O LastRead -1 FirstWrite 0}
		p_filled_14 {Type O LastRead -1 FirstWrite 0}
		p_filled_13 {Type O LastRead -1 FirstWrite 0}
		p_filled_12 {Type O LastRead -1 FirstWrite 0}
		p_filled_11 {Type O LastRead -1 FirstWrite 0}
		p_filled_10 {Type O LastRead -1 FirstWrite 0}
		p_filled_9 {Type O LastRead -1 FirstWrite 0}
		p_filled_8 {Type O LastRead -1 FirstWrite 0}
		p_filled_7 {Type O LastRead -1 FirstWrite 0}
		p_filled_6 {Type O LastRead -1 FirstWrite 0}
		p_filled_5 {Type O LastRead -1 FirstWrite 0}
		p_filled_4 {Type O LastRead -1 FirstWrite 0}
		p_filled_3 {Type O LastRead -1 FirstWrite 0}
		p_filled_2 {Type O LastRead -1 FirstWrite 0}
		p_filled_1 {Type O LastRead -1 FirstWrite 0}
		p_filled {Type O LastRead -1 FirstWrite 0}
		p_tag_15 {Type O LastRead -1 FirstWrite 0}
		p_tag_14 {Type O LastRead -1 FirstWrite 0}
		p_tag_13 {Type O LastRead -1 FirstWrite 0}
		p_tag_12 {Type O LastRead -1 FirstWrite 0}
		p_tag_11 {Type O LastRead -1 FirstWrite 0}
		p_tag_10 {Type O LastRead -1 FirstWrite 0}
		p_tag_9 {Type O LastRead -1 FirstWrite 0}
		p_tag_8 {Type O LastRead -1 FirstWrite 0}
		p_tag_7 {Type O LastRead -1 FirstWrite 0}
		p_tag_6 {Type O LastRead -1 FirstWrite 0}
		p_tag_5 {Type O LastRead -1 FirstWrite 0}
		p_tag_4 {Type O LastRead -1 FirstWrite 0}
		p_tag_3 {Type O LastRead -1 FirstWrite 0}
		p_tag_2 {Type O LastRead -1 FirstWrite 0}
		p_tag_1 {Type O LastRead -1 FirstWrite 0}
		p_tag {Type O LastRead -1 FirstWrite 0}}
	ccache_30 {
		vccache_re_bank3 {Type I LastRead 2 FirstWrite -1}
		base_addr_cid {Type I LastRead 0 FirstWrite -1}
		vcache_bank3_cres {Type O LastRead -1 FirstWrite 2}
		vcache_bank3_result {Type O LastRead -1 FirstWrite 2}
		vc3acc {Type O LastRead -1 FirstWrite 2}
		vc3hit {Type O LastRead -1 FirstWrite 2}}
	ccache_30_Pipeline_VITIS_LOOP_617_1 {
		p_lru_count_1 {Type O LastRead -1 FirstWrite 0}
		p_lru_count_2 {Type O LastRead -1 FirstWrite 0}
		p_lru_count_3 {Type O LastRead -1 FirstWrite 0}
		p_lru_count_4 {Type O LastRead -1 FirstWrite 0}
		p_lru_count_5 {Type O LastRead -1 FirstWrite 0}
		p_lru_count_6 {Type O LastRead -1 FirstWrite 0}
		p_lru_count_7 {Type O LastRead -1 FirstWrite 0}
		p_lru_count_8 {Type O LastRead -1 FirstWrite 0}
		p_filled_15 {Type O LastRead -1 FirstWrite 0}
		p_filled_14 {Type O LastRead -1 FirstWrite 0}
		p_filled_13 {Type O LastRead -1 FirstWrite 0}
		p_filled_12 {Type O LastRead -1 FirstWrite 0}
		p_filled_11 {Type O LastRead -1 FirstWrite 0}
		p_filled_10 {Type O LastRead -1 FirstWrite 0}
		p_filled_9 {Type O LastRead -1 FirstWrite 0}
		p_filled_8 {Type O LastRead -1 FirstWrite 0}
		p_filled_7 {Type O LastRead -1 FirstWrite 0}
		p_filled_6 {Type O LastRead -1 FirstWrite 0}
		p_filled_5 {Type O LastRead -1 FirstWrite 0}
		p_filled_4 {Type O LastRead -1 FirstWrite 0}
		p_filled_3 {Type O LastRead -1 FirstWrite 0}
		p_filled_2 {Type O LastRead -1 FirstWrite 0}
		p_filled_1 {Type O LastRead -1 FirstWrite 0}
		p_filled {Type O LastRead -1 FirstWrite 0}
		p_tag_15 {Type O LastRead -1 FirstWrite 0}
		p_tag_14 {Type O LastRead -1 FirstWrite 0}
		p_tag_13 {Type O LastRead -1 FirstWrite 0}
		p_tag_12 {Type O LastRead -1 FirstWrite 0}
		p_tag_11 {Type O LastRead -1 FirstWrite 0}
		p_tag_10 {Type O LastRead -1 FirstWrite 0}
		p_tag_9 {Type O LastRead -1 FirstWrite 0}
		p_tag_8 {Type O LastRead -1 FirstWrite 0}
		p_tag_7 {Type O LastRead -1 FirstWrite 0}
		p_tag_6 {Type O LastRead -1 FirstWrite 0}
		p_tag_5 {Type O LastRead -1 FirstWrite 0}
		p_tag_4 {Type O LastRead -1 FirstWrite 0}
		p_tag_3 {Type O LastRead -1 FirstWrite 0}
		p_tag_2 {Type O LastRead -1 FirstWrite 0}
		p_tag_1 {Type O LastRead -1 FirstWrite 0}
		p_tag {Type O LastRead -1 FirstWrite 0}}
	ccache {
		vccache_re_bank4 {Type I LastRead 2 FirstWrite -1}
		base_addr_cid {Type I LastRead 0 FirstWrite -1}
		vcache_bank4_cres {Type O LastRead -1 FirstWrite 2}
		vcache_bank4_result {Type O LastRead -1 FirstWrite 2}
		vc4acc {Type O LastRead -1 FirstWrite 2}
		vc4hit {Type O LastRead -1 FirstWrite 2}}
	ccache_Pipeline_VITIS_LOOP_617_1 {
		p_lru_count_1 {Type O LastRead -1 FirstWrite 0}
		p_lru_count_2 {Type O LastRead -1 FirstWrite 0}
		p_lru_count_3 {Type O LastRead -1 FirstWrite 0}
		p_lru_count_4 {Type O LastRead -1 FirstWrite 0}
		p_lru_count_5 {Type O LastRead -1 FirstWrite 0}
		p_lru_count_6 {Type O LastRead -1 FirstWrite 0}
		p_lru_count_7 {Type O LastRead -1 FirstWrite 0}
		p_lru_count_8 {Type O LastRead -1 FirstWrite 0}
		p_filled_15 {Type O LastRead -1 FirstWrite 0}
		p_filled_14 {Type O LastRead -1 FirstWrite 0}
		p_filled_13 {Type O LastRead -1 FirstWrite 0}
		p_filled_12 {Type O LastRead -1 FirstWrite 0}
		p_filled_11 {Type O LastRead -1 FirstWrite 0}
		p_filled_10 {Type O LastRead -1 FirstWrite 0}
		p_filled_9 {Type O LastRead -1 FirstWrite 0}
		p_filled_8 {Type O LastRead -1 FirstWrite 0}
		p_filled_7 {Type O LastRead -1 FirstWrite 0}
		p_filled_6 {Type O LastRead -1 FirstWrite 0}
		p_filled_5 {Type O LastRead -1 FirstWrite 0}
		p_filled_4 {Type O LastRead -1 FirstWrite 0}
		p_filled_3 {Type O LastRead -1 FirstWrite 0}
		p_filled_2 {Type O LastRead -1 FirstWrite 0}
		p_filled_1 {Type O LastRead -1 FirstWrite 0}
		p_filled {Type O LastRead -1 FirstWrite 0}
		p_tag_15 {Type O LastRead -1 FirstWrite 0}
		p_tag_14 {Type O LastRead -1 FirstWrite 0}
		p_tag_13 {Type O LastRead -1 FirstWrite 0}
		p_tag_12 {Type O LastRead -1 FirstWrite 0}
		p_tag_11 {Type O LastRead -1 FirstWrite 0}
		p_tag_10 {Type O LastRead -1 FirstWrite 0}
		p_tag_9 {Type O LastRead -1 FirstWrite 0}
		p_tag_8 {Type O LastRead -1 FirstWrite 0}
		p_tag_7 {Type O LastRead -1 FirstWrite 0}
		p_tag_6 {Type O LastRead -1 FirstWrite 0}
		p_tag_5 {Type O LastRead -1 FirstWrite 0}
		p_tag_4 {Type O LastRead -1 FirstWrite 0}
		p_tag_3 {Type O LastRead -1 FirstWrite 0}
		p_tag_2 {Type O LastRead -1 FirstWrite 0}
		p_tag_1 {Type O LastRead -1 FirstWrite 0}
		p_tag {Type O LastRead -1 FirstWrite 0}}
	merge_2_to_1_vcresponse_31 {
		vcache_bank1_vres {Type I LastRead 0 FirstWrite -1}
		vcache_bank2_vres {Type I LastRead 0 FirstWrite -1}
		vcache_res_vfinal {Type O LastRead -1 FirstWrite 1}}
	merge_2_to_1_vcresponse_31_Pipeline_VITIS_LOOP_715_1 {
		vcache_bank1_vres {Type I LastRead 0 FirstWrite -1}
		vcache_bank2_vres {Type I LastRead 0 FirstWrite -1}
		vcache_res_vfinal {Type O LastRead -1 FirstWrite 1}
		temp_peID_out {Type O LastRead -1 FirstWrite 0}
		temp_result_out {Type O LastRead -1 FirstWrite 0}}
	merge_2_to_1_vcresponse {
		vcache_bank3_cres {Type I LastRead 0 FirstWrite -1}
		vcache_bank4_cres {Type I LastRead 0 FirstWrite -1}
		vcache_res_cfinal {Type O LastRead -1 FirstWrite 1}}
	merge_2_to_1_vcresponse_Pipeline_VITIS_LOOP_715_1 {
		vcache_bank3_cres {Type I LastRead 0 FirstWrite -1}
		vcache_bank4_cres {Type I LastRead 0 FirstWrite -1}
		vcache_res_cfinal {Type O LastRead -1 FirstWrite 1}
		temp_peID_out {Type O LastRead -1 FirstWrite 0}
		temp_result_out {Type O LastRead -1 FirstWrite 0}}
	distributer_vcresponse_32 {
		vcache_res_vfinal {Type I LastRead 0 FirstWrite -1}
		vresponse1 {Type O LastRead -1 FirstWrite 1}
		vresponse2 {Type O LastRead -1 FirstWrite 1}
		vresponse3 {Type O LastRead -1 FirstWrite 1}
		vresponse4 {Type O LastRead -1 FirstWrite 1}}
	distributer_vcresponse_32_Pipeline_VITIS_LOOP_282_1 {
		vcache_res_vfinal {Type I LastRead 0 FirstWrite -1}
		vresponse1 {Type O LastRead -1 FirstWrite 1}
		vresponse2 {Type O LastRead -1 FirstWrite 1}
		vresponse3 {Type O LastRead -1 FirstWrite 1}
		vresponse4 {Type O LastRead -1 FirstWrite 1}
		temp_peID_out {Type O LastRead -1 FirstWrite 0}
		temp_result_out {Type O LastRead -1 FirstWrite 0}}
	distributer_vcresponse {
		vcache_res_cfinal {Type I LastRead 0 FirstWrite -1}
		cresponse1 {Type O LastRead -1 FirstWrite 1}
		cresponse2 {Type O LastRead -1 FirstWrite 1}
		cresponse3 {Type O LastRead -1 FirstWrite 1}
		cresponse4 {Type O LastRead -1 FirstWrite 1}}
	distributer_vcresponse_Pipeline_VITIS_LOOP_282_1 {
		vcache_res_cfinal {Type I LastRead 0 FirstWrite -1}
		cresponse1 {Type O LastRead -1 FirstWrite 1}
		cresponse2 {Type O LastRead -1 FirstWrite 1}
		cresponse3 {Type O LastRead -1 FirstWrite 1}
		cresponse4 {Type O LastRead -1 FirstWrite 1}
		temp_peID_out {Type O LastRead -1 FirstWrite 0}
		temp_result_out {Type O LastRead -1 FirstWrite 0}}
	merge_2_to_1_vcresult_33 {
		vcache_bank1_result {Type I LastRead 0 FirstWrite -1}
		vcache_bank2_result {Type I LastRead 0 FirstWrite -1}
		vcache_bank1_vresult1 {Type O LastRead -1 FirstWrite 1}}
	merge_2_to_1_vcresult_33_Pipeline_VITIS_LOOP_533_1 {
		vcache_bank1_result {Type I LastRead 0 FirstWrite -1}
		vcache_bank2_result {Type I LastRead 0 FirstWrite -1}
		vcache_bank1_vresult1 {Type O LastRead -1 FirstWrite 1}
		temp_data_out {Type O LastRead -1 FirstWrite 0}
		temp_peID_out {Type O LastRead -1 FirstWrite 0}
		temp_type_out {Type O LastRead -1 FirstWrite 0}}
	merge_2_to_1_vcresult {
		vcache_bank3_result {Type I LastRead 0 FirstWrite -1}
		vcache_bank4_result {Type I LastRead 0 FirstWrite -1}
		vcache_bank1_cresult1 {Type O LastRead -1 FirstWrite 1}}
	merge_2_to_1_vcresult_Pipeline_VITIS_LOOP_533_1 {
		vcache_bank3_result {Type I LastRead 0 FirstWrite -1}
		vcache_bank4_result {Type I LastRead 0 FirstWrite -1}
		vcache_bank1_cresult1 {Type O LastRead -1 FirstWrite 1}
		temp_data_out {Type O LastRead -1 FirstWrite 0}
		temp_peID_out {Type O LastRead -1 FirstWrite 0}
		temp_type_out {Type O LastRead -1 FirstWrite 0}}
	distributer_vcresult_34 {
		vcache_bank1_vresult1 {Type I LastRead 0 FirstWrite -1}
		vresult1 {Type O LastRead -1 FirstWrite 1}
		vresult2 {Type O LastRead -1 FirstWrite 1}
		vresult3 {Type O LastRead -1 FirstWrite 1}
		vresult4 {Type O LastRead -1 FirstWrite 1}}
	distributer_vcresult {
		vcache_bank1_cresult1 {Type I LastRead 0 FirstWrite -1}
		cresult1 {Type O LastRead -1 FirstWrite 1}
		cresult2 {Type O LastRead -1 FirstWrite 1}
		cresult3 {Type O LastRead -1 FirstWrite 1}
		cresult4 {Type O LastRead -1 FirstWrite 1}}
	pe_35 {
		cblock1 {Type I LastRead 5 FirstWrite -1}
		vblock1 {Type I LastRead 0 FirstWrite -1}
		cblock1d {Type I LastRead 5 FirstWrite -1}
		vblock1d {Type I LastRead 0 FirstWrite -1}
		pe1_job {Type I LastRead 1 FirstWrite -1}
		p_pe1 {Type O LastRead -1 FirstWrite 1}
		B_rlen_pe1 {Type I LastRead 2 FirstWrite -1}
		mc_pe1 {Type O LastRead -1 FirstWrite 1}
		pe1_idle {Type O LastRead -1 FirstWrite 0}
		efinish1 {Type I LastRead 5 FirstWrite -1}
		workload_counter1 {Type O LastRead -1 FirstWrite 1}}
	pe_35_Pipeline_VITIS_LOOP_35_2 {
		b_rlen {Type I LastRead 0 FirstWrite -1}
		curr_job_val {Type I LastRead 0 FirstWrite -1}
		p_pe1 {Type O LastRead -1 FirstWrite 6}
		vblock1 {Type I LastRead 0 FirstWrite -1}
		cblock1 {Type I LastRead 5 FirstWrite -1}
		vblock1d {Type I LastRead 0 FirstWrite -1}
		cblock1d {Type I LastRead 5 FirstWrite -1}}
	pe_36 {
		cblock2 {Type I LastRead 5 FirstWrite -1}
		vblock2 {Type I LastRead 0 FirstWrite -1}
		cblock2d {Type I LastRead 5 FirstWrite -1}
		vblock2d {Type I LastRead 0 FirstWrite -1}
		pe2_job {Type I LastRead 1 FirstWrite -1}
		p_pe2 {Type O LastRead -1 FirstWrite 1}
		B_rlen_pe2 {Type I LastRead 2 FirstWrite -1}
		mc_pe2 {Type O LastRead -1 FirstWrite 1}
		pe2_idle {Type O LastRead -1 FirstWrite 0}
		efinish2 {Type I LastRead 5 FirstWrite -1}
		workload_counter2 {Type O LastRead -1 FirstWrite 1}}
	pe_36_Pipeline_VITIS_LOOP_35_2 {
		b_rlen {Type I LastRead 0 FirstWrite -1}
		curr_job_val {Type I LastRead 0 FirstWrite -1}
		p_pe2 {Type O LastRead -1 FirstWrite 6}
		vblock2 {Type I LastRead 0 FirstWrite -1}
		cblock2 {Type I LastRead 5 FirstWrite -1}
		vblock2d {Type I LastRead 0 FirstWrite -1}
		cblock2d {Type I LastRead 5 FirstWrite -1}}
	pe_37 {
		cblock3 {Type I LastRead 5 FirstWrite -1}
		vblock3 {Type I LastRead 0 FirstWrite -1}
		cblock3d {Type I LastRead 5 FirstWrite -1}
		vblock3d {Type I LastRead 0 FirstWrite -1}
		pe3_job {Type I LastRead 1 FirstWrite -1}
		p_pe3 {Type O LastRead -1 FirstWrite 1}
		B_rlen_pe3 {Type I LastRead 2 FirstWrite -1}
		mc_pe3 {Type O LastRead -1 FirstWrite 1}
		pe3_idle {Type O LastRead -1 FirstWrite 0}
		efinish3 {Type I LastRead 5 FirstWrite -1}
		workload_counter3 {Type O LastRead -1 FirstWrite 1}}
	pe_37_Pipeline_VITIS_LOOP_35_2 {
		b_rlen {Type I LastRead 0 FirstWrite -1}
		curr_job_val {Type I LastRead 0 FirstWrite -1}
		p_pe3 {Type O LastRead -1 FirstWrite 6}
		vblock3 {Type I LastRead 0 FirstWrite -1}
		cblock3 {Type I LastRead 5 FirstWrite -1}
		vblock3d {Type I LastRead 0 FirstWrite -1}
		cblock3d {Type I LastRead 5 FirstWrite -1}}
	pe {
		cblock4 {Type I LastRead 5 FirstWrite -1}
		vblock4 {Type I LastRead 0 FirstWrite -1}
		cblock4d {Type I LastRead 5 FirstWrite -1}
		vblock4d {Type I LastRead 0 FirstWrite -1}
		pe4_job {Type I LastRead 1 FirstWrite -1}
		p_pe4 {Type O LastRead -1 FirstWrite 1}
		B_rlen_pe4 {Type I LastRead 2 FirstWrite -1}
		mc_pe4 {Type O LastRead -1 FirstWrite 1}
		pe4_idle {Type O LastRead -1 FirstWrite 0}
		efinish4 {Type I LastRead 5 FirstWrite -1}
		workload_counter4 {Type O LastRead -1 FirstWrite 1}}
	pe_Pipeline_VITIS_LOOP_35_2 {
		b_rlen {Type I LastRead 0 FirstWrite -1}
		curr_job_val {Type I LastRead 0 FirstWrite -1}
		p_pe4 {Type O LastRead -1 FirstWrite 6}
		vblock4 {Type I LastRead 0 FirstWrite -1}
		cblock4 {Type I LastRead 5 FirstWrite -1}
		vblock4d {Type I LastRead 0 FirstWrite -1}
		cblock4d {Type I LastRead 5 FirstWrite -1}}
	convert_pblock_to_mergeitem_38 {
		p_pe1 {Type I LastRead 1 FirstWrite -1}
		m_pe1 {Type O LastRead -1 FirstWrite 1}}
	convert_pblock_to_mergeitem_38_Pipeline_VITIS_LOOP_910_2 {
		zext_ln910 {Type I LastRead 0 FirstWrite -1}
		add_ln910 {Type I LastRead 0 FirstWrite -1}
		temp_cid {Type I LastRead 0 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}
		m_pe1 {Type O LastRead -1 FirstWrite 1}}
	convert_pblock_to_mergeitem_39 {
		p_pe2 {Type I LastRead 1 FirstWrite -1}
		m_pe2 {Type O LastRead -1 FirstWrite 1}}
	convert_pblock_to_mergeitem_39_Pipeline_VITIS_LOOP_910_2 {
		zext_ln910 {Type I LastRead 0 FirstWrite -1}
		add_ln910 {Type I LastRead 0 FirstWrite -1}
		temp_cid {Type I LastRead 0 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}
		m_pe2 {Type O LastRead -1 FirstWrite 1}}
	convert_pblock_to_mergeitem_40 {
		p_pe3 {Type I LastRead 1 FirstWrite -1}
		m_pe3 {Type O LastRead -1 FirstWrite 1}}
	convert_pblock_to_mergeitem_40_Pipeline_VITIS_LOOP_910_2 {
		zext_ln910 {Type I LastRead 0 FirstWrite -1}
		add_ln910 {Type I LastRead 0 FirstWrite -1}
		temp_cid {Type I LastRead 0 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}
		m_pe3 {Type O LastRead -1 FirstWrite 1}}
	convert_pblock_to_mergeitem {
		p_pe4 {Type I LastRead 1 FirstWrite -1}
		m_pe4 {Type O LastRead -1 FirstWrite 1}}
	convert_pblock_to_mergeitem_Pipeline_VITIS_LOOP_910_2 {
		zext_ln910 {Type I LastRead 0 FirstWrite -1}
		add_ln910 {Type I LastRead 0 FirstWrite -1}
		temp_cid {Type I LastRead 0 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}
		m_pe4 {Type O LastRead -1 FirstWrite 1}}
	merger_41 {
		mc_pe1 {Type I LastRead 0 FirstWrite -1}
		m_pe1 {Type I LastRead 1 FirstWrite -1}
		result_pe1 {Type O LastRead -1 FirstWrite 1}
		efinish1 {Type O LastRead -1 FirstWrite 4}}
	merge_controller_45 {
		mc_pe1 {Type I LastRead 0 FirstWrite -1}
		mresult {Type O LastRead -1 FirstWrite 1}}
	merge_two_sub_46 {
		mresult {Type I LastRead 2 FirstWrite -1}
		result_pe1 {Type O LastRead -1 FirstWrite 1}
		m_pe1 {Type I LastRead 1 FirstWrite -1}
		efinish1 {Type O LastRead -1 FirstWrite 4}}
	flush_three {
		ping {Type I LastRead 1 FirstWrite -1}
		ping1 {Type I LastRead 1 FirstWrite -1}
		pong {Type I LastRead 1 FirstWrite -1}
		na {Type I LastRead 0 FirstWrite -1}
		nb {Type I LastRead 0 FirstWrite -1}
		nc {Type I LastRead 0 FirstWrite -1}
		result_pe4 {Type O LastRead -1 FirstWrite 16}}
	p_merge_temp {
		m_pe4 {Type I LastRead 1 FirstWrite -1}
		ping {Type I LastRead 1 FirstWrite -1}
		len1 {Type I LastRead 0 FirstWrite -1}
		len2_t_read {Type I LastRead 0 FirstWrite -1}
		ping1 {Type O LastRead -1 FirstWrite 9}}
	merger_42 {
		mc_pe2 {Type I LastRead 0 FirstWrite -1}
		m_pe2 {Type I LastRead 1 FirstWrite -1}
		result_pe2 {Type O LastRead -1 FirstWrite 1}
		efinish2 {Type O LastRead -1 FirstWrite 4}}
	merge_controller_47 {
		mc_pe2 {Type I LastRead 0 FirstWrite -1}
		mresult {Type O LastRead -1 FirstWrite 1}}
	merge_two_sub_48 {
		mresult {Type I LastRead 2 FirstWrite -1}
		result_pe2 {Type O LastRead -1 FirstWrite 1}
		m_pe2 {Type I LastRead 1 FirstWrite -1}
		efinish2 {Type O LastRead -1 FirstWrite 4}}
	flush_three {
		ping {Type I LastRead 1 FirstWrite -1}
		ping1 {Type I LastRead 1 FirstWrite -1}
		pong {Type I LastRead 1 FirstWrite -1}
		na {Type I LastRead 0 FirstWrite -1}
		nb {Type I LastRead 0 FirstWrite -1}
		nc {Type I LastRead 0 FirstWrite -1}
		result_pe4 {Type O LastRead -1 FirstWrite 16}}
	p_merge_temp {
		m_pe4 {Type I LastRead 1 FirstWrite -1}
		ping {Type I LastRead 1 FirstWrite -1}
		len1 {Type I LastRead 0 FirstWrite -1}
		len2_t_read {Type I LastRead 0 FirstWrite -1}
		ping1 {Type O LastRead -1 FirstWrite 9}}
	merger_43 {
		mc_pe3 {Type I LastRead 0 FirstWrite -1}
		m_pe3 {Type I LastRead 1 FirstWrite -1}
		result_pe3 {Type O LastRead -1 FirstWrite 1}
		efinish3 {Type O LastRead -1 FirstWrite 4}}
	merge_controller_49 {
		mc_pe3 {Type I LastRead 0 FirstWrite -1}
		mresult {Type O LastRead -1 FirstWrite 1}}
	merge_two_sub_50 {
		mresult {Type I LastRead 2 FirstWrite -1}
		result_pe3 {Type O LastRead -1 FirstWrite 1}
		m_pe3 {Type I LastRead 1 FirstWrite -1}
		efinish3 {Type O LastRead -1 FirstWrite 4}}
	flush_three {
		ping {Type I LastRead 1 FirstWrite -1}
		ping1 {Type I LastRead 1 FirstWrite -1}
		pong {Type I LastRead 1 FirstWrite -1}
		na {Type I LastRead 0 FirstWrite -1}
		nb {Type I LastRead 0 FirstWrite -1}
		nc {Type I LastRead 0 FirstWrite -1}
		result_pe4 {Type O LastRead -1 FirstWrite 16}}
	p_merge_temp {
		m_pe4 {Type I LastRead 1 FirstWrite -1}
		ping {Type I LastRead 1 FirstWrite -1}
		len1 {Type I LastRead 0 FirstWrite -1}
		len2_t_read {Type I LastRead 0 FirstWrite -1}
		ping1 {Type O LastRead -1 FirstWrite 9}}
	merger {
		mc_pe4 {Type I LastRead 0 FirstWrite -1}
		m_pe4 {Type I LastRead 1 FirstWrite -1}
		result_pe4 {Type O LastRead -1 FirstWrite 1}
		efinish4 {Type O LastRead -1 FirstWrite 4}}
	merge_controller {
		mc_pe4 {Type I LastRead 0 FirstWrite -1}
		mresult {Type O LastRead -1 FirstWrite 1}}
	merge_two_sub {
		mresult {Type I LastRead 2 FirstWrite -1}
		result_pe4 {Type O LastRead -1 FirstWrite 1}
		m_pe4 {Type I LastRead 1 FirstWrite -1}
		efinish4 {Type O LastRead -1 FirstWrite 4}}
	flush_three {
		ping {Type I LastRead 1 FirstWrite -1}
		ping1 {Type I LastRead 1 FirstWrite -1}
		pong {Type I LastRead 1 FirstWrite -1}
		na {Type I LastRead 0 FirstWrite -1}
		nb {Type I LastRead 0 FirstWrite -1}
		nc {Type I LastRead 0 FirstWrite -1}
		result_pe4 {Type O LastRead -1 FirstWrite 16}}
	p_merge_temp {
		m_pe4 {Type I LastRead 1 FirstWrite -1}
		ping {Type I LastRead 1 FirstWrite -1}
		len1 {Type I LastRead 0 FirstWrite -1}
		len2_t_read {Type I LastRead 0 FirstWrite -1}
		ping1 {Type O LastRead -1 FirstWrite 9}}
	sub_final_merger_44 {
		result_pe1 {Type I LastRead 1 FirstWrite -1}
		result_pe2 {Type I LastRead 1 FirstWrite -1}
		final_merger_1 {Type O LastRead -1 FirstWrite 4}}
	sub_final_merger_44_Pipeline_VITIS_LOOP_846_2 {
		empty_176 {Type I LastRead 0 FirstWrite -1}
		temp1_cid {Type I LastRead 0 FirstWrite -1}
		empty_177 {Type I LastRead 0 FirstWrite -1}
		temp1_val {Type I LastRead 0 FirstWrite -1}
		empty_178 {Type I LastRead 0 FirstWrite -1}
		temp_cid {Type I LastRead 0 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}
		temp_val {Type I LastRead 0 FirstWrite -1}
		result_pe2 {Type I LastRead 1 FirstWrite -1}
		result_pe1 {Type I LastRead 1 FirstWrite -1}
		final_merger_1 {Type O LastRead -1 FirstWrite 10}
		temp1_global_end_1_out {Type O LastRead -1 FirstWrite 9}
		temp_global_end_3_out {Type O LastRead -1 FirstWrite 9}}
	sub_final_merger {
		result_pe3 {Type I LastRead 1 FirstWrite -1}
		result_pe4 {Type I LastRead 1 FirstWrite -1}
		final_merger_2 {Type O LastRead -1 FirstWrite 4}}
	sub_final_merger_Pipeline_VITIS_LOOP_846_2 {
		empty_173 {Type I LastRead 0 FirstWrite -1}
		temp1_cid {Type I LastRead 0 FirstWrite -1}
		empty_174 {Type I LastRead 0 FirstWrite -1}
		temp1_val {Type I LastRead 0 FirstWrite -1}
		empty_175 {Type I LastRead 0 FirstWrite -1}
		temp_cid {Type I LastRead 0 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}
		temp_val {Type I LastRead 0 FirstWrite -1}
		result_pe4 {Type I LastRead 1 FirstWrite -1}
		result_pe3 {Type I LastRead 1 FirstWrite -1}
		final_merger_2 {Type O LastRead -1 FirstWrite 10}
		temp1_global_end_4_out {Type O LastRead -1 FirstWrite 9}
		temp_global_end_5_out {Type O LastRead -1 FirstWrite 9}}
	final_merger {
		final_merger_1 {Type I LastRead 1 FirstWrite -1}
		final_merger_2 {Type I LastRead 1 FirstWrite -1}
		final_merger_3 {Type O LastRead -1 FirstWrite 5}
		final_len_1 {Type O LastRead -1 FirstWrite 4}
		final_len_2 {Type O LastRead -1 FirstWrite 4}}
	final_merger_Pipeline_VITIS_LOOP_773_2 {
		empty_228 {Type I LastRead 0 FirstWrite -1}
		temp1_cid {Type I LastRead 0 FirstWrite -1}
		empty_229 {Type I LastRead 0 FirstWrite -1}
		temp1_val {Type I LastRead 0 FirstWrite -1}
		empty_230 {Type I LastRead 0 FirstWrite -1}
		temp_cid {Type I LastRead 0 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}
		temp_val {Type I LastRead 0 FirstWrite -1}
		final_merger_2 {Type I LastRead 1 FirstWrite -1}
		final_merger_1 {Type I LastRead 1 FirstWrite -1}
		final_merger_3 {Type O LastRead -1 FirstWrite 10}
		temp1_global_end_6_out {Type O LastRead -1 FirstWrite 9}
		temp_global_end_7_out {Type O LastRead -1 FirstWrite 9}
		counter_out {Type O LastRead -1 FirstWrite 9}}
	write_C_sub {
		final_merger_3 {Type I LastRead 12 FirstWrite -1}
		crcsr {Type I LastRead 11 FirstWrite -1}
		C_rcsr {Type I LastRead 0 FirstWrite -1}
		ccid {Type I LastRead 32 FirstWrite -1}
		C_cid {Type I LastRead 0 FirstWrite -1}
		cval {Type IO LastRead 52 FirstWrite 51}
		C_val {Type I LastRead 0 FirstWrite -1}
		fnum {Type O LastRead -1 FirstWrite 10}
		final_len_1 {Type I LastRead 10 FirstWrite -1}
		final_len_2 {Type I LastRead 10 FirstWrite -1}
		crum {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	arcsr { m_axi {  { m_axi_arcsr_AWVALID VALID 1 1 }  { m_axi_arcsr_AWREADY READY 0 1 }  { m_axi_arcsr_AWADDR ADDR 1 64 }  { m_axi_arcsr_AWID ID 1 1 }  { m_axi_arcsr_AWLEN SIZE 1 8 }  { m_axi_arcsr_AWSIZE BURST 1 3 }  { m_axi_arcsr_AWBURST LOCK 1 2 }  { m_axi_arcsr_AWLOCK CACHE 1 2 }  { m_axi_arcsr_AWCACHE PROT 1 4 }  { m_axi_arcsr_AWPROT QOS 1 3 }  { m_axi_arcsr_AWQOS REGION 1 4 }  { m_axi_arcsr_AWREGION USER 1 4 }  { m_axi_arcsr_AWUSER DATA 1 1 }  { m_axi_arcsr_WVALID VALID 1 1 }  { m_axi_arcsr_WREADY READY 0 1 }  { m_axi_arcsr_WDATA FIFONUM 1 32 }  { m_axi_arcsr_WSTRB STRB 1 4 }  { m_axi_arcsr_WLAST LAST 1 1 }  { m_axi_arcsr_WID ID 1 1 }  { m_axi_arcsr_WUSER DATA 1 1 }  { m_axi_arcsr_ARVALID VALID 1 1 }  { m_axi_arcsr_ARREADY READY 0 1 }  { m_axi_arcsr_ARADDR ADDR 1 64 }  { m_axi_arcsr_ARID ID 1 1 }  { m_axi_arcsr_ARLEN SIZE 1 8 }  { m_axi_arcsr_ARSIZE BURST 1 3 }  { m_axi_arcsr_ARBURST LOCK 1 2 }  { m_axi_arcsr_ARLOCK CACHE 1 2 }  { m_axi_arcsr_ARCACHE PROT 1 4 }  { m_axi_arcsr_ARPROT QOS 1 3 }  { m_axi_arcsr_ARQOS REGION 1 4 }  { m_axi_arcsr_ARREGION USER 1 4 }  { m_axi_arcsr_ARUSER DATA 1 1 }  { m_axi_arcsr_RVALID VALID 0 1 }  { m_axi_arcsr_RREADY READY 1 1 }  { m_axi_arcsr_RDATA FIFONUM 0 32 }  { m_axi_arcsr_RLAST LAST 0 1 }  { m_axi_arcsr_RID ID 0 1 }  { m_axi_arcsr_RUSER DATA 0 1 }  { m_axi_arcsr_RRESP RESP 0 2 }  { m_axi_arcsr_BVALID VALID 0 1 }  { m_axi_arcsr_BREADY READY 1 1 }  { m_axi_arcsr_BRESP RESP 0 2 }  { m_axi_arcsr_BID ID 0 1 }  { m_axi_arcsr_BUSER DATA 0 1 } } }
	acid { m_axi {  { m_axi_acid_AWVALID VALID 1 1 }  { m_axi_acid_AWREADY READY 0 1 }  { m_axi_acid_AWADDR ADDR 1 64 }  { m_axi_acid_AWID ID 1 1 }  { m_axi_acid_AWLEN SIZE 1 8 }  { m_axi_acid_AWSIZE BURST 1 3 }  { m_axi_acid_AWBURST LOCK 1 2 }  { m_axi_acid_AWLOCK CACHE 1 2 }  { m_axi_acid_AWCACHE PROT 1 4 }  { m_axi_acid_AWPROT QOS 1 3 }  { m_axi_acid_AWQOS REGION 1 4 }  { m_axi_acid_AWREGION USER 1 4 }  { m_axi_acid_AWUSER DATA 1 1 }  { m_axi_acid_WVALID VALID 1 1 }  { m_axi_acid_WREADY READY 0 1 }  { m_axi_acid_WDATA FIFONUM 1 32 }  { m_axi_acid_WSTRB STRB 1 4 }  { m_axi_acid_WLAST LAST 1 1 }  { m_axi_acid_WID ID 1 1 }  { m_axi_acid_WUSER DATA 1 1 }  { m_axi_acid_ARVALID VALID 1 1 }  { m_axi_acid_ARREADY READY 0 1 }  { m_axi_acid_ARADDR ADDR 1 64 }  { m_axi_acid_ARID ID 1 1 }  { m_axi_acid_ARLEN SIZE 1 8 }  { m_axi_acid_ARSIZE BURST 1 3 }  { m_axi_acid_ARBURST LOCK 1 2 }  { m_axi_acid_ARLOCK CACHE 1 2 }  { m_axi_acid_ARCACHE PROT 1 4 }  { m_axi_acid_ARPROT QOS 1 3 }  { m_axi_acid_ARQOS REGION 1 4 }  { m_axi_acid_ARREGION USER 1 4 }  { m_axi_acid_ARUSER DATA 1 1 }  { m_axi_acid_RVALID VALID 0 1 }  { m_axi_acid_RREADY READY 1 1 }  { m_axi_acid_RDATA FIFONUM 0 32 }  { m_axi_acid_RLAST LAST 0 1 }  { m_axi_acid_RID ID 0 1 }  { m_axi_acid_RUSER DATA 0 1 }  { m_axi_acid_RRESP RESP 0 2 }  { m_axi_acid_BVALID VALID 0 1 }  { m_axi_acid_BREADY READY 1 1 }  { m_axi_acid_BRESP RESP 0 2 }  { m_axi_acid_BID ID 0 1 }  { m_axi_acid_BUSER DATA 0 1 } } }
	aval { m_axi {  { m_axi_aval_AWVALID VALID 1 1 }  { m_axi_aval_AWREADY READY 0 1 }  { m_axi_aval_AWADDR ADDR 1 64 }  { m_axi_aval_AWID ID 1 1 }  { m_axi_aval_AWLEN SIZE 1 8 }  { m_axi_aval_AWSIZE BURST 1 3 }  { m_axi_aval_AWBURST LOCK 1 2 }  { m_axi_aval_AWLOCK CACHE 1 2 }  { m_axi_aval_AWCACHE PROT 1 4 }  { m_axi_aval_AWPROT QOS 1 3 }  { m_axi_aval_AWQOS REGION 1 4 }  { m_axi_aval_AWREGION USER 1 4 }  { m_axi_aval_AWUSER DATA 1 1 }  { m_axi_aval_WVALID VALID 1 1 }  { m_axi_aval_WREADY READY 0 1 }  { m_axi_aval_WDATA FIFONUM 1 32 }  { m_axi_aval_WSTRB STRB 1 4 }  { m_axi_aval_WLAST LAST 1 1 }  { m_axi_aval_WID ID 1 1 }  { m_axi_aval_WUSER DATA 1 1 }  { m_axi_aval_ARVALID VALID 1 1 }  { m_axi_aval_ARREADY READY 0 1 }  { m_axi_aval_ARADDR ADDR 1 64 }  { m_axi_aval_ARID ID 1 1 }  { m_axi_aval_ARLEN SIZE 1 8 }  { m_axi_aval_ARSIZE BURST 1 3 }  { m_axi_aval_ARBURST LOCK 1 2 }  { m_axi_aval_ARLOCK CACHE 1 2 }  { m_axi_aval_ARCACHE PROT 1 4 }  { m_axi_aval_ARPROT QOS 1 3 }  { m_axi_aval_ARQOS REGION 1 4 }  { m_axi_aval_ARREGION USER 1 4 }  { m_axi_aval_ARUSER DATA 1 1 }  { m_axi_aval_RVALID VALID 0 1 }  { m_axi_aval_RREADY READY 1 1 }  { m_axi_aval_RDATA FIFONUM 0 32 }  { m_axi_aval_RLAST LAST 0 1 }  { m_axi_aval_RID ID 0 1 }  { m_axi_aval_RUSER DATA 0 1 }  { m_axi_aval_RRESP RESP 0 2 }  { m_axi_aval_BVALID VALID 0 1 }  { m_axi_aval_BREADY READY 1 1 }  { m_axi_aval_BRESP RESP 0 2 }  { m_axi_aval_BID ID 0 1 }  { m_axi_aval_BUSER DATA 0 1 } } }
	brcsr1 { m_axi {  { m_axi_brcsr1_AWVALID VALID 1 1 }  { m_axi_brcsr1_AWREADY READY 0 1 }  { m_axi_brcsr1_AWADDR ADDR 1 64 }  { m_axi_brcsr1_AWID ID 1 1 }  { m_axi_brcsr1_AWLEN SIZE 1 8 }  { m_axi_brcsr1_AWSIZE BURST 1 3 }  { m_axi_brcsr1_AWBURST LOCK 1 2 }  { m_axi_brcsr1_AWLOCK CACHE 1 2 }  { m_axi_brcsr1_AWCACHE PROT 1 4 }  { m_axi_brcsr1_AWPROT QOS 1 3 }  { m_axi_brcsr1_AWQOS REGION 1 4 }  { m_axi_brcsr1_AWREGION USER 1 4 }  { m_axi_brcsr1_AWUSER DATA 1 1 }  { m_axi_brcsr1_WVALID VALID 1 1 }  { m_axi_brcsr1_WREADY READY 0 1 }  { m_axi_brcsr1_WDATA FIFONUM 1 128 }  { m_axi_brcsr1_WSTRB STRB 1 16 }  { m_axi_brcsr1_WLAST LAST 1 1 }  { m_axi_brcsr1_WID ID 1 1 }  { m_axi_brcsr1_WUSER DATA 1 1 }  { m_axi_brcsr1_ARVALID VALID 1 1 }  { m_axi_brcsr1_ARREADY READY 0 1 }  { m_axi_brcsr1_ARADDR ADDR 1 64 }  { m_axi_brcsr1_ARID ID 1 1 }  { m_axi_brcsr1_ARLEN SIZE 1 8 }  { m_axi_brcsr1_ARSIZE BURST 1 3 }  { m_axi_brcsr1_ARBURST LOCK 1 2 }  { m_axi_brcsr1_ARLOCK CACHE 1 2 }  { m_axi_brcsr1_ARCACHE PROT 1 4 }  { m_axi_brcsr1_ARPROT QOS 1 3 }  { m_axi_brcsr1_ARQOS REGION 1 4 }  { m_axi_brcsr1_ARREGION USER 1 4 }  { m_axi_brcsr1_ARUSER DATA 1 1 }  { m_axi_brcsr1_RVALID VALID 0 1 }  { m_axi_brcsr1_RREADY READY 1 1 }  { m_axi_brcsr1_RDATA FIFONUM 0 128 }  { m_axi_brcsr1_RLAST LAST 0 1 }  { m_axi_brcsr1_RID ID 0 1 }  { m_axi_brcsr1_RUSER DATA 0 1 }  { m_axi_brcsr1_RRESP RESP 0 2 }  { m_axi_brcsr1_BVALID VALID 0 1 }  { m_axi_brcsr1_BREADY READY 1 1 }  { m_axi_brcsr1_BRESP RESP 0 2 }  { m_axi_brcsr1_BID ID 0 1 }  { m_axi_brcsr1_BUSER DATA 0 1 } } }
	brcsr2 { m_axi {  { m_axi_brcsr2_AWVALID VALID 1 1 }  { m_axi_brcsr2_AWREADY READY 0 1 }  { m_axi_brcsr2_AWADDR ADDR 1 64 }  { m_axi_brcsr2_AWID ID 1 1 }  { m_axi_brcsr2_AWLEN SIZE 1 8 }  { m_axi_brcsr2_AWSIZE BURST 1 3 }  { m_axi_brcsr2_AWBURST LOCK 1 2 }  { m_axi_brcsr2_AWLOCK CACHE 1 2 }  { m_axi_brcsr2_AWCACHE PROT 1 4 }  { m_axi_brcsr2_AWPROT QOS 1 3 }  { m_axi_brcsr2_AWQOS REGION 1 4 }  { m_axi_brcsr2_AWREGION USER 1 4 }  { m_axi_brcsr2_AWUSER DATA 1 1 }  { m_axi_brcsr2_WVALID VALID 1 1 }  { m_axi_brcsr2_WREADY READY 0 1 }  { m_axi_brcsr2_WDATA FIFONUM 1 128 }  { m_axi_brcsr2_WSTRB STRB 1 16 }  { m_axi_brcsr2_WLAST LAST 1 1 }  { m_axi_brcsr2_WID ID 1 1 }  { m_axi_brcsr2_WUSER DATA 1 1 }  { m_axi_brcsr2_ARVALID VALID 1 1 }  { m_axi_brcsr2_ARREADY READY 0 1 }  { m_axi_brcsr2_ARADDR ADDR 1 64 }  { m_axi_brcsr2_ARID ID 1 1 }  { m_axi_brcsr2_ARLEN SIZE 1 8 }  { m_axi_brcsr2_ARSIZE BURST 1 3 }  { m_axi_brcsr2_ARBURST LOCK 1 2 }  { m_axi_brcsr2_ARLOCK CACHE 1 2 }  { m_axi_brcsr2_ARCACHE PROT 1 4 }  { m_axi_brcsr2_ARPROT QOS 1 3 }  { m_axi_brcsr2_ARQOS REGION 1 4 }  { m_axi_brcsr2_ARREGION USER 1 4 }  { m_axi_brcsr2_ARUSER DATA 1 1 }  { m_axi_brcsr2_RVALID VALID 0 1 }  { m_axi_brcsr2_RREADY READY 1 1 }  { m_axi_brcsr2_RDATA FIFONUM 0 128 }  { m_axi_brcsr2_RLAST LAST 0 1 }  { m_axi_brcsr2_RID ID 0 1 }  { m_axi_brcsr2_RUSER DATA 0 1 }  { m_axi_brcsr2_RRESP RESP 0 2 }  { m_axi_brcsr2_BVALID VALID 0 1 }  { m_axi_brcsr2_BREADY READY 1 1 }  { m_axi_brcsr2_BRESP RESP 0 2 }  { m_axi_brcsr2_BID ID 0 1 }  { m_axi_brcsr2_BUSER DATA 0 1 } } }
	brcsr3 { m_axi {  { m_axi_brcsr3_AWVALID VALID 1 1 }  { m_axi_brcsr3_AWREADY READY 0 1 }  { m_axi_brcsr3_AWADDR ADDR 1 64 }  { m_axi_brcsr3_AWID ID 1 1 }  { m_axi_brcsr3_AWLEN SIZE 1 8 }  { m_axi_brcsr3_AWSIZE BURST 1 3 }  { m_axi_brcsr3_AWBURST LOCK 1 2 }  { m_axi_brcsr3_AWLOCK CACHE 1 2 }  { m_axi_brcsr3_AWCACHE PROT 1 4 }  { m_axi_brcsr3_AWPROT QOS 1 3 }  { m_axi_brcsr3_AWQOS REGION 1 4 }  { m_axi_brcsr3_AWREGION USER 1 4 }  { m_axi_brcsr3_AWUSER DATA 1 1 }  { m_axi_brcsr3_WVALID VALID 1 1 }  { m_axi_brcsr3_WREADY READY 0 1 }  { m_axi_brcsr3_WDATA FIFONUM 1 128 }  { m_axi_brcsr3_WSTRB STRB 1 16 }  { m_axi_brcsr3_WLAST LAST 1 1 }  { m_axi_brcsr3_WID ID 1 1 }  { m_axi_brcsr3_WUSER DATA 1 1 }  { m_axi_brcsr3_ARVALID VALID 1 1 }  { m_axi_brcsr3_ARREADY READY 0 1 }  { m_axi_brcsr3_ARADDR ADDR 1 64 }  { m_axi_brcsr3_ARID ID 1 1 }  { m_axi_brcsr3_ARLEN SIZE 1 8 }  { m_axi_brcsr3_ARSIZE BURST 1 3 }  { m_axi_brcsr3_ARBURST LOCK 1 2 }  { m_axi_brcsr3_ARLOCK CACHE 1 2 }  { m_axi_brcsr3_ARCACHE PROT 1 4 }  { m_axi_brcsr3_ARPROT QOS 1 3 }  { m_axi_brcsr3_ARQOS REGION 1 4 }  { m_axi_brcsr3_ARREGION USER 1 4 }  { m_axi_brcsr3_ARUSER DATA 1 1 }  { m_axi_brcsr3_RVALID VALID 0 1 }  { m_axi_brcsr3_RREADY READY 1 1 }  { m_axi_brcsr3_RDATA FIFONUM 0 128 }  { m_axi_brcsr3_RLAST LAST 0 1 }  { m_axi_brcsr3_RID ID 0 1 }  { m_axi_brcsr3_RUSER DATA 0 1 }  { m_axi_brcsr3_RRESP RESP 0 2 }  { m_axi_brcsr3_BVALID VALID 0 1 }  { m_axi_brcsr3_BREADY READY 1 1 }  { m_axi_brcsr3_BRESP RESP 0 2 }  { m_axi_brcsr3_BID ID 0 1 }  { m_axi_brcsr3_BUSER DATA 0 1 } } }
	brcsr4 { m_axi {  { m_axi_brcsr4_AWVALID VALID 1 1 }  { m_axi_brcsr4_AWREADY READY 0 1 }  { m_axi_brcsr4_AWADDR ADDR 1 64 }  { m_axi_brcsr4_AWID ID 1 1 }  { m_axi_brcsr4_AWLEN SIZE 1 8 }  { m_axi_brcsr4_AWSIZE BURST 1 3 }  { m_axi_brcsr4_AWBURST LOCK 1 2 }  { m_axi_brcsr4_AWLOCK CACHE 1 2 }  { m_axi_brcsr4_AWCACHE PROT 1 4 }  { m_axi_brcsr4_AWPROT QOS 1 3 }  { m_axi_brcsr4_AWQOS REGION 1 4 }  { m_axi_brcsr4_AWREGION USER 1 4 }  { m_axi_brcsr4_AWUSER DATA 1 1 }  { m_axi_brcsr4_WVALID VALID 1 1 }  { m_axi_brcsr4_WREADY READY 0 1 }  { m_axi_brcsr4_WDATA FIFONUM 1 128 }  { m_axi_brcsr4_WSTRB STRB 1 16 }  { m_axi_brcsr4_WLAST LAST 1 1 }  { m_axi_brcsr4_WID ID 1 1 }  { m_axi_brcsr4_WUSER DATA 1 1 }  { m_axi_brcsr4_ARVALID VALID 1 1 }  { m_axi_brcsr4_ARREADY READY 0 1 }  { m_axi_brcsr4_ARADDR ADDR 1 64 }  { m_axi_brcsr4_ARID ID 1 1 }  { m_axi_brcsr4_ARLEN SIZE 1 8 }  { m_axi_brcsr4_ARSIZE BURST 1 3 }  { m_axi_brcsr4_ARBURST LOCK 1 2 }  { m_axi_brcsr4_ARLOCK CACHE 1 2 }  { m_axi_brcsr4_ARCACHE PROT 1 4 }  { m_axi_brcsr4_ARPROT QOS 1 3 }  { m_axi_brcsr4_ARQOS REGION 1 4 }  { m_axi_brcsr4_ARREGION USER 1 4 }  { m_axi_brcsr4_ARUSER DATA 1 1 }  { m_axi_brcsr4_RVALID VALID 0 1 }  { m_axi_brcsr4_RREADY READY 1 1 }  { m_axi_brcsr4_RDATA FIFONUM 0 128 }  { m_axi_brcsr4_RLAST LAST 0 1 }  { m_axi_brcsr4_RID ID 0 1 }  { m_axi_brcsr4_RUSER DATA 0 1 }  { m_axi_brcsr4_RRESP RESP 0 2 }  { m_axi_brcsr4_BVALID VALID 0 1 }  { m_axi_brcsr4_BREADY READY 1 1 }  { m_axi_brcsr4_BRESP RESP 0 2 }  { m_axi_brcsr4_BID ID 0 1 }  { m_axi_brcsr4_BUSER DATA 0 1 } } }
	bval1 { m_axi {  { m_axi_bval1_AWVALID VALID 1 1 }  { m_axi_bval1_AWREADY READY 0 1 }  { m_axi_bval1_AWADDR ADDR 1 64 }  { m_axi_bval1_AWID ID 1 1 }  { m_axi_bval1_AWLEN SIZE 1 8 }  { m_axi_bval1_AWSIZE BURST 1 3 }  { m_axi_bval1_AWBURST LOCK 1 2 }  { m_axi_bval1_AWLOCK CACHE 1 2 }  { m_axi_bval1_AWCACHE PROT 1 4 }  { m_axi_bval1_AWPROT QOS 1 3 }  { m_axi_bval1_AWQOS REGION 1 4 }  { m_axi_bval1_AWREGION USER 1 4 }  { m_axi_bval1_AWUSER DATA 1 1 }  { m_axi_bval1_WVALID VALID 1 1 }  { m_axi_bval1_WREADY READY 0 1 }  { m_axi_bval1_WDATA FIFONUM 1 128 }  { m_axi_bval1_WSTRB STRB 1 16 }  { m_axi_bval1_WLAST LAST 1 1 }  { m_axi_bval1_WID ID 1 1 }  { m_axi_bval1_WUSER DATA 1 1 }  { m_axi_bval1_ARVALID VALID 1 1 }  { m_axi_bval1_ARREADY READY 0 1 }  { m_axi_bval1_ARADDR ADDR 1 64 }  { m_axi_bval1_ARID ID 1 1 }  { m_axi_bval1_ARLEN SIZE 1 8 }  { m_axi_bval1_ARSIZE BURST 1 3 }  { m_axi_bval1_ARBURST LOCK 1 2 }  { m_axi_bval1_ARLOCK CACHE 1 2 }  { m_axi_bval1_ARCACHE PROT 1 4 }  { m_axi_bval1_ARPROT QOS 1 3 }  { m_axi_bval1_ARQOS REGION 1 4 }  { m_axi_bval1_ARREGION USER 1 4 }  { m_axi_bval1_ARUSER DATA 1 1 }  { m_axi_bval1_RVALID VALID 0 1 }  { m_axi_bval1_RREADY READY 1 1 }  { m_axi_bval1_RDATA FIFONUM 0 128 }  { m_axi_bval1_RLAST LAST 0 1 }  { m_axi_bval1_RID ID 0 1 }  { m_axi_bval1_RUSER DATA 0 1 }  { m_axi_bval1_RRESP RESP 0 2 }  { m_axi_bval1_BVALID VALID 0 1 }  { m_axi_bval1_BREADY READY 1 1 }  { m_axi_bval1_BRESP RESP 0 2 }  { m_axi_bval1_BID ID 0 1 }  { m_axi_bval1_BUSER DATA 0 1 } } }
	bcid1 { m_axi {  { m_axi_bcid1_AWVALID VALID 1 1 }  { m_axi_bcid1_AWREADY READY 0 1 }  { m_axi_bcid1_AWADDR ADDR 1 64 }  { m_axi_bcid1_AWID ID 1 1 }  { m_axi_bcid1_AWLEN SIZE 1 8 }  { m_axi_bcid1_AWSIZE BURST 1 3 }  { m_axi_bcid1_AWBURST LOCK 1 2 }  { m_axi_bcid1_AWLOCK CACHE 1 2 }  { m_axi_bcid1_AWCACHE PROT 1 4 }  { m_axi_bcid1_AWPROT QOS 1 3 }  { m_axi_bcid1_AWQOS REGION 1 4 }  { m_axi_bcid1_AWREGION USER 1 4 }  { m_axi_bcid1_AWUSER DATA 1 1 }  { m_axi_bcid1_WVALID VALID 1 1 }  { m_axi_bcid1_WREADY READY 0 1 }  { m_axi_bcid1_WDATA FIFONUM 1 128 }  { m_axi_bcid1_WSTRB STRB 1 16 }  { m_axi_bcid1_WLAST LAST 1 1 }  { m_axi_bcid1_WID ID 1 1 }  { m_axi_bcid1_WUSER DATA 1 1 }  { m_axi_bcid1_ARVALID VALID 1 1 }  { m_axi_bcid1_ARREADY READY 0 1 }  { m_axi_bcid1_ARADDR ADDR 1 64 }  { m_axi_bcid1_ARID ID 1 1 }  { m_axi_bcid1_ARLEN SIZE 1 8 }  { m_axi_bcid1_ARSIZE BURST 1 3 }  { m_axi_bcid1_ARBURST LOCK 1 2 }  { m_axi_bcid1_ARLOCK CACHE 1 2 }  { m_axi_bcid1_ARCACHE PROT 1 4 }  { m_axi_bcid1_ARPROT QOS 1 3 }  { m_axi_bcid1_ARQOS REGION 1 4 }  { m_axi_bcid1_ARREGION USER 1 4 }  { m_axi_bcid1_ARUSER DATA 1 1 }  { m_axi_bcid1_RVALID VALID 0 1 }  { m_axi_bcid1_RREADY READY 1 1 }  { m_axi_bcid1_RDATA FIFONUM 0 128 }  { m_axi_bcid1_RLAST LAST 0 1 }  { m_axi_bcid1_RID ID 0 1 }  { m_axi_bcid1_RUSER DATA 0 1 }  { m_axi_bcid1_RRESP RESP 0 2 }  { m_axi_bcid1_BVALID VALID 0 1 }  { m_axi_bcid1_BREADY READY 1 1 }  { m_axi_bcid1_BRESP RESP 0 2 }  { m_axi_bcid1_BID ID 0 1 }  { m_axi_bcid1_BUSER DATA 0 1 } } }
	bval2 { m_axi {  { m_axi_bval2_AWVALID VALID 1 1 }  { m_axi_bval2_AWREADY READY 0 1 }  { m_axi_bval2_AWADDR ADDR 1 64 }  { m_axi_bval2_AWID ID 1 1 }  { m_axi_bval2_AWLEN SIZE 1 8 }  { m_axi_bval2_AWSIZE BURST 1 3 }  { m_axi_bval2_AWBURST LOCK 1 2 }  { m_axi_bval2_AWLOCK CACHE 1 2 }  { m_axi_bval2_AWCACHE PROT 1 4 }  { m_axi_bval2_AWPROT QOS 1 3 }  { m_axi_bval2_AWQOS REGION 1 4 }  { m_axi_bval2_AWREGION USER 1 4 }  { m_axi_bval2_AWUSER DATA 1 1 }  { m_axi_bval2_WVALID VALID 1 1 }  { m_axi_bval2_WREADY READY 0 1 }  { m_axi_bval2_WDATA FIFONUM 1 128 }  { m_axi_bval2_WSTRB STRB 1 16 }  { m_axi_bval2_WLAST LAST 1 1 }  { m_axi_bval2_WID ID 1 1 }  { m_axi_bval2_WUSER DATA 1 1 }  { m_axi_bval2_ARVALID VALID 1 1 }  { m_axi_bval2_ARREADY READY 0 1 }  { m_axi_bval2_ARADDR ADDR 1 64 }  { m_axi_bval2_ARID ID 1 1 }  { m_axi_bval2_ARLEN SIZE 1 8 }  { m_axi_bval2_ARSIZE BURST 1 3 }  { m_axi_bval2_ARBURST LOCK 1 2 }  { m_axi_bval2_ARLOCK CACHE 1 2 }  { m_axi_bval2_ARCACHE PROT 1 4 }  { m_axi_bval2_ARPROT QOS 1 3 }  { m_axi_bval2_ARQOS REGION 1 4 }  { m_axi_bval2_ARREGION USER 1 4 }  { m_axi_bval2_ARUSER DATA 1 1 }  { m_axi_bval2_RVALID VALID 0 1 }  { m_axi_bval2_RREADY READY 1 1 }  { m_axi_bval2_RDATA FIFONUM 0 128 }  { m_axi_bval2_RLAST LAST 0 1 }  { m_axi_bval2_RID ID 0 1 }  { m_axi_bval2_RUSER DATA 0 1 }  { m_axi_bval2_RRESP RESP 0 2 }  { m_axi_bval2_BVALID VALID 0 1 }  { m_axi_bval2_BREADY READY 1 1 }  { m_axi_bval2_BRESP RESP 0 2 }  { m_axi_bval2_BID ID 0 1 }  { m_axi_bval2_BUSER DATA 0 1 } } }
	bcid2 { m_axi {  { m_axi_bcid2_AWVALID VALID 1 1 }  { m_axi_bcid2_AWREADY READY 0 1 }  { m_axi_bcid2_AWADDR ADDR 1 64 }  { m_axi_bcid2_AWID ID 1 1 }  { m_axi_bcid2_AWLEN SIZE 1 8 }  { m_axi_bcid2_AWSIZE BURST 1 3 }  { m_axi_bcid2_AWBURST LOCK 1 2 }  { m_axi_bcid2_AWLOCK CACHE 1 2 }  { m_axi_bcid2_AWCACHE PROT 1 4 }  { m_axi_bcid2_AWPROT QOS 1 3 }  { m_axi_bcid2_AWQOS REGION 1 4 }  { m_axi_bcid2_AWREGION USER 1 4 }  { m_axi_bcid2_AWUSER DATA 1 1 }  { m_axi_bcid2_WVALID VALID 1 1 }  { m_axi_bcid2_WREADY READY 0 1 }  { m_axi_bcid2_WDATA FIFONUM 1 128 }  { m_axi_bcid2_WSTRB STRB 1 16 }  { m_axi_bcid2_WLAST LAST 1 1 }  { m_axi_bcid2_WID ID 1 1 }  { m_axi_bcid2_WUSER DATA 1 1 }  { m_axi_bcid2_ARVALID VALID 1 1 }  { m_axi_bcid2_ARREADY READY 0 1 }  { m_axi_bcid2_ARADDR ADDR 1 64 }  { m_axi_bcid2_ARID ID 1 1 }  { m_axi_bcid2_ARLEN SIZE 1 8 }  { m_axi_bcid2_ARSIZE BURST 1 3 }  { m_axi_bcid2_ARBURST LOCK 1 2 }  { m_axi_bcid2_ARLOCK CACHE 1 2 }  { m_axi_bcid2_ARCACHE PROT 1 4 }  { m_axi_bcid2_ARPROT QOS 1 3 }  { m_axi_bcid2_ARQOS REGION 1 4 }  { m_axi_bcid2_ARREGION USER 1 4 }  { m_axi_bcid2_ARUSER DATA 1 1 }  { m_axi_bcid2_RVALID VALID 0 1 }  { m_axi_bcid2_RREADY READY 1 1 }  { m_axi_bcid2_RDATA FIFONUM 0 128 }  { m_axi_bcid2_RLAST LAST 0 1 }  { m_axi_bcid2_RID ID 0 1 }  { m_axi_bcid2_RUSER DATA 0 1 }  { m_axi_bcid2_RRESP RESP 0 2 }  { m_axi_bcid2_BVALID VALID 0 1 }  { m_axi_bcid2_BREADY READY 1 1 }  { m_axi_bcid2_BRESP RESP 0 2 }  { m_axi_bcid2_BID ID 0 1 }  { m_axi_bcid2_BUSER DATA 0 1 } } }
	bval3 { m_axi {  { m_axi_bval3_AWVALID VALID 1 1 }  { m_axi_bval3_AWREADY READY 0 1 }  { m_axi_bval3_AWADDR ADDR 1 64 }  { m_axi_bval3_AWID ID 1 1 }  { m_axi_bval3_AWLEN SIZE 1 8 }  { m_axi_bval3_AWSIZE BURST 1 3 }  { m_axi_bval3_AWBURST LOCK 1 2 }  { m_axi_bval3_AWLOCK CACHE 1 2 }  { m_axi_bval3_AWCACHE PROT 1 4 }  { m_axi_bval3_AWPROT QOS 1 3 }  { m_axi_bval3_AWQOS REGION 1 4 }  { m_axi_bval3_AWREGION USER 1 4 }  { m_axi_bval3_AWUSER DATA 1 1 }  { m_axi_bval3_WVALID VALID 1 1 }  { m_axi_bval3_WREADY READY 0 1 }  { m_axi_bval3_WDATA FIFONUM 1 128 }  { m_axi_bval3_WSTRB STRB 1 16 }  { m_axi_bval3_WLAST LAST 1 1 }  { m_axi_bval3_WID ID 1 1 }  { m_axi_bval3_WUSER DATA 1 1 }  { m_axi_bval3_ARVALID VALID 1 1 }  { m_axi_bval3_ARREADY READY 0 1 }  { m_axi_bval3_ARADDR ADDR 1 64 }  { m_axi_bval3_ARID ID 1 1 }  { m_axi_bval3_ARLEN SIZE 1 8 }  { m_axi_bval3_ARSIZE BURST 1 3 }  { m_axi_bval3_ARBURST LOCK 1 2 }  { m_axi_bval3_ARLOCK CACHE 1 2 }  { m_axi_bval3_ARCACHE PROT 1 4 }  { m_axi_bval3_ARPROT QOS 1 3 }  { m_axi_bval3_ARQOS REGION 1 4 }  { m_axi_bval3_ARREGION USER 1 4 }  { m_axi_bval3_ARUSER DATA 1 1 }  { m_axi_bval3_RVALID VALID 0 1 }  { m_axi_bval3_RREADY READY 1 1 }  { m_axi_bval3_RDATA FIFONUM 0 128 }  { m_axi_bval3_RLAST LAST 0 1 }  { m_axi_bval3_RID ID 0 1 }  { m_axi_bval3_RUSER DATA 0 1 }  { m_axi_bval3_RRESP RESP 0 2 }  { m_axi_bval3_BVALID VALID 0 1 }  { m_axi_bval3_BREADY READY 1 1 }  { m_axi_bval3_BRESP RESP 0 2 }  { m_axi_bval3_BID ID 0 1 }  { m_axi_bval3_BUSER DATA 0 1 } } }
	bcid3 { m_axi {  { m_axi_bcid3_AWVALID VALID 1 1 }  { m_axi_bcid3_AWREADY READY 0 1 }  { m_axi_bcid3_AWADDR ADDR 1 64 }  { m_axi_bcid3_AWID ID 1 1 }  { m_axi_bcid3_AWLEN SIZE 1 8 }  { m_axi_bcid3_AWSIZE BURST 1 3 }  { m_axi_bcid3_AWBURST LOCK 1 2 }  { m_axi_bcid3_AWLOCK CACHE 1 2 }  { m_axi_bcid3_AWCACHE PROT 1 4 }  { m_axi_bcid3_AWPROT QOS 1 3 }  { m_axi_bcid3_AWQOS REGION 1 4 }  { m_axi_bcid3_AWREGION USER 1 4 }  { m_axi_bcid3_AWUSER DATA 1 1 }  { m_axi_bcid3_WVALID VALID 1 1 }  { m_axi_bcid3_WREADY READY 0 1 }  { m_axi_bcid3_WDATA FIFONUM 1 128 }  { m_axi_bcid3_WSTRB STRB 1 16 }  { m_axi_bcid3_WLAST LAST 1 1 }  { m_axi_bcid3_WID ID 1 1 }  { m_axi_bcid3_WUSER DATA 1 1 }  { m_axi_bcid3_ARVALID VALID 1 1 }  { m_axi_bcid3_ARREADY READY 0 1 }  { m_axi_bcid3_ARADDR ADDR 1 64 }  { m_axi_bcid3_ARID ID 1 1 }  { m_axi_bcid3_ARLEN SIZE 1 8 }  { m_axi_bcid3_ARSIZE BURST 1 3 }  { m_axi_bcid3_ARBURST LOCK 1 2 }  { m_axi_bcid3_ARLOCK CACHE 1 2 }  { m_axi_bcid3_ARCACHE PROT 1 4 }  { m_axi_bcid3_ARPROT QOS 1 3 }  { m_axi_bcid3_ARQOS REGION 1 4 }  { m_axi_bcid3_ARREGION USER 1 4 }  { m_axi_bcid3_ARUSER DATA 1 1 }  { m_axi_bcid3_RVALID VALID 0 1 }  { m_axi_bcid3_RREADY READY 1 1 }  { m_axi_bcid3_RDATA FIFONUM 0 128 }  { m_axi_bcid3_RLAST LAST 0 1 }  { m_axi_bcid3_RID ID 0 1 }  { m_axi_bcid3_RUSER DATA 0 1 }  { m_axi_bcid3_RRESP RESP 0 2 }  { m_axi_bcid3_BVALID VALID 0 1 }  { m_axi_bcid3_BREADY READY 1 1 }  { m_axi_bcid3_BRESP RESP 0 2 }  { m_axi_bcid3_BID ID 0 1 }  { m_axi_bcid3_BUSER DATA 0 1 } } }
	bval4 { m_axi {  { m_axi_bval4_AWVALID VALID 1 1 }  { m_axi_bval4_AWREADY READY 0 1 }  { m_axi_bval4_AWADDR ADDR 1 64 }  { m_axi_bval4_AWID ID 1 1 }  { m_axi_bval4_AWLEN SIZE 1 8 }  { m_axi_bval4_AWSIZE BURST 1 3 }  { m_axi_bval4_AWBURST LOCK 1 2 }  { m_axi_bval4_AWLOCK CACHE 1 2 }  { m_axi_bval4_AWCACHE PROT 1 4 }  { m_axi_bval4_AWPROT QOS 1 3 }  { m_axi_bval4_AWQOS REGION 1 4 }  { m_axi_bval4_AWREGION USER 1 4 }  { m_axi_bval4_AWUSER DATA 1 1 }  { m_axi_bval4_WVALID VALID 1 1 }  { m_axi_bval4_WREADY READY 0 1 }  { m_axi_bval4_WDATA FIFONUM 1 128 }  { m_axi_bval4_WSTRB STRB 1 16 }  { m_axi_bval4_WLAST LAST 1 1 }  { m_axi_bval4_WID ID 1 1 }  { m_axi_bval4_WUSER DATA 1 1 }  { m_axi_bval4_ARVALID VALID 1 1 }  { m_axi_bval4_ARREADY READY 0 1 }  { m_axi_bval4_ARADDR ADDR 1 64 }  { m_axi_bval4_ARID ID 1 1 }  { m_axi_bval4_ARLEN SIZE 1 8 }  { m_axi_bval4_ARSIZE BURST 1 3 }  { m_axi_bval4_ARBURST LOCK 1 2 }  { m_axi_bval4_ARLOCK CACHE 1 2 }  { m_axi_bval4_ARCACHE PROT 1 4 }  { m_axi_bval4_ARPROT QOS 1 3 }  { m_axi_bval4_ARQOS REGION 1 4 }  { m_axi_bval4_ARREGION USER 1 4 }  { m_axi_bval4_ARUSER DATA 1 1 }  { m_axi_bval4_RVALID VALID 0 1 }  { m_axi_bval4_RREADY READY 1 1 }  { m_axi_bval4_RDATA FIFONUM 0 128 }  { m_axi_bval4_RLAST LAST 0 1 }  { m_axi_bval4_RID ID 0 1 }  { m_axi_bval4_RUSER DATA 0 1 }  { m_axi_bval4_RRESP RESP 0 2 }  { m_axi_bval4_BVALID VALID 0 1 }  { m_axi_bval4_BREADY READY 1 1 }  { m_axi_bval4_BRESP RESP 0 2 }  { m_axi_bval4_BID ID 0 1 }  { m_axi_bval4_BUSER DATA 0 1 } } }
	bcid4 { m_axi {  { m_axi_bcid4_AWVALID VALID 1 1 }  { m_axi_bcid4_AWREADY READY 0 1 }  { m_axi_bcid4_AWADDR ADDR 1 64 }  { m_axi_bcid4_AWID ID 1 1 }  { m_axi_bcid4_AWLEN SIZE 1 8 }  { m_axi_bcid4_AWSIZE BURST 1 3 }  { m_axi_bcid4_AWBURST LOCK 1 2 }  { m_axi_bcid4_AWLOCK CACHE 1 2 }  { m_axi_bcid4_AWCACHE PROT 1 4 }  { m_axi_bcid4_AWPROT QOS 1 3 }  { m_axi_bcid4_AWQOS REGION 1 4 }  { m_axi_bcid4_AWREGION USER 1 4 }  { m_axi_bcid4_AWUSER DATA 1 1 }  { m_axi_bcid4_WVALID VALID 1 1 }  { m_axi_bcid4_WREADY READY 0 1 }  { m_axi_bcid4_WDATA FIFONUM 1 128 }  { m_axi_bcid4_WSTRB STRB 1 16 }  { m_axi_bcid4_WLAST LAST 1 1 }  { m_axi_bcid4_WID ID 1 1 }  { m_axi_bcid4_WUSER DATA 1 1 }  { m_axi_bcid4_ARVALID VALID 1 1 }  { m_axi_bcid4_ARREADY READY 0 1 }  { m_axi_bcid4_ARADDR ADDR 1 64 }  { m_axi_bcid4_ARID ID 1 1 }  { m_axi_bcid4_ARLEN SIZE 1 8 }  { m_axi_bcid4_ARSIZE BURST 1 3 }  { m_axi_bcid4_ARBURST LOCK 1 2 }  { m_axi_bcid4_ARLOCK CACHE 1 2 }  { m_axi_bcid4_ARCACHE PROT 1 4 }  { m_axi_bcid4_ARPROT QOS 1 3 }  { m_axi_bcid4_ARQOS REGION 1 4 }  { m_axi_bcid4_ARREGION USER 1 4 }  { m_axi_bcid4_ARUSER DATA 1 1 }  { m_axi_bcid4_RVALID VALID 0 1 }  { m_axi_bcid4_RREADY READY 1 1 }  { m_axi_bcid4_RDATA FIFONUM 0 128 }  { m_axi_bcid4_RLAST LAST 0 1 }  { m_axi_bcid4_RID ID 0 1 }  { m_axi_bcid4_RUSER DATA 0 1 }  { m_axi_bcid4_RRESP RESP 0 2 }  { m_axi_bcid4_BVALID VALID 0 1 }  { m_axi_bcid4_BREADY READY 1 1 }  { m_axi_bcid4_BRESP RESP 0 2 }  { m_axi_bcid4_BID ID 0 1 }  { m_axi_bcid4_BUSER DATA 0 1 } } }
	bv1 { m_axi {  { m_axi_bv1_AWVALID VALID 1 1 }  { m_axi_bv1_AWREADY READY 0 1 }  { m_axi_bv1_AWADDR ADDR 1 64 }  { m_axi_bv1_AWID ID 1 1 }  { m_axi_bv1_AWLEN SIZE 1 8 }  { m_axi_bv1_AWSIZE BURST 1 3 }  { m_axi_bv1_AWBURST LOCK 1 2 }  { m_axi_bv1_AWLOCK CACHE 1 2 }  { m_axi_bv1_AWCACHE PROT 1 4 }  { m_axi_bv1_AWPROT QOS 1 3 }  { m_axi_bv1_AWQOS REGION 1 4 }  { m_axi_bv1_AWREGION USER 1 4 }  { m_axi_bv1_AWUSER DATA 1 1 }  { m_axi_bv1_WVALID VALID 1 1 }  { m_axi_bv1_WREADY READY 0 1 }  { m_axi_bv1_WDATA FIFONUM 1 128 }  { m_axi_bv1_WSTRB STRB 1 16 }  { m_axi_bv1_WLAST LAST 1 1 }  { m_axi_bv1_WID ID 1 1 }  { m_axi_bv1_WUSER DATA 1 1 }  { m_axi_bv1_ARVALID VALID 1 1 }  { m_axi_bv1_ARREADY READY 0 1 }  { m_axi_bv1_ARADDR ADDR 1 64 }  { m_axi_bv1_ARID ID 1 1 }  { m_axi_bv1_ARLEN SIZE 1 8 }  { m_axi_bv1_ARSIZE BURST 1 3 }  { m_axi_bv1_ARBURST LOCK 1 2 }  { m_axi_bv1_ARLOCK CACHE 1 2 }  { m_axi_bv1_ARCACHE PROT 1 4 }  { m_axi_bv1_ARPROT QOS 1 3 }  { m_axi_bv1_ARQOS REGION 1 4 }  { m_axi_bv1_ARREGION USER 1 4 }  { m_axi_bv1_ARUSER DATA 1 1 }  { m_axi_bv1_RVALID VALID 0 1 }  { m_axi_bv1_RREADY READY 1 1 }  { m_axi_bv1_RDATA FIFONUM 0 128 }  { m_axi_bv1_RLAST LAST 0 1 }  { m_axi_bv1_RID ID 0 1 }  { m_axi_bv1_RUSER DATA 0 1 }  { m_axi_bv1_RRESP RESP 0 2 }  { m_axi_bv1_BVALID VALID 0 1 }  { m_axi_bv1_BREADY READY 1 1 }  { m_axi_bv1_BRESP RESP 0 2 }  { m_axi_bv1_BID ID 0 1 }  { m_axi_bv1_BUSER DATA 0 1 } } }
	bc1 { m_axi {  { m_axi_bc1_AWVALID VALID 1 1 }  { m_axi_bc1_AWREADY READY 0 1 }  { m_axi_bc1_AWADDR ADDR 1 64 }  { m_axi_bc1_AWID ID 1 1 }  { m_axi_bc1_AWLEN SIZE 1 8 }  { m_axi_bc1_AWSIZE BURST 1 3 }  { m_axi_bc1_AWBURST LOCK 1 2 }  { m_axi_bc1_AWLOCK CACHE 1 2 }  { m_axi_bc1_AWCACHE PROT 1 4 }  { m_axi_bc1_AWPROT QOS 1 3 }  { m_axi_bc1_AWQOS REGION 1 4 }  { m_axi_bc1_AWREGION USER 1 4 }  { m_axi_bc1_AWUSER DATA 1 1 }  { m_axi_bc1_WVALID VALID 1 1 }  { m_axi_bc1_WREADY READY 0 1 }  { m_axi_bc1_WDATA FIFONUM 1 128 }  { m_axi_bc1_WSTRB STRB 1 16 }  { m_axi_bc1_WLAST LAST 1 1 }  { m_axi_bc1_WID ID 1 1 }  { m_axi_bc1_WUSER DATA 1 1 }  { m_axi_bc1_ARVALID VALID 1 1 }  { m_axi_bc1_ARREADY READY 0 1 }  { m_axi_bc1_ARADDR ADDR 1 64 }  { m_axi_bc1_ARID ID 1 1 }  { m_axi_bc1_ARLEN SIZE 1 8 }  { m_axi_bc1_ARSIZE BURST 1 3 }  { m_axi_bc1_ARBURST LOCK 1 2 }  { m_axi_bc1_ARLOCK CACHE 1 2 }  { m_axi_bc1_ARCACHE PROT 1 4 }  { m_axi_bc1_ARPROT QOS 1 3 }  { m_axi_bc1_ARQOS REGION 1 4 }  { m_axi_bc1_ARREGION USER 1 4 }  { m_axi_bc1_ARUSER DATA 1 1 }  { m_axi_bc1_RVALID VALID 0 1 }  { m_axi_bc1_RREADY READY 1 1 }  { m_axi_bc1_RDATA FIFONUM 0 128 }  { m_axi_bc1_RLAST LAST 0 1 }  { m_axi_bc1_RID ID 0 1 }  { m_axi_bc1_RUSER DATA 0 1 }  { m_axi_bc1_RRESP RESP 0 2 }  { m_axi_bc1_BVALID VALID 0 1 }  { m_axi_bc1_BREADY READY 1 1 }  { m_axi_bc1_BRESP RESP 0 2 }  { m_axi_bc1_BID ID 0 1 }  { m_axi_bc1_BUSER DATA 0 1 } } }
	bv2 { m_axi {  { m_axi_bv2_AWVALID VALID 1 1 }  { m_axi_bv2_AWREADY READY 0 1 }  { m_axi_bv2_AWADDR ADDR 1 64 }  { m_axi_bv2_AWID ID 1 1 }  { m_axi_bv2_AWLEN SIZE 1 8 }  { m_axi_bv2_AWSIZE BURST 1 3 }  { m_axi_bv2_AWBURST LOCK 1 2 }  { m_axi_bv2_AWLOCK CACHE 1 2 }  { m_axi_bv2_AWCACHE PROT 1 4 }  { m_axi_bv2_AWPROT QOS 1 3 }  { m_axi_bv2_AWQOS REGION 1 4 }  { m_axi_bv2_AWREGION USER 1 4 }  { m_axi_bv2_AWUSER DATA 1 1 }  { m_axi_bv2_WVALID VALID 1 1 }  { m_axi_bv2_WREADY READY 0 1 }  { m_axi_bv2_WDATA FIFONUM 1 128 }  { m_axi_bv2_WSTRB STRB 1 16 }  { m_axi_bv2_WLAST LAST 1 1 }  { m_axi_bv2_WID ID 1 1 }  { m_axi_bv2_WUSER DATA 1 1 }  { m_axi_bv2_ARVALID VALID 1 1 }  { m_axi_bv2_ARREADY READY 0 1 }  { m_axi_bv2_ARADDR ADDR 1 64 }  { m_axi_bv2_ARID ID 1 1 }  { m_axi_bv2_ARLEN SIZE 1 8 }  { m_axi_bv2_ARSIZE BURST 1 3 }  { m_axi_bv2_ARBURST LOCK 1 2 }  { m_axi_bv2_ARLOCK CACHE 1 2 }  { m_axi_bv2_ARCACHE PROT 1 4 }  { m_axi_bv2_ARPROT QOS 1 3 }  { m_axi_bv2_ARQOS REGION 1 4 }  { m_axi_bv2_ARREGION USER 1 4 }  { m_axi_bv2_ARUSER DATA 1 1 }  { m_axi_bv2_RVALID VALID 0 1 }  { m_axi_bv2_RREADY READY 1 1 }  { m_axi_bv2_RDATA FIFONUM 0 128 }  { m_axi_bv2_RLAST LAST 0 1 }  { m_axi_bv2_RID ID 0 1 }  { m_axi_bv2_RUSER DATA 0 1 }  { m_axi_bv2_RRESP RESP 0 2 }  { m_axi_bv2_BVALID VALID 0 1 }  { m_axi_bv2_BREADY READY 1 1 }  { m_axi_bv2_BRESP RESP 0 2 }  { m_axi_bv2_BID ID 0 1 }  { m_axi_bv2_BUSER DATA 0 1 } } }
	bc2 { m_axi {  { m_axi_bc2_AWVALID VALID 1 1 }  { m_axi_bc2_AWREADY READY 0 1 }  { m_axi_bc2_AWADDR ADDR 1 64 }  { m_axi_bc2_AWID ID 1 1 }  { m_axi_bc2_AWLEN SIZE 1 8 }  { m_axi_bc2_AWSIZE BURST 1 3 }  { m_axi_bc2_AWBURST LOCK 1 2 }  { m_axi_bc2_AWLOCK CACHE 1 2 }  { m_axi_bc2_AWCACHE PROT 1 4 }  { m_axi_bc2_AWPROT QOS 1 3 }  { m_axi_bc2_AWQOS REGION 1 4 }  { m_axi_bc2_AWREGION USER 1 4 }  { m_axi_bc2_AWUSER DATA 1 1 }  { m_axi_bc2_WVALID VALID 1 1 }  { m_axi_bc2_WREADY READY 0 1 }  { m_axi_bc2_WDATA FIFONUM 1 128 }  { m_axi_bc2_WSTRB STRB 1 16 }  { m_axi_bc2_WLAST LAST 1 1 }  { m_axi_bc2_WID ID 1 1 }  { m_axi_bc2_WUSER DATA 1 1 }  { m_axi_bc2_ARVALID VALID 1 1 }  { m_axi_bc2_ARREADY READY 0 1 }  { m_axi_bc2_ARADDR ADDR 1 64 }  { m_axi_bc2_ARID ID 1 1 }  { m_axi_bc2_ARLEN SIZE 1 8 }  { m_axi_bc2_ARSIZE BURST 1 3 }  { m_axi_bc2_ARBURST LOCK 1 2 }  { m_axi_bc2_ARLOCK CACHE 1 2 }  { m_axi_bc2_ARCACHE PROT 1 4 }  { m_axi_bc2_ARPROT QOS 1 3 }  { m_axi_bc2_ARQOS REGION 1 4 }  { m_axi_bc2_ARREGION USER 1 4 }  { m_axi_bc2_ARUSER DATA 1 1 }  { m_axi_bc2_RVALID VALID 0 1 }  { m_axi_bc2_RREADY READY 1 1 }  { m_axi_bc2_RDATA FIFONUM 0 128 }  { m_axi_bc2_RLAST LAST 0 1 }  { m_axi_bc2_RID ID 0 1 }  { m_axi_bc2_RUSER DATA 0 1 }  { m_axi_bc2_RRESP RESP 0 2 }  { m_axi_bc2_BVALID VALID 0 1 }  { m_axi_bc2_BREADY READY 1 1 }  { m_axi_bc2_BRESP RESP 0 2 }  { m_axi_bc2_BID ID 0 1 }  { m_axi_bc2_BUSER DATA 0 1 } } }
	bv3 { m_axi {  { m_axi_bv3_AWVALID VALID 1 1 }  { m_axi_bv3_AWREADY READY 0 1 }  { m_axi_bv3_AWADDR ADDR 1 64 }  { m_axi_bv3_AWID ID 1 1 }  { m_axi_bv3_AWLEN SIZE 1 8 }  { m_axi_bv3_AWSIZE BURST 1 3 }  { m_axi_bv3_AWBURST LOCK 1 2 }  { m_axi_bv3_AWLOCK CACHE 1 2 }  { m_axi_bv3_AWCACHE PROT 1 4 }  { m_axi_bv3_AWPROT QOS 1 3 }  { m_axi_bv3_AWQOS REGION 1 4 }  { m_axi_bv3_AWREGION USER 1 4 }  { m_axi_bv3_AWUSER DATA 1 1 }  { m_axi_bv3_WVALID VALID 1 1 }  { m_axi_bv3_WREADY READY 0 1 }  { m_axi_bv3_WDATA FIFONUM 1 128 }  { m_axi_bv3_WSTRB STRB 1 16 }  { m_axi_bv3_WLAST LAST 1 1 }  { m_axi_bv3_WID ID 1 1 }  { m_axi_bv3_WUSER DATA 1 1 }  { m_axi_bv3_ARVALID VALID 1 1 }  { m_axi_bv3_ARREADY READY 0 1 }  { m_axi_bv3_ARADDR ADDR 1 64 }  { m_axi_bv3_ARID ID 1 1 }  { m_axi_bv3_ARLEN SIZE 1 8 }  { m_axi_bv3_ARSIZE BURST 1 3 }  { m_axi_bv3_ARBURST LOCK 1 2 }  { m_axi_bv3_ARLOCK CACHE 1 2 }  { m_axi_bv3_ARCACHE PROT 1 4 }  { m_axi_bv3_ARPROT QOS 1 3 }  { m_axi_bv3_ARQOS REGION 1 4 }  { m_axi_bv3_ARREGION USER 1 4 }  { m_axi_bv3_ARUSER DATA 1 1 }  { m_axi_bv3_RVALID VALID 0 1 }  { m_axi_bv3_RREADY READY 1 1 }  { m_axi_bv3_RDATA FIFONUM 0 128 }  { m_axi_bv3_RLAST LAST 0 1 }  { m_axi_bv3_RID ID 0 1 }  { m_axi_bv3_RUSER DATA 0 1 }  { m_axi_bv3_RRESP RESP 0 2 }  { m_axi_bv3_BVALID VALID 0 1 }  { m_axi_bv3_BREADY READY 1 1 }  { m_axi_bv3_BRESP RESP 0 2 }  { m_axi_bv3_BID ID 0 1 }  { m_axi_bv3_BUSER DATA 0 1 } } }
	bc3 { m_axi {  { m_axi_bc3_AWVALID VALID 1 1 }  { m_axi_bc3_AWREADY READY 0 1 }  { m_axi_bc3_AWADDR ADDR 1 64 }  { m_axi_bc3_AWID ID 1 1 }  { m_axi_bc3_AWLEN SIZE 1 8 }  { m_axi_bc3_AWSIZE BURST 1 3 }  { m_axi_bc3_AWBURST LOCK 1 2 }  { m_axi_bc3_AWLOCK CACHE 1 2 }  { m_axi_bc3_AWCACHE PROT 1 4 }  { m_axi_bc3_AWPROT QOS 1 3 }  { m_axi_bc3_AWQOS REGION 1 4 }  { m_axi_bc3_AWREGION USER 1 4 }  { m_axi_bc3_AWUSER DATA 1 1 }  { m_axi_bc3_WVALID VALID 1 1 }  { m_axi_bc3_WREADY READY 0 1 }  { m_axi_bc3_WDATA FIFONUM 1 128 }  { m_axi_bc3_WSTRB STRB 1 16 }  { m_axi_bc3_WLAST LAST 1 1 }  { m_axi_bc3_WID ID 1 1 }  { m_axi_bc3_WUSER DATA 1 1 }  { m_axi_bc3_ARVALID VALID 1 1 }  { m_axi_bc3_ARREADY READY 0 1 }  { m_axi_bc3_ARADDR ADDR 1 64 }  { m_axi_bc3_ARID ID 1 1 }  { m_axi_bc3_ARLEN SIZE 1 8 }  { m_axi_bc3_ARSIZE BURST 1 3 }  { m_axi_bc3_ARBURST LOCK 1 2 }  { m_axi_bc3_ARLOCK CACHE 1 2 }  { m_axi_bc3_ARCACHE PROT 1 4 }  { m_axi_bc3_ARPROT QOS 1 3 }  { m_axi_bc3_ARQOS REGION 1 4 }  { m_axi_bc3_ARREGION USER 1 4 }  { m_axi_bc3_ARUSER DATA 1 1 }  { m_axi_bc3_RVALID VALID 0 1 }  { m_axi_bc3_RREADY READY 1 1 }  { m_axi_bc3_RDATA FIFONUM 0 128 }  { m_axi_bc3_RLAST LAST 0 1 }  { m_axi_bc3_RID ID 0 1 }  { m_axi_bc3_RUSER DATA 0 1 }  { m_axi_bc3_RRESP RESP 0 2 }  { m_axi_bc3_BVALID VALID 0 1 }  { m_axi_bc3_BREADY READY 1 1 }  { m_axi_bc3_BRESP RESP 0 2 }  { m_axi_bc3_BID ID 0 1 }  { m_axi_bc3_BUSER DATA 0 1 } } }
	bv4 { m_axi {  { m_axi_bv4_AWVALID VALID 1 1 }  { m_axi_bv4_AWREADY READY 0 1 }  { m_axi_bv4_AWADDR ADDR 1 64 }  { m_axi_bv4_AWID ID 1 1 }  { m_axi_bv4_AWLEN SIZE 1 8 }  { m_axi_bv4_AWSIZE BURST 1 3 }  { m_axi_bv4_AWBURST LOCK 1 2 }  { m_axi_bv4_AWLOCK CACHE 1 2 }  { m_axi_bv4_AWCACHE PROT 1 4 }  { m_axi_bv4_AWPROT QOS 1 3 }  { m_axi_bv4_AWQOS REGION 1 4 }  { m_axi_bv4_AWREGION USER 1 4 }  { m_axi_bv4_AWUSER DATA 1 1 }  { m_axi_bv4_WVALID VALID 1 1 }  { m_axi_bv4_WREADY READY 0 1 }  { m_axi_bv4_WDATA FIFONUM 1 128 }  { m_axi_bv4_WSTRB STRB 1 16 }  { m_axi_bv4_WLAST LAST 1 1 }  { m_axi_bv4_WID ID 1 1 }  { m_axi_bv4_WUSER DATA 1 1 }  { m_axi_bv4_ARVALID VALID 1 1 }  { m_axi_bv4_ARREADY READY 0 1 }  { m_axi_bv4_ARADDR ADDR 1 64 }  { m_axi_bv4_ARID ID 1 1 }  { m_axi_bv4_ARLEN SIZE 1 8 }  { m_axi_bv4_ARSIZE BURST 1 3 }  { m_axi_bv4_ARBURST LOCK 1 2 }  { m_axi_bv4_ARLOCK CACHE 1 2 }  { m_axi_bv4_ARCACHE PROT 1 4 }  { m_axi_bv4_ARPROT QOS 1 3 }  { m_axi_bv4_ARQOS REGION 1 4 }  { m_axi_bv4_ARREGION USER 1 4 }  { m_axi_bv4_ARUSER DATA 1 1 }  { m_axi_bv4_RVALID VALID 0 1 }  { m_axi_bv4_RREADY READY 1 1 }  { m_axi_bv4_RDATA FIFONUM 0 128 }  { m_axi_bv4_RLAST LAST 0 1 }  { m_axi_bv4_RID ID 0 1 }  { m_axi_bv4_RUSER DATA 0 1 }  { m_axi_bv4_RRESP RESP 0 2 }  { m_axi_bv4_BVALID VALID 0 1 }  { m_axi_bv4_BREADY READY 1 1 }  { m_axi_bv4_BRESP RESP 0 2 }  { m_axi_bv4_BID ID 0 1 }  { m_axi_bv4_BUSER DATA 0 1 } } }
	bc4 { m_axi {  { m_axi_bc4_AWVALID VALID 1 1 }  { m_axi_bc4_AWREADY READY 0 1 }  { m_axi_bc4_AWADDR ADDR 1 64 }  { m_axi_bc4_AWID ID 1 1 }  { m_axi_bc4_AWLEN SIZE 1 8 }  { m_axi_bc4_AWSIZE BURST 1 3 }  { m_axi_bc4_AWBURST LOCK 1 2 }  { m_axi_bc4_AWLOCK CACHE 1 2 }  { m_axi_bc4_AWCACHE PROT 1 4 }  { m_axi_bc4_AWPROT QOS 1 3 }  { m_axi_bc4_AWQOS REGION 1 4 }  { m_axi_bc4_AWREGION USER 1 4 }  { m_axi_bc4_AWUSER DATA 1 1 }  { m_axi_bc4_WVALID VALID 1 1 }  { m_axi_bc4_WREADY READY 0 1 }  { m_axi_bc4_WDATA FIFONUM 1 128 }  { m_axi_bc4_WSTRB STRB 1 16 }  { m_axi_bc4_WLAST LAST 1 1 }  { m_axi_bc4_WID ID 1 1 }  { m_axi_bc4_WUSER DATA 1 1 }  { m_axi_bc4_ARVALID VALID 1 1 }  { m_axi_bc4_ARREADY READY 0 1 }  { m_axi_bc4_ARADDR ADDR 1 64 }  { m_axi_bc4_ARID ID 1 1 }  { m_axi_bc4_ARLEN SIZE 1 8 }  { m_axi_bc4_ARSIZE BURST 1 3 }  { m_axi_bc4_ARBURST LOCK 1 2 }  { m_axi_bc4_ARLOCK CACHE 1 2 }  { m_axi_bc4_ARCACHE PROT 1 4 }  { m_axi_bc4_ARPROT QOS 1 3 }  { m_axi_bc4_ARQOS REGION 1 4 }  { m_axi_bc4_ARREGION USER 1 4 }  { m_axi_bc4_ARUSER DATA 1 1 }  { m_axi_bc4_RVALID VALID 0 1 }  { m_axi_bc4_RREADY READY 1 1 }  { m_axi_bc4_RDATA FIFONUM 0 128 }  { m_axi_bc4_RLAST LAST 0 1 }  { m_axi_bc4_RID ID 0 1 }  { m_axi_bc4_RUSER DATA 0 1 }  { m_axi_bc4_RRESP RESP 0 2 }  { m_axi_bc4_BVALID VALID 0 1 }  { m_axi_bc4_BREADY READY 1 1 }  { m_axi_bc4_BRESP RESP 0 2 }  { m_axi_bc4_BID ID 0 1 }  { m_axi_bc4_BUSER DATA 0 1 } } }
	crcsr { m_axi {  { m_axi_crcsr_AWVALID VALID 1 1 }  { m_axi_crcsr_AWREADY READY 0 1 }  { m_axi_crcsr_AWADDR ADDR 1 64 }  { m_axi_crcsr_AWID ID 1 1 }  { m_axi_crcsr_AWLEN SIZE 1 8 }  { m_axi_crcsr_AWSIZE BURST 1 3 }  { m_axi_crcsr_AWBURST LOCK 1 2 }  { m_axi_crcsr_AWLOCK CACHE 1 2 }  { m_axi_crcsr_AWCACHE PROT 1 4 }  { m_axi_crcsr_AWPROT QOS 1 3 }  { m_axi_crcsr_AWQOS REGION 1 4 }  { m_axi_crcsr_AWREGION USER 1 4 }  { m_axi_crcsr_AWUSER DATA 1 1 }  { m_axi_crcsr_WVALID VALID 1 1 }  { m_axi_crcsr_WREADY READY 0 1 }  { m_axi_crcsr_WDATA FIFONUM 1 32 }  { m_axi_crcsr_WSTRB STRB 1 4 }  { m_axi_crcsr_WLAST LAST 1 1 }  { m_axi_crcsr_WID ID 1 1 }  { m_axi_crcsr_WUSER DATA 1 1 }  { m_axi_crcsr_ARVALID VALID 1 1 }  { m_axi_crcsr_ARREADY READY 0 1 }  { m_axi_crcsr_ARADDR ADDR 1 64 }  { m_axi_crcsr_ARID ID 1 1 }  { m_axi_crcsr_ARLEN SIZE 1 8 }  { m_axi_crcsr_ARSIZE BURST 1 3 }  { m_axi_crcsr_ARBURST LOCK 1 2 }  { m_axi_crcsr_ARLOCK CACHE 1 2 }  { m_axi_crcsr_ARCACHE PROT 1 4 }  { m_axi_crcsr_ARPROT QOS 1 3 }  { m_axi_crcsr_ARQOS REGION 1 4 }  { m_axi_crcsr_ARREGION USER 1 4 }  { m_axi_crcsr_ARUSER DATA 1 1 }  { m_axi_crcsr_RVALID VALID 0 1 }  { m_axi_crcsr_RREADY READY 1 1 }  { m_axi_crcsr_RDATA FIFONUM 0 32 }  { m_axi_crcsr_RLAST LAST 0 1 }  { m_axi_crcsr_RID ID 0 1 }  { m_axi_crcsr_RUSER DATA 0 1 }  { m_axi_crcsr_RRESP RESP 0 2 }  { m_axi_crcsr_BVALID VALID 0 1 }  { m_axi_crcsr_BREADY READY 1 1 }  { m_axi_crcsr_BRESP RESP 0 2 }  { m_axi_crcsr_BID ID 0 1 }  { m_axi_crcsr_BUSER DATA 0 1 } } }
	ccid { m_axi {  { m_axi_ccid_AWVALID VALID 1 1 }  { m_axi_ccid_AWREADY READY 0 1 }  { m_axi_ccid_AWADDR ADDR 1 64 }  { m_axi_ccid_AWID ID 1 1 }  { m_axi_ccid_AWLEN SIZE 1 8 }  { m_axi_ccid_AWSIZE BURST 1 3 }  { m_axi_ccid_AWBURST LOCK 1 2 }  { m_axi_ccid_AWLOCK CACHE 1 2 }  { m_axi_ccid_AWCACHE PROT 1 4 }  { m_axi_ccid_AWPROT QOS 1 3 }  { m_axi_ccid_AWQOS REGION 1 4 }  { m_axi_ccid_AWREGION USER 1 4 }  { m_axi_ccid_AWUSER DATA 1 1 }  { m_axi_ccid_WVALID VALID 1 1 }  { m_axi_ccid_WREADY READY 0 1 }  { m_axi_ccid_WDATA FIFONUM 1 32 }  { m_axi_ccid_WSTRB STRB 1 4 }  { m_axi_ccid_WLAST LAST 1 1 }  { m_axi_ccid_WID ID 1 1 }  { m_axi_ccid_WUSER DATA 1 1 }  { m_axi_ccid_ARVALID VALID 1 1 }  { m_axi_ccid_ARREADY READY 0 1 }  { m_axi_ccid_ARADDR ADDR 1 64 }  { m_axi_ccid_ARID ID 1 1 }  { m_axi_ccid_ARLEN SIZE 1 8 }  { m_axi_ccid_ARSIZE BURST 1 3 }  { m_axi_ccid_ARBURST LOCK 1 2 }  { m_axi_ccid_ARLOCK CACHE 1 2 }  { m_axi_ccid_ARCACHE PROT 1 4 }  { m_axi_ccid_ARPROT QOS 1 3 }  { m_axi_ccid_ARQOS REGION 1 4 }  { m_axi_ccid_ARREGION USER 1 4 }  { m_axi_ccid_ARUSER DATA 1 1 }  { m_axi_ccid_RVALID VALID 0 1 }  { m_axi_ccid_RREADY READY 1 1 }  { m_axi_ccid_RDATA FIFONUM 0 32 }  { m_axi_ccid_RLAST LAST 0 1 }  { m_axi_ccid_RID ID 0 1 }  { m_axi_ccid_RUSER DATA 0 1 }  { m_axi_ccid_RRESP RESP 0 2 }  { m_axi_ccid_BVALID VALID 0 1 }  { m_axi_ccid_BREADY READY 1 1 }  { m_axi_ccid_BRESP RESP 0 2 }  { m_axi_ccid_BID ID 0 1 }  { m_axi_ccid_BUSER DATA 0 1 } } }
	cval { m_axi {  { m_axi_cval_AWVALID VALID 1 1 }  { m_axi_cval_AWREADY READY 0 1 }  { m_axi_cval_AWADDR ADDR 1 64 }  { m_axi_cval_AWID ID 1 1 }  { m_axi_cval_AWLEN SIZE 1 8 }  { m_axi_cval_AWSIZE BURST 1 3 }  { m_axi_cval_AWBURST LOCK 1 2 }  { m_axi_cval_AWLOCK CACHE 1 2 }  { m_axi_cval_AWCACHE PROT 1 4 }  { m_axi_cval_AWPROT QOS 1 3 }  { m_axi_cval_AWQOS REGION 1 4 }  { m_axi_cval_AWREGION USER 1 4 }  { m_axi_cval_AWUSER DATA 1 1 }  { m_axi_cval_WVALID VALID 1 1 }  { m_axi_cval_WREADY READY 0 1 }  { m_axi_cval_WDATA FIFONUM 1 32 }  { m_axi_cval_WSTRB STRB 1 4 }  { m_axi_cval_WLAST LAST 1 1 }  { m_axi_cval_WID ID 1 1 }  { m_axi_cval_WUSER DATA 1 1 }  { m_axi_cval_ARVALID VALID 1 1 }  { m_axi_cval_ARREADY READY 0 1 }  { m_axi_cval_ARADDR ADDR 1 64 }  { m_axi_cval_ARID ID 1 1 }  { m_axi_cval_ARLEN SIZE 1 8 }  { m_axi_cval_ARSIZE BURST 1 3 }  { m_axi_cval_ARBURST LOCK 1 2 }  { m_axi_cval_ARLOCK CACHE 1 2 }  { m_axi_cval_ARCACHE PROT 1 4 }  { m_axi_cval_ARPROT QOS 1 3 }  { m_axi_cval_ARQOS REGION 1 4 }  { m_axi_cval_ARREGION USER 1 4 }  { m_axi_cval_ARUSER DATA 1 1 }  { m_axi_cval_RVALID VALID 0 1 }  { m_axi_cval_RREADY READY 1 1 }  { m_axi_cval_RDATA FIFONUM 0 32 }  { m_axi_cval_RLAST LAST 0 1 }  { m_axi_cval_RID ID 0 1 }  { m_axi_cval_RUSER DATA 0 1 }  { m_axi_cval_RRESP RESP 0 2 }  { m_axi_cval_BVALID VALID 0 1 }  { m_axi_cval_BREADY READY 1 1 }  { m_axi_cval_BRESP RESP 0 2 }  { m_axi_cval_BID ID 0 1 }  { m_axi_cval_BUSER DATA 0 1 } } }
}

set maxi_interface_dict [dict create]
dict set maxi_interface_dict acid { CHANNEL_NUM 0 BUNDLE acid NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 READ_WRITE_MODE READ_ONLY}
dict set maxi_interface_dict arcsr { CHANNEL_NUM 0 BUNDLE arcsr NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 READ_WRITE_MODE READ_ONLY}
dict set maxi_interface_dict aval { CHANNEL_NUM 0 BUNDLE aval NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 READ_WRITE_MODE READ_ONLY}
dict set maxi_interface_dict bc1 { CHANNEL_NUM 0 BUNDLE bc1 NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 READ_WRITE_MODE READ_ONLY}
dict set maxi_interface_dict bc2 { CHANNEL_NUM 0 BUNDLE bc2 NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 READ_WRITE_MODE READ_ONLY}
dict set maxi_interface_dict bc3 { CHANNEL_NUM 0 BUNDLE bc3 NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 READ_WRITE_MODE READ_ONLY}
dict set maxi_interface_dict bc4 { CHANNEL_NUM 0 BUNDLE bc4 NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 READ_WRITE_MODE READ_ONLY}
dict set maxi_interface_dict bcid1 { CHANNEL_NUM 0 BUNDLE bcid1 NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 READ_WRITE_MODE READ_ONLY}
dict set maxi_interface_dict bcid2 { CHANNEL_NUM 0 BUNDLE bcid2 NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 READ_WRITE_MODE READ_ONLY}
dict set maxi_interface_dict bcid3 { CHANNEL_NUM 0 BUNDLE bcid3 NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 READ_WRITE_MODE READ_ONLY}
dict set maxi_interface_dict bcid4 { CHANNEL_NUM 0 BUNDLE bcid4 NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 READ_WRITE_MODE READ_ONLY}
dict set maxi_interface_dict brcsr1 { CHANNEL_NUM 0 BUNDLE brcsr1 NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 READ_WRITE_MODE READ_ONLY}
dict set maxi_interface_dict brcsr2 { CHANNEL_NUM 0 BUNDLE brcsr2 NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 READ_WRITE_MODE READ_ONLY}
dict set maxi_interface_dict brcsr3 { CHANNEL_NUM 0 BUNDLE brcsr3 NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 READ_WRITE_MODE READ_ONLY}
dict set maxi_interface_dict brcsr4 { CHANNEL_NUM 0 BUNDLE brcsr4 NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 READ_WRITE_MODE READ_ONLY}
dict set maxi_interface_dict bv1 { CHANNEL_NUM 0 BUNDLE bv1 NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 READ_WRITE_MODE READ_ONLY}
dict set maxi_interface_dict bv2 { CHANNEL_NUM 0 BUNDLE bv2 NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 READ_WRITE_MODE READ_ONLY}
dict set maxi_interface_dict bv3 { CHANNEL_NUM 0 BUNDLE bv3 NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 READ_WRITE_MODE READ_ONLY}
dict set maxi_interface_dict bv4 { CHANNEL_NUM 0 BUNDLE bv4 NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 READ_WRITE_MODE READ_ONLY}
dict set maxi_interface_dict bval1 { CHANNEL_NUM 0 BUNDLE bval1 NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 READ_WRITE_MODE READ_ONLY}
dict set maxi_interface_dict bval2 { CHANNEL_NUM 0 BUNDLE bval2 NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 READ_WRITE_MODE READ_ONLY}
dict set maxi_interface_dict bval3 { CHANNEL_NUM 0 BUNDLE bval3 NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 READ_WRITE_MODE READ_ONLY}
dict set maxi_interface_dict bval4 { CHANNEL_NUM 0 BUNDLE bval4 NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 READ_WRITE_MODE READ_ONLY}
dict set maxi_interface_dict ccid { CHANNEL_NUM 0 BUNDLE ccid NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 READ_WRITE_MODE READ_ONLY}
dict set maxi_interface_dict crcsr { CHANNEL_NUM 0 BUNDLE crcsr NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 READ_WRITE_MODE READ_ONLY}
dict set maxi_interface_dict cval { CHANNEL_NUM 0 BUNDLE cval NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 READ_WRITE_MODE READ_WRITE}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
	{ arcsr 1 }
	{ acid 1 }
	{ aval 1 }
	{ brcsr1 1 }
	{ brcsr2 1 }
	{ brcsr3 1 }
	{ brcsr4 1 }
	{ bval1 1 }
	{ bcid1 1 }
	{ bval2 1 }
	{ bcid2 1 }
	{ bval3 1 }
	{ bcid3 1 }
	{ bval4 1 }
	{ bcid4 1 }
	{ bv1 1 }
	{ bc1 1 }
	{ bv2 1 }
	{ bc2 1 }
	{ bv3 1 }
	{ bc3 1 }
	{ bv4 1 }
	{ bc4 1 }
	{ crcsr 1 }
	{ ccid 1 }
	{ cval 1 }
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
	{ arcsr 1 }
	{ acid 1 }
	{ aval 1 }
	{ brcsr1 1 }
	{ brcsr2 1 }
	{ brcsr3 1 }
	{ brcsr4 1 }
	{ bval1 1 }
	{ bcid1 1 }
	{ bval2 1 }
	{ bcid2 1 }
	{ bval3 1 }
	{ bcid3 1 }
	{ bval4 1 }
	{ bcid4 1 }
	{ bv1 1 }
	{ bc1 1 }
	{ bv2 1 }
	{ bc2 1 }
	{ bv3 1 }
	{ bc3 1 }
	{ bv4 1 }
	{ bc4 1 }
	{ crcsr 1 }
	{ ccid 1 }
	{ cval 1 }
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
