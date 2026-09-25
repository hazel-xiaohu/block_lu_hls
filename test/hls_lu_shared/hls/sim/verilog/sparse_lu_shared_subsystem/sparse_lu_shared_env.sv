//==============================================================
//Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2025.2 (64-bit)
//Tool Version Limit: 2025.11
//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
//
//==============================================================
`ifndef SPARSE_LU_SHARED_ENV__SV                                                                                   
    `define SPARSE_LU_SHARED_ENV__SV                                                                               
                                                                                                                    
                                                                                                                    
    class sparse_lu_shared_env extends uvm_env;                                                                          
                                                                                                                    
        sparse_lu_shared_virtual_sequencer sparse_lu_shared_virtual_sqr;                                                      
        sparse_lu_shared_config sparse_lu_shared_cfg;                                                                         
                                                                                                                    
        axi_pkg::axi_env#(64,4,8,3,1) axi_master_a_row;
        axi_pkg::axi_env#(64,4,8,3,1) axi_master_a_col;
        axi_pkg::axi_env#(64,4,8,3,1) axi_master_a_val;
        axi_pkg::axi_env#(64,4,8,3,1) axi_master_l_row;
        axi_pkg::axi_env#(64,4,8,3,1) axi_master_l_col;
        axi_pkg::axi_env#(64,4,8,3,1) axi_master_l_val;
        axi_pkg::axi_env#(64,4,8,3,1) axi_master_u_row;
        axi_pkg::axi_env#(64,4,8,3,1) axi_master_u_col;
        axi_pkg::axi_env#(64,4,8,3,1) axi_master_u_val;
        axi_pkg::axi_env#(64,4,8,3,1) axi_master_x_row;
        axi_pkg::axi_env#(64,4,8,3,1) axi_master_x_col;
        axi_pkg::axi_env#(64,4,8,3,1) axi_master_x_val;
        axi_pkg::axi_env#(7,4,4,3,1) axi_lite_control;
        axi_pkg::axi_env#(8,4,4,3,1) axi_lite_control_r;
                                                                                                                    
        sparse_lu_shared_reference_model   refm;                                                                         
                                                                                                                    
        sparse_lu_shared_subsystem_monitor subsys_mon;                                                                   
                                                                                                                    
        `uvm_component_utils_begin(sparse_lu_shared_env)                                                                 
        `uvm_field_object (refm, UVM_DEFAULT | UVM_REFERENCE)                                                       
        `uvm_field_object (sparse_lu_shared_virtual_sqr, UVM_DEFAULT | UVM_REFERENCE)                                    
        `uvm_field_object (sparse_lu_shared_cfg        , UVM_DEFAULT)                                                    
        `uvm_component_utils_end                                                                                    
                                                                                                                    
        function new (string name = "sparse_lu_shared_env", uvm_component parent = null);                              
            super.new(name, parent);                                                                                
        endfunction                                                                                                 
                                                                                                                    
        extern virtual function void build_phase(uvm_phase phase);                                                  
        extern virtual function void connect_phase(uvm_phase phase);                                                
        extern virtual task          run_phase(uvm_phase phase);                                                    
                                                                                                                    
    endclass                                                                                                        
                                                                                                                    
    function void sparse_lu_shared_env::build_phase(uvm_phase phase);                                                    
        super.build_phase(phase);                                                                                   
        sparse_lu_shared_cfg = sparse_lu_shared_config::type_id::create("sparse_lu_shared_cfg", this);                           
                                                                                                                    

        sparse_lu_shared_cfg.a_row_cfg.set_default();
        sparse_lu_shared_cfg.a_row_cfg.drv_type = axi_pkg::SLAVE;
        sparse_lu_shared_cfg.a_row_cfg.reset_level = axi_pkg::RESET_LEVEL_LOW;
        sparse_lu_shared_cfg.a_row_cfg.write_latency_mode = TRANSACTION_FIRST;
        sparse_lu_shared_cfg.a_row_cfg.read_latency_mode = TRANSACTION_FIRST;
        uvm_config_db#(axi_pkg::axi_cfg)::set(this, "axi_master_a_row*", "cfg", sparse_lu_shared_cfg.a_row_cfg);
        axi_master_a_row = axi_pkg::axi_env#(64,4,8,3,1)::type_id::create("axi_master_a_row", this);

        sparse_lu_shared_cfg.a_col_cfg.set_default();
        sparse_lu_shared_cfg.a_col_cfg.drv_type = axi_pkg::SLAVE;
        sparse_lu_shared_cfg.a_col_cfg.reset_level = axi_pkg::RESET_LEVEL_LOW;
        sparse_lu_shared_cfg.a_col_cfg.write_latency_mode = TRANSACTION_FIRST;
        sparse_lu_shared_cfg.a_col_cfg.read_latency_mode = TRANSACTION_FIRST;
        uvm_config_db#(axi_pkg::axi_cfg)::set(this, "axi_master_a_col*", "cfg", sparse_lu_shared_cfg.a_col_cfg);
        axi_master_a_col = axi_pkg::axi_env#(64,4,8,3,1)::type_id::create("axi_master_a_col", this);

        sparse_lu_shared_cfg.a_val_cfg.set_default();
        sparse_lu_shared_cfg.a_val_cfg.drv_type = axi_pkg::SLAVE;
        sparse_lu_shared_cfg.a_val_cfg.reset_level = axi_pkg::RESET_LEVEL_LOW;
        sparse_lu_shared_cfg.a_val_cfg.write_latency_mode = TRANSACTION_FIRST;
        sparse_lu_shared_cfg.a_val_cfg.read_latency_mode = TRANSACTION_FIRST;
        uvm_config_db#(axi_pkg::axi_cfg)::set(this, "axi_master_a_val*", "cfg", sparse_lu_shared_cfg.a_val_cfg);
        axi_master_a_val = axi_pkg::axi_env#(64,4,8,3,1)::type_id::create("axi_master_a_val", this);

        sparse_lu_shared_cfg.l_row_cfg.set_default();
        sparse_lu_shared_cfg.l_row_cfg.drv_type = axi_pkg::SLAVE;
        sparse_lu_shared_cfg.l_row_cfg.reset_level = axi_pkg::RESET_LEVEL_LOW;
        sparse_lu_shared_cfg.l_row_cfg.write_latency_mode = TRANSACTION_FIRST;
        sparse_lu_shared_cfg.l_row_cfg.read_latency_mode = TRANSACTION_FIRST;
        uvm_config_db#(axi_pkg::axi_cfg)::set(this, "axi_master_l_row*", "cfg", sparse_lu_shared_cfg.l_row_cfg);
        axi_master_l_row = axi_pkg::axi_env#(64,4,8,3,1)::type_id::create("axi_master_l_row", this);

        sparse_lu_shared_cfg.l_col_cfg.set_default();
        sparse_lu_shared_cfg.l_col_cfg.drv_type = axi_pkg::SLAVE;
        sparse_lu_shared_cfg.l_col_cfg.reset_level = axi_pkg::RESET_LEVEL_LOW;
        sparse_lu_shared_cfg.l_col_cfg.write_latency_mode = TRANSACTION_FIRST;
        sparse_lu_shared_cfg.l_col_cfg.read_latency_mode = TRANSACTION_FIRST;
        uvm_config_db#(axi_pkg::axi_cfg)::set(this, "axi_master_l_col*", "cfg", sparse_lu_shared_cfg.l_col_cfg);
        axi_master_l_col = axi_pkg::axi_env#(64,4,8,3,1)::type_id::create("axi_master_l_col", this);

        sparse_lu_shared_cfg.l_val_cfg.set_default();
        sparse_lu_shared_cfg.l_val_cfg.drv_type = axi_pkg::SLAVE;
        sparse_lu_shared_cfg.l_val_cfg.reset_level = axi_pkg::RESET_LEVEL_LOW;
        sparse_lu_shared_cfg.l_val_cfg.write_latency_mode = TRANSACTION_FIRST;
        sparse_lu_shared_cfg.l_val_cfg.read_latency_mode = TRANSACTION_FIRST;
        uvm_config_db#(axi_pkg::axi_cfg)::set(this, "axi_master_l_val*", "cfg", sparse_lu_shared_cfg.l_val_cfg);
        axi_master_l_val = axi_pkg::axi_env#(64,4,8,3,1)::type_id::create("axi_master_l_val", this);

        sparse_lu_shared_cfg.u_row_cfg.set_default();
        sparse_lu_shared_cfg.u_row_cfg.drv_type = axi_pkg::SLAVE;
        sparse_lu_shared_cfg.u_row_cfg.reset_level = axi_pkg::RESET_LEVEL_LOW;
        sparse_lu_shared_cfg.u_row_cfg.write_latency_mode = TRANSACTION_FIRST;
        sparse_lu_shared_cfg.u_row_cfg.read_latency_mode = TRANSACTION_FIRST;
        uvm_config_db#(axi_pkg::axi_cfg)::set(this, "axi_master_u_row*", "cfg", sparse_lu_shared_cfg.u_row_cfg);
        axi_master_u_row = axi_pkg::axi_env#(64,4,8,3,1)::type_id::create("axi_master_u_row", this);

        sparse_lu_shared_cfg.u_col_cfg.set_default();
        sparse_lu_shared_cfg.u_col_cfg.drv_type = axi_pkg::SLAVE;
        sparse_lu_shared_cfg.u_col_cfg.reset_level = axi_pkg::RESET_LEVEL_LOW;
        sparse_lu_shared_cfg.u_col_cfg.write_latency_mode = TRANSACTION_FIRST;
        sparse_lu_shared_cfg.u_col_cfg.read_latency_mode = TRANSACTION_FIRST;
        uvm_config_db#(axi_pkg::axi_cfg)::set(this, "axi_master_u_col*", "cfg", sparse_lu_shared_cfg.u_col_cfg);
        axi_master_u_col = axi_pkg::axi_env#(64,4,8,3,1)::type_id::create("axi_master_u_col", this);

        sparse_lu_shared_cfg.u_val_cfg.set_default();
        sparse_lu_shared_cfg.u_val_cfg.drv_type = axi_pkg::SLAVE;
        sparse_lu_shared_cfg.u_val_cfg.reset_level = axi_pkg::RESET_LEVEL_LOW;
        sparse_lu_shared_cfg.u_val_cfg.write_latency_mode = TRANSACTION_FIRST;
        sparse_lu_shared_cfg.u_val_cfg.read_latency_mode = TRANSACTION_FIRST;
        uvm_config_db#(axi_pkg::axi_cfg)::set(this, "axi_master_u_val*", "cfg", sparse_lu_shared_cfg.u_val_cfg);
        axi_master_u_val = axi_pkg::axi_env#(64,4,8,3,1)::type_id::create("axi_master_u_val", this);

        sparse_lu_shared_cfg.x_row_cfg.set_default();
        sparse_lu_shared_cfg.x_row_cfg.drv_type = axi_pkg::SLAVE;
        sparse_lu_shared_cfg.x_row_cfg.reset_level = axi_pkg::RESET_LEVEL_LOW;
        sparse_lu_shared_cfg.x_row_cfg.write_latency_mode = TRANSACTION_FIRST;
        sparse_lu_shared_cfg.x_row_cfg.read_latency_mode = TRANSACTION_FIRST;
        uvm_config_db#(axi_pkg::axi_cfg)::set(this, "axi_master_x_row*", "cfg", sparse_lu_shared_cfg.x_row_cfg);
        axi_master_x_row = axi_pkg::axi_env#(64,4,8,3,1)::type_id::create("axi_master_x_row", this);

        sparse_lu_shared_cfg.x_col_cfg.set_default();
        sparse_lu_shared_cfg.x_col_cfg.drv_type = axi_pkg::SLAVE;
        sparse_lu_shared_cfg.x_col_cfg.reset_level = axi_pkg::RESET_LEVEL_LOW;
        sparse_lu_shared_cfg.x_col_cfg.write_latency_mode = TRANSACTION_FIRST;
        sparse_lu_shared_cfg.x_col_cfg.read_latency_mode = TRANSACTION_FIRST;
        uvm_config_db#(axi_pkg::axi_cfg)::set(this, "axi_master_x_col*", "cfg", sparse_lu_shared_cfg.x_col_cfg);
        axi_master_x_col = axi_pkg::axi_env#(64,4,8,3,1)::type_id::create("axi_master_x_col", this);

        sparse_lu_shared_cfg.x_val_cfg.set_default();
        sparse_lu_shared_cfg.x_val_cfg.drv_type = axi_pkg::SLAVE;
        sparse_lu_shared_cfg.x_val_cfg.reset_level = axi_pkg::RESET_LEVEL_LOW;
        sparse_lu_shared_cfg.x_val_cfg.write_latency_mode = TRANSACTION_FIRST;
        sparse_lu_shared_cfg.x_val_cfg.read_latency_mode = TRANSACTION_FIRST;
        uvm_config_db#(axi_pkg::axi_cfg)::set(this, "axi_master_x_val*", "cfg", sparse_lu_shared_cfg.x_val_cfg);
        axi_master_x_val = axi_pkg::axi_env#(64,4,8,3,1)::type_id::create("axi_master_x_val", this);

        sparse_lu_shared_cfg.control_cfg.set_default();
        sparse_lu_shared_cfg.control_cfg.drv_type = axi_pkg::MASTER;
        sparse_lu_shared_cfg.control_cfg.reset_level = axi_pkg::RESET_LEVEL_LOW;
        uvm_config_db#(axi_pkg::axi_cfg)::set(this, "axi_lite_control*", "cfg", sparse_lu_shared_cfg.control_cfg);
        axi_lite_control = axi_pkg::axi_env#(7,4,4,3,1)::type_id::create("axi_lite_control", this);

        sparse_lu_shared_cfg.control_r_cfg.set_default();
        sparse_lu_shared_cfg.control_r_cfg.drv_type = axi_pkg::MASTER;
        sparse_lu_shared_cfg.control_r_cfg.reset_level = axi_pkg::RESET_LEVEL_LOW;
        uvm_config_db#(axi_pkg::axi_cfg)::set(this, "axi_lite_control_r*", "cfg", sparse_lu_shared_cfg.control_r_cfg);
        axi_lite_control_r = axi_pkg::axi_env#(8,4,4,3,1)::type_id::create("axi_lite_control_r", this);



        refm = sparse_lu_shared_reference_model::type_id::create("refm", this);


        uvm_config_db#(sparse_lu_shared_reference_model)::set(this, "*", "refm", refm);


        `uvm_info(this.get_full_name(), "set reference model by uvm_config_db", UVM_LOW)


        subsys_mon = sparse_lu_shared_subsystem_monitor::type_id::create("subsys_mon", this);


        sparse_lu_shared_virtual_sqr = sparse_lu_shared_virtual_sequencer::type_id::create("sparse_lu_shared_virtual_sqr", this);
        `uvm_info(this.get_full_name(), "build_phase done", UVM_LOW)
    endfunction


    function void sparse_lu_shared_env::connect_phase(uvm_phase phase);
        super.connect_phase(phase);


        if(sparse_lu_shared_cfg.a_row_cfg.drv_type==axi_pkg::MASTER ||sparse_lu_shared_cfg.a_row_cfg.drv_type==axi_pkg::SLAVE)
            sparse_lu_shared_virtual_sqr.a_row_sqr = axi_master_a_row.vsqr;
        axi_master_a_row.item_wtr_port.connect(subsys_mon.a_row_wtr_imp);
        axi_master_a_row.item_rtr_port.connect(subsys_mon.a_row_rtr_imp);
        uvm_callbacks#(axi_pkg::axi_state, axi_pkg::axi_state_cbs)::add(axi_master_a_row.state, refm.axi_memaccess_cb_a_row);
        if(sparse_lu_shared_cfg.a_col_cfg.drv_type==axi_pkg::MASTER ||sparse_lu_shared_cfg.a_col_cfg.drv_type==axi_pkg::SLAVE)
            sparse_lu_shared_virtual_sqr.a_col_sqr = axi_master_a_col.vsqr;
        axi_master_a_col.item_wtr_port.connect(subsys_mon.a_col_wtr_imp);
        axi_master_a_col.item_rtr_port.connect(subsys_mon.a_col_rtr_imp);
        uvm_callbacks#(axi_pkg::axi_state, axi_pkg::axi_state_cbs)::add(axi_master_a_col.state, refm.axi_memaccess_cb_a_col);
        if(sparse_lu_shared_cfg.a_val_cfg.drv_type==axi_pkg::MASTER ||sparse_lu_shared_cfg.a_val_cfg.drv_type==axi_pkg::SLAVE)
            sparse_lu_shared_virtual_sqr.a_val_sqr = axi_master_a_val.vsqr;
        axi_master_a_val.item_wtr_port.connect(subsys_mon.a_val_wtr_imp);
        axi_master_a_val.item_rtr_port.connect(subsys_mon.a_val_rtr_imp);
        uvm_callbacks#(axi_pkg::axi_state, axi_pkg::axi_state_cbs)::add(axi_master_a_val.state, refm.axi_memaccess_cb_a_val);
        if(sparse_lu_shared_cfg.l_row_cfg.drv_type==axi_pkg::MASTER ||sparse_lu_shared_cfg.l_row_cfg.drv_type==axi_pkg::SLAVE)
            sparse_lu_shared_virtual_sqr.l_row_sqr = axi_master_l_row.vsqr;
        axi_master_l_row.item_wtr_port.connect(subsys_mon.l_row_wtr_imp);
        axi_master_l_row.item_rtr_port.connect(subsys_mon.l_row_rtr_imp);
        uvm_callbacks#(axi_pkg::axi_state, axi_pkg::axi_state_cbs)::add(axi_master_l_row.state, refm.axi_memaccess_cb_l_row);
        if(sparse_lu_shared_cfg.l_col_cfg.drv_type==axi_pkg::MASTER ||sparse_lu_shared_cfg.l_col_cfg.drv_type==axi_pkg::SLAVE)
            sparse_lu_shared_virtual_sqr.l_col_sqr = axi_master_l_col.vsqr;
        axi_master_l_col.item_wtr_port.connect(subsys_mon.l_col_wtr_imp);
        axi_master_l_col.item_rtr_port.connect(subsys_mon.l_col_rtr_imp);
        uvm_callbacks#(axi_pkg::axi_state, axi_pkg::axi_state_cbs)::add(axi_master_l_col.state, refm.axi_memaccess_cb_l_col);
        if(sparse_lu_shared_cfg.l_val_cfg.drv_type==axi_pkg::MASTER ||sparse_lu_shared_cfg.l_val_cfg.drv_type==axi_pkg::SLAVE)
            sparse_lu_shared_virtual_sqr.l_val_sqr = axi_master_l_val.vsqr;
        axi_master_l_val.item_wtr_port.connect(subsys_mon.l_val_wtr_imp);
        axi_master_l_val.item_rtr_port.connect(subsys_mon.l_val_rtr_imp);
        uvm_callbacks#(axi_pkg::axi_state, axi_pkg::axi_state_cbs)::add(axi_master_l_val.state, refm.axi_memaccess_cb_l_val);
        if(sparse_lu_shared_cfg.u_row_cfg.drv_type==axi_pkg::MASTER ||sparse_lu_shared_cfg.u_row_cfg.drv_type==axi_pkg::SLAVE)
            sparse_lu_shared_virtual_sqr.u_row_sqr = axi_master_u_row.vsqr;
        axi_master_u_row.item_wtr_port.connect(subsys_mon.u_row_wtr_imp);
        axi_master_u_row.item_rtr_port.connect(subsys_mon.u_row_rtr_imp);
        uvm_callbacks#(axi_pkg::axi_state, axi_pkg::axi_state_cbs)::add(axi_master_u_row.state, refm.axi_memaccess_cb_u_row);
        if(sparse_lu_shared_cfg.u_col_cfg.drv_type==axi_pkg::MASTER ||sparse_lu_shared_cfg.u_col_cfg.drv_type==axi_pkg::SLAVE)
            sparse_lu_shared_virtual_sqr.u_col_sqr = axi_master_u_col.vsqr;
        axi_master_u_col.item_wtr_port.connect(subsys_mon.u_col_wtr_imp);
        axi_master_u_col.item_rtr_port.connect(subsys_mon.u_col_rtr_imp);
        uvm_callbacks#(axi_pkg::axi_state, axi_pkg::axi_state_cbs)::add(axi_master_u_col.state, refm.axi_memaccess_cb_u_col);
        if(sparse_lu_shared_cfg.u_val_cfg.drv_type==axi_pkg::MASTER ||sparse_lu_shared_cfg.u_val_cfg.drv_type==axi_pkg::SLAVE)
            sparse_lu_shared_virtual_sqr.u_val_sqr = axi_master_u_val.vsqr;
        axi_master_u_val.item_wtr_port.connect(subsys_mon.u_val_wtr_imp);
        axi_master_u_val.item_rtr_port.connect(subsys_mon.u_val_rtr_imp);
        uvm_callbacks#(axi_pkg::axi_state, axi_pkg::axi_state_cbs)::add(axi_master_u_val.state, refm.axi_memaccess_cb_u_val);
        if(sparse_lu_shared_cfg.x_row_cfg.drv_type==axi_pkg::MASTER ||sparse_lu_shared_cfg.x_row_cfg.drv_type==axi_pkg::SLAVE)
            sparse_lu_shared_virtual_sqr.x_row_sqr = axi_master_x_row.vsqr;
        axi_master_x_row.item_wtr_port.connect(subsys_mon.x_row_wtr_imp);
        axi_master_x_row.item_rtr_port.connect(subsys_mon.x_row_rtr_imp);
        uvm_callbacks#(axi_pkg::axi_state, axi_pkg::axi_state_cbs)::add(axi_master_x_row.state, refm.axi_memaccess_cb_x_row);
        if(sparse_lu_shared_cfg.x_col_cfg.drv_type==axi_pkg::MASTER ||sparse_lu_shared_cfg.x_col_cfg.drv_type==axi_pkg::SLAVE)
            sparse_lu_shared_virtual_sqr.x_col_sqr = axi_master_x_col.vsqr;
        axi_master_x_col.item_wtr_port.connect(subsys_mon.x_col_wtr_imp);
        axi_master_x_col.item_rtr_port.connect(subsys_mon.x_col_rtr_imp);
        uvm_callbacks#(axi_pkg::axi_state, axi_pkg::axi_state_cbs)::add(axi_master_x_col.state, refm.axi_memaccess_cb_x_col);
        if(sparse_lu_shared_cfg.x_val_cfg.drv_type==axi_pkg::MASTER ||sparse_lu_shared_cfg.x_val_cfg.drv_type==axi_pkg::SLAVE)
            sparse_lu_shared_virtual_sqr.x_val_sqr = axi_master_x_val.vsqr;
        axi_master_x_val.item_wtr_port.connect(subsys_mon.x_val_wtr_imp);
        axi_master_x_val.item_rtr_port.connect(subsys_mon.x_val_rtr_imp);
        uvm_callbacks#(axi_pkg::axi_state, axi_pkg::axi_state_cbs)::add(axi_master_x_val.state, refm.axi_memaccess_cb_x_val);
        if(sparse_lu_shared_cfg.control_cfg.drv_type==axi_pkg::MASTER ||sparse_lu_shared_cfg.control_cfg.drv_type==axi_pkg::SLAVE)
            sparse_lu_shared_virtual_sqr.control_sqr = axi_lite_control.vsqr;
        axi_lite_control.item_wtr_port.connect(subsys_mon.control_wtr_imp);
        axi_lite_control.item_rtr_port.connect(subsys_mon.control_rtr_imp);
        if(sparse_lu_shared_cfg.control_r_cfg.drv_type==axi_pkg::MASTER ||sparse_lu_shared_cfg.control_r_cfg.drv_type==axi_pkg::SLAVE)
            sparse_lu_shared_virtual_sqr.control_r_sqr = axi_lite_control_r.vsqr;
        axi_lite_control_r.item_wtr_port.connect(subsys_mon.control_r_wtr_imp);
        axi_lite_control_r.item_rtr_port.connect(subsys_mon.control_r_rtr_imp);
        refm.sparse_lu_shared_cfg = sparse_lu_shared_cfg;
        `uvm_info(this.get_full_name(), "connect phase done", UVM_LOW)
    endfunction


    task sparse_lu_shared_env::run_phase(uvm_phase phase);
        `uvm_info(this.get_full_name(), "sparse_lu_shared_env is running", UVM_LOW)
    endtask


`endif
