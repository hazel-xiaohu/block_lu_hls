//==============================================================
//Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2025.2 (64-bit)
//Tool Version Limit: 2025.11
//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
//
//==============================================================
`ifndef SPMM_ENV__SV                                                                                   
    `define SPMM_ENV__SV                                                                               
                                                                                                                    
                                                                                                                    
    class spmm_env extends uvm_env;                                                                          
                                                                                                                    
        spmm_virtual_sequencer spmm_virtual_sqr;                                                      
        spmm_config spmm_cfg;                                                                         
                                                                                                                    
        axi_pkg::axi_env#(64,4,8,3,1) axi_master_arcsr;
        axi_pkg::axi_env#(64,4,8,3,1) axi_master_acid;
        axi_pkg::axi_env#(64,4,8,3,1) axi_master_aval;
        axi_pkg::axi_env#(64,16,8,3,1) axi_master_brcsr1;
        axi_pkg::axi_env#(64,16,8,3,1) axi_master_brcsr2;
        axi_pkg::axi_env#(64,16,8,3,1) axi_master_brcsr3;
        axi_pkg::axi_env#(64,16,8,3,1) axi_master_brcsr4;
        axi_pkg::axi_env#(64,16,8,3,1) axi_master_bval1;
        axi_pkg::axi_env#(64,16,8,3,1) axi_master_bcid1;
        axi_pkg::axi_env#(64,16,8,3,1) axi_master_bval2;
        axi_pkg::axi_env#(64,16,8,3,1) axi_master_bcid2;
        axi_pkg::axi_env#(64,16,8,3,1) axi_master_bval3;
        axi_pkg::axi_env#(64,16,8,3,1) axi_master_bcid3;
        axi_pkg::axi_env#(64,16,8,3,1) axi_master_bval4;
        axi_pkg::axi_env#(64,16,8,3,1) axi_master_bcid4;
        axi_pkg::axi_env#(64,16,8,3,1) axi_master_bv1;
        axi_pkg::axi_env#(64,16,8,3,1) axi_master_bc1;
        axi_pkg::axi_env#(64,16,8,3,1) axi_master_bv2;
        axi_pkg::axi_env#(64,16,8,3,1) axi_master_bc2;
        axi_pkg::axi_env#(64,16,8,3,1) axi_master_bv3;
        axi_pkg::axi_env#(64,16,8,3,1) axi_master_bc3;
        axi_pkg::axi_env#(64,16,8,3,1) axi_master_bv4;
        axi_pkg::axi_env#(64,16,8,3,1) axi_master_bc4;
        axi_pkg::axi_env#(64,4,8,3,1) axi_master_crcsr;
        axi_pkg::axi_env#(64,4,8,3,1) axi_master_ccid;
        axi_pkg::axi_env#(64,4,8,3,1) axi_master_cval;
        axi_pkg::axi_env#(9,4,4,3,1) axi_lite_control;
        axi_pkg::axi_env#(10,4,4,3,1) axi_lite_ctr;
                                                                                                                    
        spmm_reference_model   refm;                                                                         
                                                                                                                    
        spmm_subsystem_monitor subsys_mon;                                                                   
                                                                                                                    
        `uvm_component_utils_begin(spmm_env)                                                                 
        `uvm_field_object (refm, UVM_DEFAULT | UVM_REFERENCE)                                                       
        `uvm_field_object (spmm_virtual_sqr, UVM_DEFAULT | UVM_REFERENCE)                                    
        `uvm_field_object (spmm_cfg        , UVM_DEFAULT)                                                    
        `uvm_component_utils_end                                                                                    
                                                                                                                    
        function new (string name = "spmm_env", uvm_component parent = null);                              
            super.new(name, parent);                                                                                
        endfunction                                                                                                 
                                                                                                                    
        extern virtual function void build_phase(uvm_phase phase);                                                  
        extern virtual function void connect_phase(uvm_phase phase);                                                
        extern virtual task          run_phase(uvm_phase phase);                                                    
                                                                                                                    
    endclass                                                                                                        
                                                                                                                    
    function void spmm_env::build_phase(uvm_phase phase);                                                    
        super.build_phase(phase);                                                                                   
        spmm_cfg = spmm_config::type_id::create("spmm_cfg", this);                           
                                                                                                                    

        spmm_cfg.arcsr_cfg.set_default();
        spmm_cfg.arcsr_cfg.drv_type = axi_pkg::SLAVE;
        spmm_cfg.arcsr_cfg.reset_level = axi_pkg::RESET_LEVEL_LOW;
        spmm_cfg.arcsr_cfg.write_latency_mode = TRANSACTION_FIRST;
        spmm_cfg.arcsr_cfg.read_latency_mode = TRANSACTION_FIRST;
        uvm_config_db#(axi_pkg::axi_cfg)::set(this, "axi_master_arcsr*", "cfg", spmm_cfg.arcsr_cfg);
        axi_master_arcsr = axi_pkg::axi_env#(64,4,8,3,1)::type_id::create("axi_master_arcsr", this);

        spmm_cfg.acid_cfg.set_default();
        spmm_cfg.acid_cfg.drv_type = axi_pkg::SLAVE;
        spmm_cfg.acid_cfg.reset_level = axi_pkg::RESET_LEVEL_LOW;
        spmm_cfg.acid_cfg.write_latency_mode = TRANSACTION_FIRST;
        spmm_cfg.acid_cfg.read_latency_mode = TRANSACTION_FIRST;
        uvm_config_db#(axi_pkg::axi_cfg)::set(this, "axi_master_acid*", "cfg", spmm_cfg.acid_cfg);
        axi_master_acid = axi_pkg::axi_env#(64,4,8,3,1)::type_id::create("axi_master_acid", this);

        spmm_cfg.aval_cfg.set_default();
        spmm_cfg.aval_cfg.drv_type = axi_pkg::SLAVE;
        spmm_cfg.aval_cfg.reset_level = axi_pkg::RESET_LEVEL_LOW;
        spmm_cfg.aval_cfg.write_latency_mode = TRANSACTION_FIRST;
        spmm_cfg.aval_cfg.read_latency_mode = TRANSACTION_FIRST;
        uvm_config_db#(axi_pkg::axi_cfg)::set(this, "axi_master_aval*", "cfg", spmm_cfg.aval_cfg);
        axi_master_aval = axi_pkg::axi_env#(64,4,8,3,1)::type_id::create("axi_master_aval", this);

        spmm_cfg.brcsr1_cfg.set_default();
        spmm_cfg.brcsr1_cfg.drv_type = axi_pkg::SLAVE;
        spmm_cfg.brcsr1_cfg.reset_level = axi_pkg::RESET_LEVEL_LOW;
        spmm_cfg.brcsr1_cfg.write_latency_mode = TRANSACTION_FIRST;
        spmm_cfg.brcsr1_cfg.read_latency_mode = TRANSACTION_FIRST;
        uvm_config_db#(axi_pkg::axi_cfg)::set(this, "axi_master_brcsr1*", "cfg", spmm_cfg.brcsr1_cfg);
        axi_master_brcsr1 = axi_pkg::axi_env#(64,16,8,3,1)::type_id::create("axi_master_brcsr1", this);

        spmm_cfg.brcsr2_cfg.set_default();
        spmm_cfg.brcsr2_cfg.drv_type = axi_pkg::SLAVE;
        spmm_cfg.brcsr2_cfg.reset_level = axi_pkg::RESET_LEVEL_LOW;
        spmm_cfg.brcsr2_cfg.write_latency_mode = TRANSACTION_FIRST;
        spmm_cfg.brcsr2_cfg.read_latency_mode = TRANSACTION_FIRST;
        uvm_config_db#(axi_pkg::axi_cfg)::set(this, "axi_master_brcsr2*", "cfg", spmm_cfg.brcsr2_cfg);
        axi_master_brcsr2 = axi_pkg::axi_env#(64,16,8,3,1)::type_id::create("axi_master_brcsr2", this);

        spmm_cfg.brcsr3_cfg.set_default();
        spmm_cfg.brcsr3_cfg.drv_type = axi_pkg::SLAVE;
        spmm_cfg.brcsr3_cfg.reset_level = axi_pkg::RESET_LEVEL_LOW;
        spmm_cfg.brcsr3_cfg.write_latency_mode = TRANSACTION_FIRST;
        spmm_cfg.brcsr3_cfg.read_latency_mode = TRANSACTION_FIRST;
        uvm_config_db#(axi_pkg::axi_cfg)::set(this, "axi_master_brcsr3*", "cfg", spmm_cfg.brcsr3_cfg);
        axi_master_brcsr3 = axi_pkg::axi_env#(64,16,8,3,1)::type_id::create("axi_master_brcsr3", this);

        spmm_cfg.brcsr4_cfg.set_default();
        spmm_cfg.brcsr4_cfg.drv_type = axi_pkg::SLAVE;
        spmm_cfg.brcsr4_cfg.reset_level = axi_pkg::RESET_LEVEL_LOW;
        spmm_cfg.brcsr4_cfg.write_latency_mode = TRANSACTION_FIRST;
        spmm_cfg.brcsr4_cfg.read_latency_mode = TRANSACTION_FIRST;
        uvm_config_db#(axi_pkg::axi_cfg)::set(this, "axi_master_brcsr4*", "cfg", spmm_cfg.brcsr4_cfg);
        axi_master_brcsr4 = axi_pkg::axi_env#(64,16,8,3,1)::type_id::create("axi_master_brcsr4", this);

        spmm_cfg.bval1_cfg.set_default();
        spmm_cfg.bval1_cfg.drv_type = axi_pkg::SLAVE;
        spmm_cfg.bval1_cfg.reset_level = axi_pkg::RESET_LEVEL_LOW;
        spmm_cfg.bval1_cfg.write_latency_mode = TRANSACTION_FIRST;
        spmm_cfg.bval1_cfg.read_latency_mode = TRANSACTION_FIRST;
        uvm_config_db#(axi_pkg::axi_cfg)::set(this, "axi_master_bval1*", "cfg", spmm_cfg.bval1_cfg);
        axi_master_bval1 = axi_pkg::axi_env#(64,16,8,3,1)::type_id::create("axi_master_bval1", this);

        spmm_cfg.bcid1_cfg.set_default();
        spmm_cfg.bcid1_cfg.drv_type = axi_pkg::SLAVE;
        spmm_cfg.bcid1_cfg.reset_level = axi_pkg::RESET_LEVEL_LOW;
        spmm_cfg.bcid1_cfg.write_latency_mode = TRANSACTION_FIRST;
        spmm_cfg.bcid1_cfg.read_latency_mode = TRANSACTION_FIRST;
        uvm_config_db#(axi_pkg::axi_cfg)::set(this, "axi_master_bcid1*", "cfg", spmm_cfg.bcid1_cfg);
        axi_master_bcid1 = axi_pkg::axi_env#(64,16,8,3,1)::type_id::create("axi_master_bcid1", this);

        spmm_cfg.bval2_cfg.set_default();
        spmm_cfg.bval2_cfg.drv_type = axi_pkg::SLAVE;
        spmm_cfg.bval2_cfg.reset_level = axi_pkg::RESET_LEVEL_LOW;
        spmm_cfg.bval2_cfg.write_latency_mode = TRANSACTION_FIRST;
        spmm_cfg.bval2_cfg.read_latency_mode = TRANSACTION_FIRST;
        uvm_config_db#(axi_pkg::axi_cfg)::set(this, "axi_master_bval2*", "cfg", spmm_cfg.bval2_cfg);
        axi_master_bval2 = axi_pkg::axi_env#(64,16,8,3,1)::type_id::create("axi_master_bval2", this);

        spmm_cfg.bcid2_cfg.set_default();
        spmm_cfg.bcid2_cfg.drv_type = axi_pkg::SLAVE;
        spmm_cfg.bcid2_cfg.reset_level = axi_pkg::RESET_LEVEL_LOW;
        spmm_cfg.bcid2_cfg.write_latency_mode = TRANSACTION_FIRST;
        spmm_cfg.bcid2_cfg.read_latency_mode = TRANSACTION_FIRST;
        uvm_config_db#(axi_pkg::axi_cfg)::set(this, "axi_master_bcid2*", "cfg", spmm_cfg.bcid2_cfg);
        axi_master_bcid2 = axi_pkg::axi_env#(64,16,8,3,1)::type_id::create("axi_master_bcid2", this);

        spmm_cfg.bval3_cfg.set_default();
        spmm_cfg.bval3_cfg.drv_type = axi_pkg::SLAVE;
        spmm_cfg.bval3_cfg.reset_level = axi_pkg::RESET_LEVEL_LOW;
        spmm_cfg.bval3_cfg.write_latency_mode = TRANSACTION_FIRST;
        spmm_cfg.bval3_cfg.read_latency_mode = TRANSACTION_FIRST;
        uvm_config_db#(axi_pkg::axi_cfg)::set(this, "axi_master_bval3*", "cfg", spmm_cfg.bval3_cfg);
        axi_master_bval3 = axi_pkg::axi_env#(64,16,8,3,1)::type_id::create("axi_master_bval3", this);

        spmm_cfg.bcid3_cfg.set_default();
        spmm_cfg.bcid3_cfg.drv_type = axi_pkg::SLAVE;
        spmm_cfg.bcid3_cfg.reset_level = axi_pkg::RESET_LEVEL_LOW;
        spmm_cfg.bcid3_cfg.write_latency_mode = TRANSACTION_FIRST;
        spmm_cfg.bcid3_cfg.read_latency_mode = TRANSACTION_FIRST;
        uvm_config_db#(axi_pkg::axi_cfg)::set(this, "axi_master_bcid3*", "cfg", spmm_cfg.bcid3_cfg);
        axi_master_bcid3 = axi_pkg::axi_env#(64,16,8,3,1)::type_id::create("axi_master_bcid3", this);

        spmm_cfg.bval4_cfg.set_default();
        spmm_cfg.bval4_cfg.drv_type = axi_pkg::SLAVE;
        spmm_cfg.bval4_cfg.reset_level = axi_pkg::RESET_LEVEL_LOW;
        spmm_cfg.bval4_cfg.write_latency_mode = TRANSACTION_FIRST;
        spmm_cfg.bval4_cfg.read_latency_mode = TRANSACTION_FIRST;
        uvm_config_db#(axi_pkg::axi_cfg)::set(this, "axi_master_bval4*", "cfg", spmm_cfg.bval4_cfg);
        axi_master_bval4 = axi_pkg::axi_env#(64,16,8,3,1)::type_id::create("axi_master_bval4", this);

        spmm_cfg.bcid4_cfg.set_default();
        spmm_cfg.bcid4_cfg.drv_type = axi_pkg::SLAVE;
        spmm_cfg.bcid4_cfg.reset_level = axi_pkg::RESET_LEVEL_LOW;
        spmm_cfg.bcid4_cfg.write_latency_mode = TRANSACTION_FIRST;
        spmm_cfg.bcid4_cfg.read_latency_mode = TRANSACTION_FIRST;
        uvm_config_db#(axi_pkg::axi_cfg)::set(this, "axi_master_bcid4*", "cfg", spmm_cfg.bcid4_cfg);
        axi_master_bcid4 = axi_pkg::axi_env#(64,16,8,3,1)::type_id::create("axi_master_bcid4", this);

        spmm_cfg.bv1_cfg.set_default();
        spmm_cfg.bv1_cfg.drv_type = axi_pkg::SLAVE;
        spmm_cfg.bv1_cfg.reset_level = axi_pkg::RESET_LEVEL_LOW;
        spmm_cfg.bv1_cfg.write_latency_mode = TRANSACTION_FIRST;
        spmm_cfg.bv1_cfg.read_latency_mode = TRANSACTION_FIRST;
        uvm_config_db#(axi_pkg::axi_cfg)::set(this, "axi_master_bv1*", "cfg", spmm_cfg.bv1_cfg);
        axi_master_bv1 = axi_pkg::axi_env#(64,16,8,3,1)::type_id::create("axi_master_bv1", this);

        spmm_cfg.bc1_cfg.set_default();
        spmm_cfg.bc1_cfg.drv_type = axi_pkg::SLAVE;
        spmm_cfg.bc1_cfg.reset_level = axi_pkg::RESET_LEVEL_LOW;
        spmm_cfg.bc1_cfg.write_latency_mode = TRANSACTION_FIRST;
        spmm_cfg.bc1_cfg.read_latency_mode = TRANSACTION_FIRST;
        uvm_config_db#(axi_pkg::axi_cfg)::set(this, "axi_master_bc1*", "cfg", spmm_cfg.bc1_cfg);
        axi_master_bc1 = axi_pkg::axi_env#(64,16,8,3,1)::type_id::create("axi_master_bc1", this);

        spmm_cfg.bv2_cfg.set_default();
        spmm_cfg.bv2_cfg.drv_type = axi_pkg::SLAVE;
        spmm_cfg.bv2_cfg.reset_level = axi_pkg::RESET_LEVEL_LOW;
        spmm_cfg.bv2_cfg.write_latency_mode = TRANSACTION_FIRST;
        spmm_cfg.bv2_cfg.read_latency_mode = TRANSACTION_FIRST;
        uvm_config_db#(axi_pkg::axi_cfg)::set(this, "axi_master_bv2*", "cfg", spmm_cfg.bv2_cfg);
        axi_master_bv2 = axi_pkg::axi_env#(64,16,8,3,1)::type_id::create("axi_master_bv2", this);

        spmm_cfg.bc2_cfg.set_default();
        spmm_cfg.bc2_cfg.drv_type = axi_pkg::SLAVE;
        spmm_cfg.bc2_cfg.reset_level = axi_pkg::RESET_LEVEL_LOW;
        spmm_cfg.bc2_cfg.write_latency_mode = TRANSACTION_FIRST;
        spmm_cfg.bc2_cfg.read_latency_mode = TRANSACTION_FIRST;
        uvm_config_db#(axi_pkg::axi_cfg)::set(this, "axi_master_bc2*", "cfg", spmm_cfg.bc2_cfg);
        axi_master_bc2 = axi_pkg::axi_env#(64,16,8,3,1)::type_id::create("axi_master_bc2", this);

        spmm_cfg.bv3_cfg.set_default();
        spmm_cfg.bv3_cfg.drv_type = axi_pkg::SLAVE;
        spmm_cfg.bv3_cfg.reset_level = axi_pkg::RESET_LEVEL_LOW;
        spmm_cfg.bv3_cfg.write_latency_mode = TRANSACTION_FIRST;
        spmm_cfg.bv3_cfg.read_latency_mode = TRANSACTION_FIRST;
        uvm_config_db#(axi_pkg::axi_cfg)::set(this, "axi_master_bv3*", "cfg", spmm_cfg.bv3_cfg);
        axi_master_bv3 = axi_pkg::axi_env#(64,16,8,3,1)::type_id::create("axi_master_bv3", this);

        spmm_cfg.bc3_cfg.set_default();
        spmm_cfg.bc3_cfg.drv_type = axi_pkg::SLAVE;
        spmm_cfg.bc3_cfg.reset_level = axi_pkg::RESET_LEVEL_LOW;
        spmm_cfg.bc3_cfg.write_latency_mode = TRANSACTION_FIRST;
        spmm_cfg.bc3_cfg.read_latency_mode = TRANSACTION_FIRST;
        uvm_config_db#(axi_pkg::axi_cfg)::set(this, "axi_master_bc3*", "cfg", spmm_cfg.bc3_cfg);
        axi_master_bc3 = axi_pkg::axi_env#(64,16,8,3,1)::type_id::create("axi_master_bc3", this);

        spmm_cfg.bv4_cfg.set_default();
        spmm_cfg.bv4_cfg.drv_type = axi_pkg::SLAVE;
        spmm_cfg.bv4_cfg.reset_level = axi_pkg::RESET_LEVEL_LOW;
        spmm_cfg.bv4_cfg.write_latency_mode = TRANSACTION_FIRST;
        spmm_cfg.bv4_cfg.read_latency_mode = TRANSACTION_FIRST;
        uvm_config_db#(axi_pkg::axi_cfg)::set(this, "axi_master_bv4*", "cfg", spmm_cfg.bv4_cfg);
        axi_master_bv4 = axi_pkg::axi_env#(64,16,8,3,1)::type_id::create("axi_master_bv4", this);

        spmm_cfg.bc4_cfg.set_default();
        spmm_cfg.bc4_cfg.drv_type = axi_pkg::SLAVE;
        spmm_cfg.bc4_cfg.reset_level = axi_pkg::RESET_LEVEL_LOW;
        spmm_cfg.bc4_cfg.write_latency_mode = TRANSACTION_FIRST;
        spmm_cfg.bc4_cfg.read_latency_mode = TRANSACTION_FIRST;
        uvm_config_db#(axi_pkg::axi_cfg)::set(this, "axi_master_bc4*", "cfg", spmm_cfg.bc4_cfg);
        axi_master_bc4 = axi_pkg::axi_env#(64,16,8,3,1)::type_id::create("axi_master_bc4", this);

        spmm_cfg.crcsr_cfg.set_default();
        spmm_cfg.crcsr_cfg.drv_type = axi_pkg::SLAVE;
        spmm_cfg.crcsr_cfg.reset_level = axi_pkg::RESET_LEVEL_LOW;
        spmm_cfg.crcsr_cfg.write_latency_mode = TRANSACTION_FIRST;
        spmm_cfg.crcsr_cfg.read_latency_mode = TRANSACTION_FIRST;
        uvm_config_db#(axi_pkg::axi_cfg)::set(this, "axi_master_crcsr*", "cfg", spmm_cfg.crcsr_cfg);
        axi_master_crcsr = axi_pkg::axi_env#(64,4,8,3,1)::type_id::create("axi_master_crcsr", this);

        spmm_cfg.ccid_cfg.set_default();
        spmm_cfg.ccid_cfg.drv_type = axi_pkg::SLAVE;
        spmm_cfg.ccid_cfg.reset_level = axi_pkg::RESET_LEVEL_LOW;
        spmm_cfg.ccid_cfg.write_latency_mode = TRANSACTION_FIRST;
        spmm_cfg.ccid_cfg.read_latency_mode = TRANSACTION_FIRST;
        uvm_config_db#(axi_pkg::axi_cfg)::set(this, "axi_master_ccid*", "cfg", spmm_cfg.ccid_cfg);
        axi_master_ccid = axi_pkg::axi_env#(64,4,8,3,1)::type_id::create("axi_master_ccid", this);

        spmm_cfg.cval_cfg.set_default();
        spmm_cfg.cval_cfg.drv_type = axi_pkg::SLAVE;
        spmm_cfg.cval_cfg.reset_level = axi_pkg::RESET_LEVEL_LOW;
        spmm_cfg.cval_cfg.write_latency_mode = TRANSACTION_FIRST;
        spmm_cfg.cval_cfg.read_latency_mode = TRANSACTION_FIRST;
        uvm_config_db#(axi_pkg::axi_cfg)::set(this, "axi_master_cval*", "cfg", spmm_cfg.cval_cfg);
        axi_master_cval = axi_pkg::axi_env#(64,4,8,3,1)::type_id::create("axi_master_cval", this);

        spmm_cfg.control_cfg.set_default();
        spmm_cfg.control_cfg.drv_type = axi_pkg::MASTER;
        spmm_cfg.control_cfg.reset_level = axi_pkg::RESET_LEVEL_LOW;
        uvm_config_db#(axi_pkg::axi_cfg)::set(this, "axi_lite_control*", "cfg", spmm_cfg.control_cfg);
        axi_lite_control = axi_pkg::axi_env#(9,4,4,3,1)::type_id::create("axi_lite_control", this);

        spmm_cfg.ctr_cfg.set_default();
        spmm_cfg.ctr_cfg.drv_type = axi_pkg::MASTER;
        spmm_cfg.ctr_cfg.reset_level = axi_pkg::RESET_LEVEL_LOW;
        uvm_config_db#(axi_pkg::axi_cfg)::set(this, "axi_lite_ctr*", "cfg", spmm_cfg.ctr_cfg);
        axi_lite_ctr = axi_pkg::axi_env#(10,4,4,3,1)::type_id::create("axi_lite_ctr", this);



        refm = spmm_reference_model::type_id::create("refm", this);


        uvm_config_db#(spmm_reference_model)::set(this, "*", "refm", refm);


        `uvm_info(this.get_full_name(), "set reference model by uvm_config_db", UVM_LOW)


        subsys_mon = spmm_subsystem_monitor::type_id::create("subsys_mon", this);


        spmm_virtual_sqr = spmm_virtual_sequencer::type_id::create("spmm_virtual_sqr", this);
        `uvm_info(this.get_full_name(), "build_phase done", UVM_LOW)
    endfunction


    function void spmm_env::connect_phase(uvm_phase phase);
        super.connect_phase(phase);


        if(spmm_cfg.arcsr_cfg.drv_type==axi_pkg::MASTER ||spmm_cfg.arcsr_cfg.drv_type==axi_pkg::SLAVE)
            spmm_virtual_sqr.arcsr_sqr = axi_master_arcsr.vsqr;
        axi_master_arcsr.item_wtr_port.connect(subsys_mon.arcsr_wtr_imp);
        axi_master_arcsr.item_rtr_port.connect(subsys_mon.arcsr_rtr_imp);
        uvm_callbacks#(axi_pkg::axi_state, axi_pkg::axi_state_cbs)::add(axi_master_arcsr.state, refm.axi_memaccess_cb_arcsr);
        if(spmm_cfg.acid_cfg.drv_type==axi_pkg::MASTER ||spmm_cfg.acid_cfg.drv_type==axi_pkg::SLAVE)
            spmm_virtual_sqr.acid_sqr = axi_master_acid.vsqr;
        axi_master_acid.item_wtr_port.connect(subsys_mon.acid_wtr_imp);
        axi_master_acid.item_rtr_port.connect(subsys_mon.acid_rtr_imp);
        uvm_callbacks#(axi_pkg::axi_state, axi_pkg::axi_state_cbs)::add(axi_master_acid.state, refm.axi_memaccess_cb_acid);
        if(spmm_cfg.aval_cfg.drv_type==axi_pkg::MASTER ||spmm_cfg.aval_cfg.drv_type==axi_pkg::SLAVE)
            spmm_virtual_sqr.aval_sqr = axi_master_aval.vsqr;
        axi_master_aval.item_wtr_port.connect(subsys_mon.aval_wtr_imp);
        axi_master_aval.item_rtr_port.connect(subsys_mon.aval_rtr_imp);
        uvm_callbacks#(axi_pkg::axi_state, axi_pkg::axi_state_cbs)::add(axi_master_aval.state, refm.axi_memaccess_cb_aval);
        if(spmm_cfg.brcsr1_cfg.drv_type==axi_pkg::MASTER ||spmm_cfg.brcsr1_cfg.drv_type==axi_pkg::SLAVE)
            spmm_virtual_sqr.brcsr1_sqr = axi_master_brcsr1.vsqr;
        axi_master_brcsr1.item_wtr_port.connect(subsys_mon.brcsr1_wtr_imp);
        axi_master_brcsr1.item_rtr_port.connect(subsys_mon.brcsr1_rtr_imp);
        uvm_callbacks#(axi_pkg::axi_state, axi_pkg::axi_state_cbs)::add(axi_master_brcsr1.state, refm.axi_memaccess_cb_brcsr1);
        if(spmm_cfg.brcsr2_cfg.drv_type==axi_pkg::MASTER ||spmm_cfg.brcsr2_cfg.drv_type==axi_pkg::SLAVE)
            spmm_virtual_sqr.brcsr2_sqr = axi_master_brcsr2.vsqr;
        axi_master_brcsr2.item_wtr_port.connect(subsys_mon.brcsr2_wtr_imp);
        axi_master_brcsr2.item_rtr_port.connect(subsys_mon.brcsr2_rtr_imp);
        uvm_callbacks#(axi_pkg::axi_state, axi_pkg::axi_state_cbs)::add(axi_master_brcsr2.state, refm.axi_memaccess_cb_brcsr2);
        if(spmm_cfg.brcsr3_cfg.drv_type==axi_pkg::MASTER ||spmm_cfg.brcsr3_cfg.drv_type==axi_pkg::SLAVE)
            spmm_virtual_sqr.brcsr3_sqr = axi_master_brcsr3.vsqr;
        axi_master_brcsr3.item_wtr_port.connect(subsys_mon.brcsr3_wtr_imp);
        axi_master_brcsr3.item_rtr_port.connect(subsys_mon.brcsr3_rtr_imp);
        uvm_callbacks#(axi_pkg::axi_state, axi_pkg::axi_state_cbs)::add(axi_master_brcsr3.state, refm.axi_memaccess_cb_brcsr3);
        if(spmm_cfg.brcsr4_cfg.drv_type==axi_pkg::MASTER ||spmm_cfg.brcsr4_cfg.drv_type==axi_pkg::SLAVE)
            spmm_virtual_sqr.brcsr4_sqr = axi_master_brcsr4.vsqr;
        axi_master_brcsr4.item_wtr_port.connect(subsys_mon.brcsr4_wtr_imp);
        axi_master_brcsr4.item_rtr_port.connect(subsys_mon.brcsr4_rtr_imp);
        uvm_callbacks#(axi_pkg::axi_state, axi_pkg::axi_state_cbs)::add(axi_master_brcsr4.state, refm.axi_memaccess_cb_brcsr4);
        if(spmm_cfg.bval1_cfg.drv_type==axi_pkg::MASTER ||spmm_cfg.bval1_cfg.drv_type==axi_pkg::SLAVE)
            spmm_virtual_sqr.bval1_sqr = axi_master_bval1.vsqr;
        axi_master_bval1.item_wtr_port.connect(subsys_mon.bval1_wtr_imp);
        axi_master_bval1.item_rtr_port.connect(subsys_mon.bval1_rtr_imp);
        uvm_callbacks#(axi_pkg::axi_state, axi_pkg::axi_state_cbs)::add(axi_master_bval1.state, refm.axi_memaccess_cb_bval1);
        if(spmm_cfg.bcid1_cfg.drv_type==axi_pkg::MASTER ||spmm_cfg.bcid1_cfg.drv_type==axi_pkg::SLAVE)
            spmm_virtual_sqr.bcid1_sqr = axi_master_bcid1.vsqr;
        axi_master_bcid1.item_wtr_port.connect(subsys_mon.bcid1_wtr_imp);
        axi_master_bcid1.item_rtr_port.connect(subsys_mon.bcid1_rtr_imp);
        uvm_callbacks#(axi_pkg::axi_state, axi_pkg::axi_state_cbs)::add(axi_master_bcid1.state, refm.axi_memaccess_cb_bcid1);
        if(spmm_cfg.bval2_cfg.drv_type==axi_pkg::MASTER ||spmm_cfg.bval2_cfg.drv_type==axi_pkg::SLAVE)
            spmm_virtual_sqr.bval2_sqr = axi_master_bval2.vsqr;
        axi_master_bval2.item_wtr_port.connect(subsys_mon.bval2_wtr_imp);
        axi_master_bval2.item_rtr_port.connect(subsys_mon.bval2_rtr_imp);
        uvm_callbacks#(axi_pkg::axi_state, axi_pkg::axi_state_cbs)::add(axi_master_bval2.state, refm.axi_memaccess_cb_bval2);
        if(spmm_cfg.bcid2_cfg.drv_type==axi_pkg::MASTER ||spmm_cfg.bcid2_cfg.drv_type==axi_pkg::SLAVE)
            spmm_virtual_sqr.bcid2_sqr = axi_master_bcid2.vsqr;
        axi_master_bcid2.item_wtr_port.connect(subsys_mon.bcid2_wtr_imp);
        axi_master_bcid2.item_rtr_port.connect(subsys_mon.bcid2_rtr_imp);
        uvm_callbacks#(axi_pkg::axi_state, axi_pkg::axi_state_cbs)::add(axi_master_bcid2.state, refm.axi_memaccess_cb_bcid2);
        if(spmm_cfg.bval3_cfg.drv_type==axi_pkg::MASTER ||spmm_cfg.bval3_cfg.drv_type==axi_pkg::SLAVE)
            spmm_virtual_sqr.bval3_sqr = axi_master_bval3.vsqr;
        axi_master_bval3.item_wtr_port.connect(subsys_mon.bval3_wtr_imp);
        axi_master_bval3.item_rtr_port.connect(subsys_mon.bval3_rtr_imp);
        uvm_callbacks#(axi_pkg::axi_state, axi_pkg::axi_state_cbs)::add(axi_master_bval3.state, refm.axi_memaccess_cb_bval3);
        if(spmm_cfg.bcid3_cfg.drv_type==axi_pkg::MASTER ||spmm_cfg.bcid3_cfg.drv_type==axi_pkg::SLAVE)
            spmm_virtual_sqr.bcid3_sqr = axi_master_bcid3.vsqr;
        axi_master_bcid3.item_wtr_port.connect(subsys_mon.bcid3_wtr_imp);
        axi_master_bcid3.item_rtr_port.connect(subsys_mon.bcid3_rtr_imp);
        uvm_callbacks#(axi_pkg::axi_state, axi_pkg::axi_state_cbs)::add(axi_master_bcid3.state, refm.axi_memaccess_cb_bcid3);
        if(spmm_cfg.bval4_cfg.drv_type==axi_pkg::MASTER ||spmm_cfg.bval4_cfg.drv_type==axi_pkg::SLAVE)
            spmm_virtual_sqr.bval4_sqr = axi_master_bval4.vsqr;
        axi_master_bval4.item_wtr_port.connect(subsys_mon.bval4_wtr_imp);
        axi_master_bval4.item_rtr_port.connect(subsys_mon.bval4_rtr_imp);
        uvm_callbacks#(axi_pkg::axi_state, axi_pkg::axi_state_cbs)::add(axi_master_bval4.state, refm.axi_memaccess_cb_bval4);
        if(spmm_cfg.bcid4_cfg.drv_type==axi_pkg::MASTER ||spmm_cfg.bcid4_cfg.drv_type==axi_pkg::SLAVE)
            spmm_virtual_sqr.bcid4_sqr = axi_master_bcid4.vsqr;
        axi_master_bcid4.item_wtr_port.connect(subsys_mon.bcid4_wtr_imp);
        axi_master_bcid4.item_rtr_port.connect(subsys_mon.bcid4_rtr_imp);
        uvm_callbacks#(axi_pkg::axi_state, axi_pkg::axi_state_cbs)::add(axi_master_bcid4.state, refm.axi_memaccess_cb_bcid4);
        if(spmm_cfg.bv1_cfg.drv_type==axi_pkg::MASTER ||spmm_cfg.bv1_cfg.drv_type==axi_pkg::SLAVE)
            spmm_virtual_sqr.bv1_sqr = axi_master_bv1.vsqr;
        axi_master_bv1.item_wtr_port.connect(subsys_mon.bv1_wtr_imp);
        axi_master_bv1.item_rtr_port.connect(subsys_mon.bv1_rtr_imp);
        uvm_callbacks#(axi_pkg::axi_state, axi_pkg::axi_state_cbs)::add(axi_master_bv1.state, refm.axi_memaccess_cb_bv1);
        if(spmm_cfg.bc1_cfg.drv_type==axi_pkg::MASTER ||spmm_cfg.bc1_cfg.drv_type==axi_pkg::SLAVE)
            spmm_virtual_sqr.bc1_sqr = axi_master_bc1.vsqr;
        axi_master_bc1.item_wtr_port.connect(subsys_mon.bc1_wtr_imp);
        axi_master_bc1.item_rtr_port.connect(subsys_mon.bc1_rtr_imp);
        uvm_callbacks#(axi_pkg::axi_state, axi_pkg::axi_state_cbs)::add(axi_master_bc1.state, refm.axi_memaccess_cb_bc1);
        if(spmm_cfg.bv2_cfg.drv_type==axi_pkg::MASTER ||spmm_cfg.bv2_cfg.drv_type==axi_pkg::SLAVE)
            spmm_virtual_sqr.bv2_sqr = axi_master_bv2.vsqr;
        axi_master_bv2.item_wtr_port.connect(subsys_mon.bv2_wtr_imp);
        axi_master_bv2.item_rtr_port.connect(subsys_mon.bv2_rtr_imp);
        uvm_callbacks#(axi_pkg::axi_state, axi_pkg::axi_state_cbs)::add(axi_master_bv2.state, refm.axi_memaccess_cb_bv2);
        if(spmm_cfg.bc2_cfg.drv_type==axi_pkg::MASTER ||spmm_cfg.bc2_cfg.drv_type==axi_pkg::SLAVE)
            spmm_virtual_sqr.bc2_sqr = axi_master_bc2.vsqr;
        axi_master_bc2.item_wtr_port.connect(subsys_mon.bc2_wtr_imp);
        axi_master_bc2.item_rtr_port.connect(subsys_mon.bc2_rtr_imp);
        uvm_callbacks#(axi_pkg::axi_state, axi_pkg::axi_state_cbs)::add(axi_master_bc2.state, refm.axi_memaccess_cb_bc2);
        if(spmm_cfg.bv3_cfg.drv_type==axi_pkg::MASTER ||spmm_cfg.bv3_cfg.drv_type==axi_pkg::SLAVE)
            spmm_virtual_sqr.bv3_sqr = axi_master_bv3.vsqr;
        axi_master_bv3.item_wtr_port.connect(subsys_mon.bv3_wtr_imp);
        axi_master_bv3.item_rtr_port.connect(subsys_mon.bv3_rtr_imp);
        uvm_callbacks#(axi_pkg::axi_state, axi_pkg::axi_state_cbs)::add(axi_master_bv3.state, refm.axi_memaccess_cb_bv3);
        if(spmm_cfg.bc3_cfg.drv_type==axi_pkg::MASTER ||spmm_cfg.bc3_cfg.drv_type==axi_pkg::SLAVE)
            spmm_virtual_sqr.bc3_sqr = axi_master_bc3.vsqr;
        axi_master_bc3.item_wtr_port.connect(subsys_mon.bc3_wtr_imp);
        axi_master_bc3.item_rtr_port.connect(subsys_mon.bc3_rtr_imp);
        uvm_callbacks#(axi_pkg::axi_state, axi_pkg::axi_state_cbs)::add(axi_master_bc3.state, refm.axi_memaccess_cb_bc3);
        if(spmm_cfg.bv4_cfg.drv_type==axi_pkg::MASTER ||spmm_cfg.bv4_cfg.drv_type==axi_pkg::SLAVE)
            spmm_virtual_sqr.bv4_sqr = axi_master_bv4.vsqr;
        axi_master_bv4.item_wtr_port.connect(subsys_mon.bv4_wtr_imp);
        axi_master_bv4.item_rtr_port.connect(subsys_mon.bv4_rtr_imp);
        uvm_callbacks#(axi_pkg::axi_state, axi_pkg::axi_state_cbs)::add(axi_master_bv4.state, refm.axi_memaccess_cb_bv4);
        if(spmm_cfg.bc4_cfg.drv_type==axi_pkg::MASTER ||spmm_cfg.bc4_cfg.drv_type==axi_pkg::SLAVE)
            spmm_virtual_sqr.bc4_sqr = axi_master_bc4.vsqr;
        axi_master_bc4.item_wtr_port.connect(subsys_mon.bc4_wtr_imp);
        axi_master_bc4.item_rtr_port.connect(subsys_mon.bc4_rtr_imp);
        uvm_callbacks#(axi_pkg::axi_state, axi_pkg::axi_state_cbs)::add(axi_master_bc4.state, refm.axi_memaccess_cb_bc4);
        if(spmm_cfg.crcsr_cfg.drv_type==axi_pkg::MASTER ||spmm_cfg.crcsr_cfg.drv_type==axi_pkg::SLAVE)
            spmm_virtual_sqr.crcsr_sqr = axi_master_crcsr.vsqr;
        axi_master_crcsr.item_wtr_port.connect(subsys_mon.crcsr_wtr_imp);
        axi_master_crcsr.item_rtr_port.connect(subsys_mon.crcsr_rtr_imp);
        uvm_callbacks#(axi_pkg::axi_state, axi_pkg::axi_state_cbs)::add(axi_master_crcsr.state, refm.axi_memaccess_cb_crcsr);
        if(spmm_cfg.ccid_cfg.drv_type==axi_pkg::MASTER ||spmm_cfg.ccid_cfg.drv_type==axi_pkg::SLAVE)
            spmm_virtual_sqr.ccid_sqr = axi_master_ccid.vsqr;
        axi_master_ccid.item_wtr_port.connect(subsys_mon.ccid_wtr_imp);
        axi_master_ccid.item_rtr_port.connect(subsys_mon.ccid_rtr_imp);
        uvm_callbacks#(axi_pkg::axi_state, axi_pkg::axi_state_cbs)::add(axi_master_ccid.state, refm.axi_memaccess_cb_ccid);
        if(spmm_cfg.cval_cfg.drv_type==axi_pkg::MASTER ||spmm_cfg.cval_cfg.drv_type==axi_pkg::SLAVE)
            spmm_virtual_sqr.cval_sqr = axi_master_cval.vsqr;
        axi_master_cval.item_wtr_port.connect(subsys_mon.cval_wtr_imp);
        axi_master_cval.item_rtr_port.connect(subsys_mon.cval_rtr_imp);
        uvm_callbacks#(axi_pkg::axi_state, axi_pkg::axi_state_cbs)::add(axi_master_cval.state, refm.axi_memaccess_cb_cval);
        if(spmm_cfg.control_cfg.drv_type==axi_pkg::MASTER ||spmm_cfg.control_cfg.drv_type==axi_pkg::SLAVE)
            spmm_virtual_sqr.control_sqr = axi_lite_control.vsqr;
        axi_lite_control.item_wtr_port.connect(subsys_mon.control_wtr_imp);
        axi_lite_control.item_rtr_port.connect(subsys_mon.control_rtr_imp);
        if(spmm_cfg.ctr_cfg.drv_type==axi_pkg::MASTER ||spmm_cfg.ctr_cfg.drv_type==axi_pkg::SLAVE)
            spmm_virtual_sqr.ctr_sqr = axi_lite_ctr.vsqr;
        axi_lite_ctr.item_wtr_port.connect(subsys_mon.ctr_wtr_imp);
        axi_lite_ctr.item_rtr_port.connect(subsys_mon.ctr_rtr_imp);
        refm.spmm_cfg = spmm_cfg;
        `uvm_info(this.get_full_name(), "connect phase done", UVM_LOW)
    endfunction


    task spmm_env::run_phase(uvm_phase phase);
        `uvm_info(this.get_full_name(), "spmm_env is running", UVM_LOW)
    endtask


`endif
