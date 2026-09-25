//==============================================================
//Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2025.2 (64-bit)
//Tool Version Limit: 2025.11
//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
//
//==============================================================
`ifndef SPMM_SUBSYS_TEST_SEQUENCE_LIB__SV                                              
    `define SPMM_SUBSYS_TEST_SEQUENCE_LIB__SV                                          
                                                                                                    
                                                                                                    
    `include "uvm_macros.svh"                                                                     
                                                                                                    
    class spmm_subsys_test_sequence_lib extends uvm_sequence;                                
                                                                                                    
        function new (string name = "spmm_subsys_test_sequence_lib");                      
            super.new(name);                                                                        
            `uvm_info(this.get_full_name(), "new is called", UVM_LOW)                             
        endfunction                                                                                 
                                                                                                    
        `uvm_object_utils(spmm_subsys_test_sequence_lib)                                     
        `uvm_declare_p_sequencer(spmm_virtual_sequencer)                                     
                                                                                                    
        virtual task body();                                                                        
            uvm_phase starting_phase;                                                               
            virtual interface misc_interface misc_if;                                               
            spmm_reference_model refm;                                                       
                                                                                                    
            axi_pkg::axi_slave_sequence#(64,4,8,3,1) axi_slave_arcsr_seq;
            axi_pkg::axi_slave_sequence#(64,4,8,3,1) axi_slave_acid_seq;
            axi_pkg::axi_slave_sequence#(64,4,8,3,1) axi_slave_aval_seq;
            axi_pkg::axi_slave_sequence#(64,16,8,3,1) axi_slave_brcsr1_seq;
            axi_pkg::axi_slave_sequence#(64,16,8,3,1) axi_slave_brcsr2_seq;
            axi_pkg::axi_slave_sequence#(64,16,8,3,1) axi_slave_brcsr3_seq;
            axi_pkg::axi_slave_sequence#(64,16,8,3,1) axi_slave_brcsr4_seq;
            axi_pkg::axi_slave_sequence#(64,16,8,3,1) axi_slave_bval1_seq;
            axi_pkg::axi_slave_sequence#(64,16,8,3,1) axi_slave_bcid1_seq;
            axi_pkg::axi_slave_sequence#(64,16,8,3,1) axi_slave_bval2_seq;
            axi_pkg::axi_slave_sequence#(64,16,8,3,1) axi_slave_bcid2_seq;
            axi_pkg::axi_slave_sequence#(64,16,8,3,1) axi_slave_bval3_seq;
            axi_pkg::axi_slave_sequence#(64,16,8,3,1) axi_slave_bcid3_seq;
            axi_pkg::axi_slave_sequence#(64,16,8,3,1) axi_slave_bval4_seq;
            axi_pkg::axi_slave_sequence#(64,16,8,3,1) axi_slave_bcid4_seq;
            axi_pkg::axi_slave_sequence#(64,16,8,3,1) axi_slave_bv1_seq;
            axi_pkg::axi_slave_sequence#(64,16,8,3,1) axi_slave_bc1_seq;
            axi_pkg::axi_slave_sequence#(64,16,8,3,1) axi_slave_bv2_seq;
            axi_pkg::axi_slave_sequence#(64,16,8,3,1) axi_slave_bc2_seq;
            axi_pkg::axi_slave_sequence#(64,16,8,3,1) axi_slave_bv3_seq;
            axi_pkg::axi_slave_sequence#(64,16,8,3,1) axi_slave_bc3_seq;
            axi_pkg::axi_slave_sequence#(64,16,8,3,1) axi_slave_bv4_seq;
            axi_pkg::axi_slave_sequence#(64,16,8,3,1) axi_slave_bc4_seq;
            axi_pkg::axi_slave_sequence#(64,4,8,3,1) axi_slave_crcsr_seq;
            axi_pkg::axi_slave_sequence#(64,4,8,3,1) axi_slave_ccid_seq;
            axi_pkg::axi_slave_sequence#(64,4,8,3,1) axi_slave_cval_seq;
            axi_pkg::axi_busdatas_master_sequence#(9, 32) axi_master_wr_control_seq;
            axi_pkg::axi_busdatas_master_sequence#(10, 32) axi_master_wr_ctr_seq;
            axi_pkg::axi_busdatas_master_sequence#(10, 32) axi_master_rd_ctr_seq;
            axi_pkg::axi_busdatas_master_sequence#(10, 32) axi_master_poll_ctr_seq;

            if (!uvm_config_db#(spmm_reference_model)::get(p_sequencer,"", "refm", refm))
                `uvm_fatal(this.get_full_name(), "No reference model")
            `uvm_info(this.get_full_name(), "get reference model by uvm_config_db", UVM_LOW)

            `uvm_info(this.get_full_name(), "body is called", UVM_LOW)
            starting_phase = this.get_starting_phase();
            if (starting_phase != null) begin
                `uvm_info(this.get_full_name(), "starting_phase not null", UVM_LOW)
                starting_phase.raise_objection(this);
            end
            else
                `uvm_info(this.get_full_name(), "starting_phase null" , UVM_LOW)

            misc_if = refm.misc_if;


            //phase_done.set_drain_time(this, 0ns);
            wait(refm.misc_if.reset === 1);
            ->refm.misc_if.initialed_evt;

            fork
                begin
                    fork
                        begin //axi slave sequence. loop delays
                            `uvm_create_on(axi_slave_arcsr_seq, p_sequencer.arcsr_sqr);
                            axi_slave_arcsr_seq.misc_if = refm.misc_if;
                            axi_slave_arcsr_seq.ap_done    = refm.ap_done_for_nexttrans   ;
                            axi_slave_arcsr_seq.ap_ready   = refm.ap_ready_for_nexttrans  ;
                            axi_slave_arcsr_seq.finish     = refm.finish ;
                            axi_slave_arcsr_seq.isusr_delay = axi_pkg::NO_DELAY;
                            `uvm_send(axi_slave_arcsr_seq);
                        end
                        begin //axi slave sequence. loop delays
                            `uvm_create_on(axi_slave_acid_seq, p_sequencer.acid_sqr);
                            axi_slave_acid_seq.misc_if = refm.misc_if;
                            axi_slave_acid_seq.ap_done    = refm.ap_done_for_nexttrans   ;
                            axi_slave_acid_seq.ap_ready   = refm.ap_ready_for_nexttrans  ;
                            axi_slave_acid_seq.finish     = refm.finish ;
                            axi_slave_acid_seq.isusr_delay = axi_pkg::NO_DELAY;
                            `uvm_send(axi_slave_acid_seq);
                        end
                        begin //axi slave sequence. loop delays
                            `uvm_create_on(axi_slave_aval_seq, p_sequencer.aval_sqr);
                            axi_slave_aval_seq.misc_if = refm.misc_if;
                            axi_slave_aval_seq.ap_done    = refm.ap_done_for_nexttrans   ;
                            axi_slave_aval_seq.ap_ready   = refm.ap_ready_for_nexttrans  ;
                            axi_slave_aval_seq.finish     = refm.finish ;
                            axi_slave_aval_seq.isusr_delay = axi_pkg::NO_DELAY;
                            `uvm_send(axi_slave_aval_seq);
                        end
                        begin //axi slave sequence. loop delays
                            `uvm_create_on(axi_slave_brcsr1_seq, p_sequencer.brcsr1_sqr);
                            axi_slave_brcsr1_seq.misc_if = refm.misc_if;
                            axi_slave_brcsr1_seq.ap_done    = refm.ap_done_for_nexttrans   ;
                            axi_slave_brcsr1_seq.ap_ready   = refm.ap_ready_for_nexttrans  ;
                            axi_slave_brcsr1_seq.finish     = refm.finish ;
                            axi_slave_brcsr1_seq.isusr_delay = axi_pkg::NO_DELAY;
                            `uvm_send(axi_slave_brcsr1_seq);
                        end
                        begin //axi slave sequence. loop delays
                            `uvm_create_on(axi_slave_brcsr2_seq, p_sequencer.brcsr2_sqr);
                            axi_slave_brcsr2_seq.misc_if = refm.misc_if;
                            axi_slave_brcsr2_seq.ap_done    = refm.ap_done_for_nexttrans   ;
                            axi_slave_brcsr2_seq.ap_ready   = refm.ap_ready_for_nexttrans  ;
                            axi_slave_brcsr2_seq.finish     = refm.finish ;
                            axi_slave_brcsr2_seq.isusr_delay = axi_pkg::NO_DELAY;
                            `uvm_send(axi_slave_brcsr2_seq);
                        end
                        begin //axi slave sequence. loop delays
                            `uvm_create_on(axi_slave_brcsr3_seq, p_sequencer.brcsr3_sqr);
                            axi_slave_brcsr3_seq.misc_if = refm.misc_if;
                            axi_slave_brcsr3_seq.ap_done    = refm.ap_done_for_nexttrans   ;
                            axi_slave_brcsr3_seq.ap_ready   = refm.ap_ready_for_nexttrans  ;
                            axi_slave_brcsr3_seq.finish     = refm.finish ;
                            axi_slave_brcsr3_seq.isusr_delay = axi_pkg::NO_DELAY;
                            `uvm_send(axi_slave_brcsr3_seq);
                        end
                        begin //axi slave sequence. loop delays
                            `uvm_create_on(axi_slave_brcsr4_seq, p_sequencer.brcsr4_sqr);
                            axi_slave_brcsr4_seq.misc_if = refm.misc_if;
                            axi_slave_brcsr4_seq.ap_done    = refm.ap_done_for_nexttrans   ;
                            axi_slave_brcsr4_seq.ap_ready   = refm.ap_ready_for_nexttrans  ;
                            axi_slave_brcsr4_seq.finish     = refm.finish ;
                            axi_slave_brcsr4_seq.isusr_delay = axi_pkg::NO_DELAY;
                            `uvm_send(axi_slave_brcsr4_seq);
                        end
                        begin //axi slave sequence. loop delays
                            `uvm_create_on(axi_slave_bval1_seq, p_sequencer.bval1_sqr);
                            axi_slave_bval1_seq.misc_if = refm.misc_if;
                            axi_slave_bval1_seq.ap_done    = refm.ap_done_for_nexttrans   ;
                            axi_slave_bval1_seq.ap_ready   = refm.ap_ready_for_nexttrans  ;
                            axi_slave_bval1_seq.finish     = refm.finish ;
                            axi_slave_bval1_seq.isusr_delay = axi_pkg::NO_DELAY;
                            `uvm_send(axi_slave_bval1_seq);
                        end
                        begin //axi slave sequence. loop delays
                            `uvm_create_on(axi_slave_bcid1_seq, p_sequencer.bcid1_sqr);
                            axi_slave_bcid1_seq.misc_if = refm.misc_if;
                            axi_slave_bcid1_seq.ap_done    = refm.ap_done_for_nexttrans   ;
                            axi_slave_bcid1_seq.ap_ready   = refm.ap_ready_for_nexttrans  ;
                            axi_slave_bcid1_seq.finish     = refm.finish ;
                            axi_slave_bcid1_seq.isusr_delay = axi_pkg::NO_DELAY;
                            `uvm_send(axi_slave_bcid1_seq);
                        end
                        begin //axi slave sequence. loop delays
                            `uvm_create_on(axi_slave_bval2_seq, p_sequencer.bval2_sqr);
                            axi_slave_bval2_seq.misc_if = refm.misc_if;
                            axi_slave_bval2_seq.ap_done    = refm.ap_done_for_nexttrans   ;
                            axi_slave_bval2_seq.ap_ready   = refm.ap_ready_for_nexttrans  ;
                            axi_slave_bval2_seq.finish     = refm.finish ;
                            axi_slave_bval2_seq.isusr_delay = axi_pkg::NO_DELAY;
                            `uvm_send(axi_slave_bval2_seq);
                        end
                        begin //axi slave sequence. loop delays
                            `uvm_create_on(axi_slave_bcid2_seq, p_sequencer.bcid2_sqr);
                            axi_slave_bcid2_seq.misc_if = refm.misc_if;
                            axi_slave_bcid2_seq.ap_done    = refm.ap_done_for_nexttrans   ;
                            axi_slave_bcid2_seq.ap_ready   = refm.ap_ready_for_nexttrans  ;
                            axi_slave_bcid2_seq.finish     = refm.finish ;
                            axi_slave_bcid2_seq.isusr_delay = axi_pkg::NO_DELAY;
                            `uvm_send(axi_slave_bcid2_seq);
                        end
                        begin //axi slave sequence. loop delays
                            `uvm_create_on(axi_slave_bval3_seq, p_sequencer.bval3_sqr);
                            axi_slave_bval3_seq.misc_if = refm.misc_if;
                            axi_slave_bval3_seq.ap_done    = refm.ap_done_for_nexttrans   ;
                            axi_slave_bval3_seq.ap_ready   = refm.ap_ready_for_nexttrans  ;
                            axi_slave_bval3_seq.finish     = refm.finish ;
                            axi_slave_bval3_seq.isusr_delay = axi_pkg::NO_DELAY;
                            `uvm_send(axi_slave_bval3_seq);
                        end
                        begin //axi slave sequence. loop delays
                            `uvm_create_on(axi_slave_bcid3_seq, p_sequencer.bcid3_sqr);
                            axi_slave_bcid3_seq.misc_if = refm.misc_if;
                            axi_slave_bcid3_seq.ap_done    = refm.ap_done_for_nexttrans   ;
                            axi_slave_bcid3_seq.ap_ready   = refm.ap_ready_for_nexttrans  ;
                            axi_slave_bcid3_seq.finish     = refm.finish ;
                            axi_slave_bcid3_seq.isusr_delay = axi_pkg::NO_DELAY;
                            `uvm_send(axi_slave_bcid3_seq);
                        end
                        begin //axi slave sequence. loop delays
                            `uvm_create_on(axi_slave_bval4_seq, p_sequencer.bval4_sqr);
                            axi_slave_bval4_seq.misc_if = refm.misc_if;
                            axi_slave_bval4_seq.ap_done    = refm.ap_done_for_nexttrans   ;
                            axi_slave_bval4_seq.ap_ready   = refm.ap_ready_for_nexttrans  ;
                            axi_slave_bval4_seq.finish     = refm.finish ;
                            axi_slave_bval4_seq.isusr_delay = axi_pkg::NO_DELAY;
                            `uvm_send(axi_slave_bval4_seq);
                        end
                        begin //axi slave sequence. loop delays
                            `uvm_create_on(axi_slave_bcid4_seq, p_sequencer.bcid4_sqr);
                            axi_slave_bcid4_seq.misc_if = refm.misc_if;
                            axi_slave_bcid4_seq.ap_done    = refm.ap_done_for_nexttrans   ;
                            axi_slave_bcid4_seq.ap_ready   = refm.ap_ready_for_nexttrans  ;
                            axi_slave_bcid4_seq.finish     = refm.finish ;
                            axi_slave_bcid4_seq.isusr_delay = axi_pkg::NO_DELAY;
                            `uvm_send(axi_slave_bcid4_seq);
                        end
                        begin //axi slave sequence. loop delays
                            `uvm_create_on(axi_slave_bv1_seq, p_sequencer.bv1_sqr);
                            axi_slave_bv1_seq.misc_if = refm.misc_if;
                            axi_slave_bv1_seq.ap_done    = refm.ap_done_for_nexttrans   ;
                            axi_slave_bv1_seq.ap_ready   = refm.ap_ready_for_nexttrans  ;
                            axi_slave_bv1_seq.finish     = refm.finish ;
                            axi_slave_bv1_seq.isusr_delay = axi_pkg::NO_DELAY;
                            `uvm_send(axi_slave_bv1_seq);
                        end
                        begin //axi slave sequence. loop delays
                            `uvm_create_on(axi_slave_bc1_seq, p_sequencer.bc1_sqr);
                            axi_slave_bc1_seq.misc_if = refm.misc_if;
                            axi_slave_bc1_seq.ap_done    = refm.ap_done_for_nexttrans   ;
                            axi_slave_bc1_seq.ap_ready   = refm.ap_ready_for_nexttrans  ;
                            axi_slave_bc1_seq.finish     = refm.finish ;
                            axi_slave_bc1_seq.isusr_delay = axi_pkg::NO_DELAY;
                            `uvm_send(axi_slave_bc1_seq);
                        end
                        begin //axi slave sequence. loop delays
                            `uvm_create_on(axi_slave_bv2_seq, p_sequencer.bv2_sqr);
                            axi_slave_bv2_seq.misc_if = refm.misc_if;
                            axi_slave_bv2_seq.ap_done    = refm.ap_done_for_nexttrans   ;
                            axi_slave_bv2_seq.ap_ready   = refm.ap_ready_for_nexttrans  ;
                            axi_slave_bv2_seq.finish     = refm.finish ;
                            axi_slave_bv2_seq.isusr_delay = axi_pkg::NO_DELAY;
                            `uvm_send(axi_slave_bv2_seq);
                        end
                        begin //axi slave sequence. loop delays
                            `uvm_create_on(axi_slave_bc2_seq, p_sequencer.bc2_sqr);
                            axi_slave_bc2_seq.misc_if = refm.misc_if;
                            axi_slave_bc2_seq.ap_done    = refm.ap_done_for_nexttrans   ;
                            axi_slave_bc2_seq.ap_ready   = refm.ap_ready_for_nexttrans  ;
                            axi_slave_bc2_seq.finish     = refm.finish ;
                            axi_slave_bc2_seq.isusr_delay = axi_pkg::NO_DELAY;
                            `uvm_send(axi_slave_bc2_seq);
                        end
                        begin //axi slave sequence. loop delays
                            `uvm_create_on(axi_slave_bv3_seq, p_sequencer.bv3_sqr);
                            axi_slave_bv3_seq.misc_if = refm.misc_if;
                            axi_slave_bv3_seq.ap_done    = refm.ap_done_for_nexttrans   ;
                            axi_slave_bv3_seq.ap_ready   = refm.ap_ready_for_nexttrans  ;
                            axi_slave_bv3_seq.finish     = refm.finish ;
                            axi_slave_bv3_seq.isusr_delay = axi_pkg::NO_DELAY;
                            `uvm_send(axi_slave_bv3_seq);
                        end
                        begin //axi slave sequence. loop delays
                            `uvm_create_on(axi_slave_bc3_seq, p_sequencer.bc3_sqr);
                            axi_slave_bc3_seq.misc_if = refm.misc_if;
                            axi_slave_bc3_seq.ap_done    = refm.ap_done_for_nexttrans   ;
                            axi_slave_bc3_seq.ap_ready   = refm.ap_ready_for_nexttrans  ;
                            axi_slave_bc3_seq.finish     = refm.finish ;
                            axi_slave_bc3_seq.isusr_delay = axi_pkg::NO_DELAY;
                            `uvm_send(axi_slave_bc3_seq);
                        end
                        begin //axi slave sequence. loop delays
                            `uvm_create_on(axi_slave_bv4_seq, p_sequencer.bv4_sqr);
                            axi_slave_bv4_seq.misc_if = refm.misc_if;
                            axi_slave_bv4_seq.ap_done    = refm.ap_done_for_nexttrans   ;
                            axi_slave_bv4_seq.ap_ready   = refm.ap_ready_for_nexttrans  ;
                            axi_slave_bv4_seq.finish     = refm.finish ;
                            axi_slave_bv4_seq.isusr_delay = axi_pkg::NO_DELAY;
                            `uvm_send(axi_slave_bv4_seq);
                        end
                        begin //axi slave sequence. loop delays
                            `uvm_create_on(axi_slave_bc4_seq, p_sequencer.bc4_sqr);
                            axi_slave_bc4_seq.misc_if = refm.misc_if;
                            axi_slave_bc4_seq.ap_done    = refm.ap_done_for_nexttrans   ;
                            axi_slave_bc4_seq.ap_ready   = refm.ap_ready_for_nexttrans  ;
                            axi_slave_bc4_seq.finish     = refm.finish ;
                            axi_slave_bc4_seq.isusr_delay = axi_pkg::NO_DELAY;
                            `uvm_send(axi_slave_bc4_seq);
                        end
                        begin //axi slave sequence. loop delays
                            `uvm_create_on(axi_slave_crcsr_seq, p_sequencer.crcsr_sqr);
                            axi_slave_crcsr_seq.misc_if = refm.misc_if;
                            axi_slave_crcsr_seq.ap_done    = refm.ap_done_for_nexttrans   ;
                            axi_slave_crcsr_seq.ap_ready   = refm.ap_ready_for_nexttrans  ;
                            axi_slave_crcsr_seq.finish     = refm.finish ;
                            axi_slave_crcsr_seq.isusr_delay = axi_pkg::NO_DELAY;
                            `uvm_send(axi_slave_crcsr_seq);
                        end
                        begin //axi slave sequence. loop delays
                            `uvm_create_on(axi_slave_ccid_seq, p_sequencer.ccid_sqr);
                            axi_slave_ccid_seq.misc_if = refm.misc_if;
                            axi_slave_ccid_seq.ap_done    = refm.ap_done_for_nexttrans   ;
                            axi_slave_ccid_seq.ap_ready   = refm.ap_ready_for_nexttrans  ;
                            axi_slave_ccid_seq.finish     = refm.finish ;
                            axi_slave_ccid_seq.isusr_delay = axi_pkg::NO_DELAY;
                            `uvm_send(axi_slave_ccid_seq);
                        end
                        begin //axi slave sequence. loop delays
                            `uvm_create_on(axi_slave_cval_seq, p_sequencer.cval_sqr);
                            axi_slave_cval_seq.misc_if = refm.misc_if;
                            axi_slave_cval_seq.ap_done    = refm.ap_done_for_nexttrans   ;
                            axi_slave_cval_seq.ap_ready   = refm.ap_ready_for_nexttrans  ;
                            axi_slave_cval_seq.finish     = refm.finish ;
                            axi_slave_cval_seq.isusr_delay = axi_pkg::NO_DELAY;
                            `uvm_send(axi_slave_cval_seq);
                        end
                        begin
                            int control_page_idx_bak;
                            `uvm_create_on(axi_master_wr_control_seq, p_sequencer.control_sqr);
                            axi_master_wr_control_seq.misc_if = refm.misc_if;
                            axi_master_wr_control_seq.ap_done    = refm.ap_done_for_nexttrans   ;
                            axi_master_wr_control_seq.ap_ready   = refm.ap_ready_for_nexttrans  ;
                            axi_master_wr_control_seq.finish     = refm.finish ;
                            axi_master_wr_control_seq.isusr_delay = axi_pkg::NO_DELAY;
                            for(int i=0; i<1; i++) begin
                                logic[63:0] data64bit_A_rcsr[$];
                                logic[32-1:0] databusbit_A_rcsr[$];
                                logic[63:0] data64bit_A_cid[$];
                                logic[32-1:0] databusbit_A_cid[$];
                                logic[63:0] data64bit_A_val[$];
                                logic[32-1:0] databusbit_A_val[$];
                                logic[63:0] data64bit_B_rcsr1[$];
                                logic[32-1:0] databusbit_B_rcsr1[$];
                                logic[63:0] data64bit_B_rcsr2[$];
                                logic[32-1:0] databusbit_B_rcsr2[$];
                                logic[63:0] data64bit_B_rcsr3[$];
                                logic[32-1:0] databusbit_B_rcsr3[$];
                                logic[63:0] data64bit_B_rcsr4[$];
                                logic[32-1:0] databusbit_B_rcsr4[$];
                                logic[63:0] data64bit_B_val1[$];
                                logic[32-1:0] databusbit_B_val1[$];
                                logic[63:0] data64bit_B_cid1[$];
                                logic[32-1:0] databusbit_B_cid1[$];
                                logic[63:0] data64bit_B_val2[$];
                                logic[32-1:0] databusbit_B_val2[$];
                                logic[63:0] data64bit_B_cid2[$];
                                logic[32-1:0] databusbit_B_cid2[$];
                                logic[63:0] data64bit_B_val3[$];
                                logic[32-1:0] databusbit_B_val3[$];
                                logic[63:0] data64bit_B_cid3[$];
                                logic[32-1:0] databusbit_B_cid3[$];
                                logic[63:0] data64bit_B_val4[$];
                                logic[32-1:0] databusbit_B_val4[$];
                                logic[63:0] data64bit_B_cid4[$];
                                logic[32-1:0] databusbit_B_cid4[$];
                                logic[63:0] data64bit_B_val_port1[$];
                                logic[32-1:0] databusbit_B_val_port1[$];
                                logic[63:0] data64bit_B_cid_port1[$];
                                logic[32-1:0] databusbit_B_cid_port1[$];
                                logic[63:0] data64bit_B_val_port2[$];
                                logic[32-1:0] databusbit_B_val_port2[$];
                                logic[63:0] data64bit_B_cid_port2[$];
                                logic[32-1:0] databusbit_B_cid_port2[$];
                                logic[63:0] data64bit_B_val_port3[$];
                                logic[32-1:0] databusbit_B_val_port3[$];
                                logic[63:0] data64bit_B_cid_port3[$];
                                logic[32-1:0] databusbit_B_cid_port3[$];
                                logic[63:0] data64bit_B_val_port4[$];
                                logic[32-1:0] databusbit_B_val_port4[$];
                                logic[63:0] data64bit_B_cid_port4[$];
                                logic[32-1:0] databusbit_B_cid_port4[$];
                                logic[63:0] data64bit_C_rcsr[$];
                                logic[32-1:0] databusbit_C_rcsr[$];
                                logic[63:0] data64bit_C_cid[$];
                                logic[32-1:0] databusbit_C_cid[$];
                                logic[63:0] data64bit_C_val[$];
                                logic[32-1:0] databusbit_C_val[$];
                                data64bit_A_rcsr.delete(); databusbit_A_rcsr.delete();
                                axi_master_wr_control_seq.StableAxiliteNoUpdate=0;
                                for(int j=0; j < (64+32-1)/32; j++) begin
                                    data64bit_A_rcsr.push_back( ((refm.mem_blk_pages_arcsr.maxi_bundlevar_offset["A_rcsr"]+refm.mem_blk_pages_arcsr.page_ofst[refm.mem_blk_pages_arcsr.rd_page_idx])>>(j*32)) & (2**32-1) );
                                end
                                foreach(data64bit_A_rcsr[s]) databusbit_A_rcsr[s]=data64bit_A_rcsr[s][32-1:0];
                                axi_master_wr_control_seq.StableAxiliteNoUpdate=1;
                                axi_master_wr_control_seq.datamerge_inavg(databusbit_A_rcsr, 0, 16, 1);
                                data64bit_A_cid.delete(); databusbit_A_cid.delete();
                                axi_master_wr_control_seq.StableAxiliteNoUpdate=0;
                                for(int j=0; j < (64+32-1)/32; j++) begin
                                    data64bit_A_cid.push_back( ((refm.mem_blk_pages_acid.maxi_bundlevar_offset["A_cid"]+refm.mem_blk_pages_acid.page_ofst[refm.mem_blk_pages_acid.rd_page_idx])>>(j*32)) & (2**32-1) );
                                end
                                foreach(data64bit_A_cid[s]) databusbit_A_cid[s]=data64bit_A_cid[s][32-1:0];
                                axi_master_wr_control_seq.StableAxiliteNoUpdate=1;
                                axi_master_wr_control_seq.datamerge_inavg(databusbit_A_cid, 0, 28, 1);
                                data64bit_A_val.delete(); databusbit_A_val.delete();
                                axi_master_wr_control_seq.StableAxiliteNoUpdate=0;
                                for(int j=0; j < (64+32-1)/32; j++) begin
                                    data64bit_A_val.push_back( ((refm.mem_blk_pages_aval.maxi_bundlevar_offset["A_val"]+refm.mem_blk_pages_aval.page_ofst[refm.mem_blk_pages_aval.rd_page_idx])>>(j*32)) & (2**32-1) );
                                end
                                foreach(data64bit_A_val[s]) databusbit_A_val[s]=data64bit_A_val[s][32-1:0];
                                axi_master_wr_control_seq.StableAxiliteNoUpdate=1;
                                axi_master_wr_control_seq.datamerge_inavg(databusbit_A_val, 0, 40, 1);
                                data64bit_B_rcsr1.delete(); databusbit_B_rcsr1.delete();
                                axi_master_wr_control_seq.StableAxiliteNoUpdate=0;
                                for(int j=0; j < (64+32-1)/32; j++) begin
                                    data64bit_B_rcsr1.push_back( ((refm.mem_blk_pages_brcsr1.maxi_bundlevar_offset["B_rcsr1"]+refm.mem_blk_pages_brcsr1.page_ofst[refm.mem_blk_pages_brcsr1.rd_page_idx])>>(j*32)) & (2**32-1) );
                                end
                                foreach(data64bit_B_rcsr1[s]) databusbit_B_rcsr1[s]=data64bit_B_rcsr1[s][32-1:0];
                                axi_master_wr_control_seq.StableAxiliteNoUpdate=1;
                                axi_master_wr_control_seq.datamerge_inavg(databusbit_B_rcsr1, 0, 52, 1);
                                data64bit_B_rcsr2.delete(); databusbit_B_rcsr2.delete();
                                axi_master_wr_control_seq.StableAxiliteNoUpdate=0;
                                for(int j=0; j < (64+32-1)/32; j++) begin
                                    data64bit_B_rcsr2.push_back( ((refm.mem_blk_pages_brcsr2.maxi_bundlevar_offset["B_rcsr2"]+refm.mem_blk_pages_brcsr2.page_ofst[refm.mem_blk_pages_brcsr2.rd_page_idx])>>(j*32)) & (2**32-1) );
                                end
                                foreach(data64bit_B_rcsr2[s]) databusbit_B_rcsr2[s]=data64bit_B_rcsr2[s][32-1:0];
                                axi_master_wr_control_seq.StableAxiliteNoUpdate=1;
                                axi_master_wr_control_seq.datamerge_inavg(databusbit_B_rcsr2, 0, 64, 1);
                                data64bit_B_rcsr3.delete(); databusbit_B_rcsr3.delete();
                                axi_master_wr_control_seq.StableAxiliteNoUpdate=0;
                                for(int j=0; j < (64+32-1)/32; j++) begin
                                    data64bit_B_rcsr3.push_back( ((refm.mem_blk_pages_brcsr3.maxi_bundlevar_offset["B_rcsr3"]+refm.mem_blk_pages_brcsr3.page_ofst[refm.mem_blk_pages_brcsr3.rd_page_idx])>>(j*32)) & (2**32-1) );
                                end
                                foreach(data64bit_B_rcsr3[s]) databusbit_B_rcsr3[s]=data64bit_B_rcsr3[s][32-1:0];
                                axi_master_wr_control_seq.StableAxiliteNoUpdate=1;
                                axi_master_wr_control_seq.datamerge_inavg(databusbit_B_rcsr3, 0, 76, 1);
                                data64bit_B_rcsr4.delete(); databusbit_B_rcsr4.delete();
                                axi_master_wr_control_seq.StableAxiliteNoUpdate=0;
                                for(int j=0; j < (64+32-1)/32; j++) begin
                                    data64bit_B_rcsr4.push_back( ((refm.mem_blk_pages_brcsr4.maxi_bundlevar_offset["B_rcsr4"]+refm.mem_blk_pages_brcsr4.page_ofst[refm.mem_blk_pages_brcsr4.rd_page_idx])>>(j*32)) & (2**32-1) );
                                end
                                foreach(data64bit_B_rcsr4[s]) databusbit_B_rcsr4[s]=data64bit_B_rcsr4[s][32-1:0];
                                axi_master_wr_control_seq.StableAxiliteNoUpdate=1;
                                axi_master_wr_control_seq.datamerge_inavg(databusbit_B_rcsr4, 0, 88, 1);
                                data64bit_B_val1.delete(); databusbit_B_val1.delete();
                                axi_master_wr_control_seq.StableAxiliteNoUpdate=0;
                                for(int j=0; j < (64+32-1)/32; j++) begin
                                    data64bit_B_val1.push_back( ((refm.mem_blk_pages_bval1.maxi_bundlevar_offset["B_val1"]+refm.mem_blk_pages_bval1.page_ofst[refm.mem_blk_pages_bval1.rd_page_idx])>>(j*32)) & (2**32-1) );
                                end
                                foreach(data64bit_B_val1[s]) databusbit_B_val1[s]=data64bit_B_val1[s][32-1:0];
                                axi_master_wr_control_seq.StableAxiliteNoUpdate=1;
                                axi_master_wr_control_seq.datamerge_inavg(databusbit_B_val1, 0, 100, 1);
                                data64bit_B_cid1.delete(); databusbit_B_cid1.delete();
                                axi_master_wr_control_seq.StableAxiliteNoUpdate=0;
                                for(int j=0; j < (64+32-1)/32; j++) begin
                                    data64bit_B_cid1.push_back( ((refm.mem_blk_pages_bcid1.maxi_bundlevar_offset["B_cid1"]+refm.mem_blk_pages_bcid1.page_ofst[refm.mem_blk_pages_bcid1.rd_page_idx])>>(j*32)) & (2**32-1) );
                                end
                                foreach(data64bit_B_cid1[s]) databusbit_B_cid1[s]=data64bit_B_cid1[s][32-1:0];
                                axi_master_wr_control_seq.StableAxiliteNoUpdate=1;
                                axi_master_wr_control_seq.datamerge_inavg(databusbit_B_cid1, 0, 112, 1);
                                data64bit_B_val2.delete(); databusbit_B_val2.delete();
                                axi_master_wr_control_seq.StableAxiliteNoUpdate=0;
                                for(int j=0; j < (64+32-1)/32; j++) begin
                                    data64bit_B_val2.push_back( ((refm.mem_blk_pages_bval2.maxi_bundlevar_offset["B_val2"]+refm.mem_blk_pages_bval2.page_ofst[refm.mem_blk_pages_bval2.rd_page_idx])>>(j*32)) & (2**32-1) );
                                end
                                foreach(data64bit_B_val2[s]) databusbit_B_val2[s]=data64bit_B_val2[s][32-1:0];
                                axi_master_wr_control_seq.StableAxiliteNoUpdate=1;
                                axi_master_wr_control_seq.datamerge_inavg(databusbit_B_val2, 0, 124, 1);
                                data64bit_B_cid2.delete(); databusbit_B_cid2.delete();
                                axi_master_wr_control_seq.StableAxiliteNoUpdate=0;
                                for(int j=0; j < (64+32-1)/32; j++) begin
                                    data64bit_B_cid2.push_back( ((refm.mem_blk_pages_bcid2.maxi_bundlevar_offset["B_cid2"]+refm.mem_blk_pages_bcid2.page_ofst[refm.mem_blk_pages_bcid2.rd_page_idx])>>(j*32)) & (2**32-1) );
                                end
                                foreach(data64bit_B_cid2[s]) databusbit_B_cid2[s]=data64bit_B_cid2[s][32-1:0];
                                axi_master_wr_control_seq.StableAxiliteNoUpdate=1;
                                axi_master_wr_control_seq.datamerge_inavg(databusbit_B_cid2, 0, 136, 1);
                                data64bit_B_val3.delete(); databusbit_B_val3.delete();
                                axi_master_wr_control_seq.StableAxiliteNoUpdate=0;
                                for(int j=0; j < (64+32-1)/32; j++) begin
                                    data64bit_B_val3.push_back( ((refm.mem_blk_pages_bval3.maxi_bundlevar_offset["B_val3"]+refm.mem_blk_pages_bval3.page_ofst[refm.mem_blk_pages_bval3.rd_page_idx])>>(j*32)) & (2**32-1) );
                                end
                                foreach(data64bit_B_val3[s]) databusbit_B_val3[s]=data64bit_B_val3[s][32-1:0];
                                axi_master_wr_control_seq.StableAxiliteNoUpdate=1;
                                axi_master_wr_control_seq.datamerge_inavg(databusbit_B_val3, 0, 148, 1);
                                data64bit_B_cid3.delete(); databusbit_B_cid3.delete();
                                axi_master_wr_control_seq.StableAxiliteNoUpdate=0;
                                for(int j=0; j < (64+32-1)/32; j++) begin
                                    data64bit_B_cid3.push_back( ((refm.mem_blk_pages_bcid3.maxi_bundlevar_offset["B_cid3"]+refm.mem_blk_pages_bcid3.page_ofst[refm.mem_blk_pages_bcid3.rd_page_idx])>>(j*32)) & (2**32-1) );
                                end
                                foreach(data64bit_B_cid3[s]) databusbit_B_cid3[s]=data64bit_B_cid3[s][32-1:0];
                                axi_master_wr_control_seq.StableAxiliteNoUpdate=1;
                                axi_master_wr_control_seq.datamerge_inavg(databusbit_B_cid3, 0, 160, 1);
                                data64bit_B_val4.delete(); databusbit_B_val4.delete();
                                axi_master_wr_control_seq.StableAxiliteNoUpdate=0;
                                for(int j=0; j < (64+32-1)/32; j++) begin
                                    data64bit_B_val4.push_back( ((refm.mem_blk_pages_bval4.maxi_bundlevar_offset["B_val4"]+refm.mem_blk_pages_bval4.page_ofst[refm.mem_blk_pages_bval4.rd_page_idx])>>(j*32)) & (2**32-1) );
                                end
                                foreach(data64bit_B_val4[s]) databusbit_B_val4[s]=data64bit_B_val4[s][32-1:0];
                                axi_master_wr_control_seq.StableAxiliteNoUpdate=1;
                                axi_master_wr_control_seq.datamerge_inavg(databusbit_B_val4, 0, 172, 1);
                                data64bit_B_cid4.delete(); databusbit_B_cid4.delete();
                                axi_master_wr_control_seq.StableAxiliteNoUpdate=0;
                                for(int j=0; j < (64+32-1)/32; j++) begin
                                    data64bit_B_cid4.push_back( ((refm.mem_blk_pages_bcid4.maxi_bundlevar_offset["B_cid4"]+refm.mem_blk_pages_bcid4.page_ofst[refm.mem_blk_pages_bcid4.rd_page_idx])>>(j*32)) & (2**32-1) );
                                end
                                foreach(data64bit_B_cid4[s]) databusbit_B_cid4[s]=data64bit_B_cid4[s][32-1:0];
                                axi_master_wr_control_seq.StableAxiliteNoUpdate=1;
                                axi_master_wr_control_seq.datamerge_inavg(databusbit_B_cid4, 0, 184, 1);
                                data64bit_B_val_port1.delete(); databusbit_B_val_port1.delete();
                                axi_master_wr_control_seq.StableAxiliteNoUpdate=0;
                                for(int j=0; j < (64+32-1)/32; j++) begin
                                    data64bit_B_val_port1.push_back( ((refm.mem_blk_pages_bv1.maxi_bundlevar_offset["B_val_port1"]+refm.mem_blk_pages_bv1.page_ofst[refm.mem_blk_pages_bv1.rd_page_idx])>>(j*32)) & (2**32-1) );
                                end
                                foreach(data64bit_B_val_port1[s]) databusbit_B_val_port1[s]=data64bit_B_val_port1[s][32-1:0];
                                axi_master_wr_control_seq.StableAxiliteNoUpdate=1;
                                axi_master_wr_control_seq.datamerge_inavg(databusbit_B_val_port1, 0, 196, 1);
                                data64bit_B_cid_port1.delete(); databusbit_B_cid_port1.delete();
                                axi_master_wr_control_seq.StableAxiliteNoUpdate=0;
                                for(int j=0; j < (64+32-1)/32; j++) begin
                                    data64bit_B_cid_port1.push_back( ((refm.mem_blk_pages_bc1.maxi_bundlevar_offset["B_cid_port1"]+refm.mem_blk_pages_bc1.page_ofst[refm.mem_blk_pages_bc1.rd_page_idx])>>(j*32)) & (2**32-1) );
                                end
                                foreach(data64bit_B_cid_port1[s]) databusbit_B_cid_port1[s]=data64bit_B_cid_port1[s][32-1:0];
                                axi_master_wr_control_seq.StableAxiliteNoUpdate=1;
                                axi_master_wr_control_seq.datamerge_inavg(databusbit_B_cid_port1, 0, 208, 1);
                                data64bit_B_val_port2.delete(); databusbit_B_val_port2.delete();
                                axi_master_wr_control_seq.StableAxiliteNoUpdate=0;
                                for(int j=0; j < (64+32-1)/32; j++) begin
                                    data64bit_B_val_port2.push_back( ((refm.mem_blk_pages_bv2.maxi_bundlevar_offset["B_val_port2"]+refm.mem_blk_pages_bv2.page_ofst[refm.mem_blk_pages_bv2.rd_page_idx])>>(j*32)) & (2**32-1) );
                                end
                                foreach(data64bit_B_val_port2[s]) databusbit_B_val_port2[s]=data64bit_B_val_port2[s][32-1:0];
                                axi_master_wr_control_seq.StableAxiliteNoUpdate=1;
                                axi_master_wr_control_seq.datamerge_inavg(databusbit_B_val_port2, 0, 220, 1);
                                data64bit_B_cid_port2.delete(); databusbit_B_cid_port2.delete();
                                axi_master_wr_control_seq.StableAxiliteNoUpdate=0;
                                for(int j=0; j < (64+32-1)/32; j++) begin
                                    data64bit_B_cid_port2.push_back( ((refm.mem_blk_pages_bc2.maxi_bundlevar_offset["B_cid_port2"]+refm.mem_blk_pages_bc2.page_ofst[refm.mem_blk_pages_bc2.rd_page_idx])>>(j*32)) & (2**32-1) );
                                end
                                foreach(data64bit_B_cid_port2[s]) databusbit_B_cid_port2[s]=data64bit_B_cid_port2[s][32-1:0];
                                axi_master_wr_control_seq.StableAxiliteNoUpdate=1;
                                axi_master_wr_control_seq.datamerge_inavg(databusbit_B_cid_port2, 0, 232, 1);
                                data64bit_B_val_port3.delete(); databusbit_B_val_port3.delete();
                                axi_master_wr_control_seq.StableAxiliteNoUpdate=0;
                                for(int j=0; j < (64+32-1)/32; j++) begin
                                    data64bit_B_val_port3.push_back( ((refm.mem_blk_pages_bv3.maxi_bundlevar_offset["B_val_port3"]+refm.mem_blk_pages_bv3.page_ofst[refm.mem_blk_pages_bv3.rd_page_idx])>>(j*32)) & (2**32-1) );
                                end
                                foreach(data64bit_B_val_port3[s]) databusbit_B_val_port3[s]=data64bit_B_val_port3[s][32-1:0];
                                axi_master_wr_control_seq.StableAxiliteNoUpdate=1;
                                axi_master_wr_control_seq.datamerge_inavg(databusbit_B_val_port3, 0, 244, 1);
                                data64bit_B_cid_port3.delete(); databusbit_B_cid_port3.delete();
                                axi_master_wr_control_seq.StableAxiliteNoUpdate=0;
                                for(int j=0; j < (64+32-1)/32; j++) begin
                                    data64bit_B_cid_port3.push_back( ((refm.mem_blk_pages_bc3.maxi_bundlevar_offset["B_cid_port3"]+refm.mem_blk_pages_bc3.page_ofst[refm.mem_blk_pages_bc3.rd_page_idx])>>(j*32)) & (2**32-1) );
                                end
                                foreach(data64bit_B_cid_port3[s]) databusbit_B_cid_port3[s]=data64bit_B_cid_port3[s][32-1:0];
                                axi_master_wr_control_seq.StableAxiliteNoUpdate=1;
                                axi_master_wr_control_seq.datamerge_inavg(databusbit_B_cid_port3, 0, 256, 1);
                                data64bit_B_val_port4.delete(); databusbit_B_val_port4.delete();
                                axi_master_wr_control_seq.StableAxiliteNoUpdate=0;
                                for(int j=0; j < (64+32-1)/32; j++) begin
                                    data64bit_B_val_port4.push_back( ((refm.mem_blk_pages_bv4.maxi_bundlevar_offset["B_val_port4"]+refm.mem_blk_pages_bv4.page_ofst[refm.mem_blk_pages_bv4.rd_page_idx])>>(j*32)) & (2**32-1) );
                                end
                                foreach(data64bit_B_val_port4[s]) databusbit_B_val_port4[s]=data64bit_B_val_port4[s][32-1:0];
                                axi_master_wr_control_seq.StableAxiliteNoUpdate=1;
                                axi_master_wr_control_seq.datamerge_inavg(databusbit_B_val_port4, 0, 268, 1);
                                data64bit_B_cid_port4.delete(); databusbit_B_cid_port4.delete();
                                axi_master_wr_control_seq.StableAxiliteNoUpdate=0;
                                for(int j=0; j < (64+32-1)/32; j++) begin
                                    data64bit_B_cid_port4.push_back( ((refm.mem_blk_pages_bc4.maxi_bundlevar_offset["B_cid_port4"]+refm.mem_blk_pages_bc4.page_ofst[refm.mem_blk_pages_bc4.rd_page_idx])>>(j*32)) & (2**32-1) );
                                end
                                foreach(data64bit_B_cid_port4[s]) databusbit_B_cid_port4[s]=data64bit_B_cid_port4[s][32-1:0];
                                axi_master_wr_control_seq.StableAxiliteNoUpdate=1;
                                axi_master_wr_control_seq.datamerge_inavg(databusbit_B_cid_port4, 0, 280, 1);
                                data64bit_C_rcsr.delete(); databusbit_C_rcsr.delete();
                                axi_master_wr_control_seq.StableAxiliteNoUpdate=0;
                                for(int j=0; j < (64+32-1)/32; j++) begin
                                    data64bit_C_rcsr.push_back( ((refm.mem_blk_pages_crcsr.maxi_bundlevar_offset["C_rcsr"]+refm.mem_blk_pages_crcsr.page_ofst[refm.mem_blk_pages_crcsr.rd_page_idx])>>(j*32)) & (2**32-1) );
                                end
                                foreach(data64bit_C_rcsr[s]) databusbit_C_rcsr[s]=data64bit_C_rcsr[s][32-1:0];
                                axi_master_wr_control_seq.StableAxiliteNoUpdate=1;
                                axi_master_wr_control_seq.datamerge_inavg(databusbit_C_rcsr, 0, 292, 1);
                                data64bit_C_cid.delete(); databusbit_C_cid.delete();
                                axi_master_wr_control_seq.StableAxiliteNoUpdate=0;
                                for(int j=0; j < (64+32-1)/32; j++) begin
                                    data64bit_C_cid.push_back( ((refm.mem_blk_pages_ccid.maxi_bundlevar_offset["C_cid"]+refm.mem_blk_pages_ccid.page_ofst[refm.mem_blk_pages_ccid.rd_page_idx])>>(j*32)) & (2**32-1) );
                                end
                                foreach(data64bit_C_cid[s]) databusbit_C_cid[s]=data64bit_C_cid[s][32-1:0];
                                axi_master_wr_control_seq.StableAxiliteNoUpdate=1;
                                axi_master_wr_control_seq.datamerge_inavg(databusbit_C_cid, 0, 304, 1);
                                data64bit_C_val.delete(); databusbit_C_val.delete();
                                axi_master_wr_control_seq.StableAxiliteNoUpdate=0;
                                for(int j=0; j < (64+32-1)/32; j++) begin
                                    data64bit_C_val.push_back( ((refm.mem_blk_pages_cval.maxi_bundlevar_offset["C_val"]+refm.mem_blk_pages_cval.page_ofst[refm.mem_blk_pages_cval.rd_page_idx])>>(j*32)) & (2**32-1) );
                                end
                                foreach(data64bit_C_val[s]) databusbit_C_val[s]=data64bit_C_val[s][32-1:0];
                                axi_master_wr_control_seq.StableAxiliteNoUpdate=1;
                                axi_master_wr_control_seq.datamerge_inavg(databusbit_C_val, 0, 316, 1);
                                `uvm_send(axi_master_wr_control_seq);
                                refm.write_data_finish_control = 1;
                                `uvm_info("control data writting thread", $sformatf("%0dth(total 1): waiting for all write data finish event",i), UVM_LOW)
                                wait(refm.allaxilite_write_data_finish.triggered);
                                refm.write_data_finish_control = 0;
                                `uvm_info("control wait for ap_ready for next trans", $sformatf("%0dth(total 1): begin to wait",i), UVM_LOW)
                                wait(refm.dut2tb_ap_ready.triggered);
                                wait(refm.ap_done_for_nexttrans.triggered);
                                #0.01; //make sure mem incr_rd_page_idx is called first
                            end
                        end
                        begin
                            int ctr_page_idx_bak;
                            `uvm_create_on(axi_master_wr_ctr_seq, p_sequencer.ctr_sqr);
                            axi_master_wr_ctr_seq.misc_if = refm.misc_if;
                            axi_master_wr_ctr_seq.ap_done    = refm.ap_done_for_nexttrans   ;
                            axi_master_wr_ctr_seq.ap_ready   = refm.ap_ready_for_nexttrans  ;
                            axi_master_wr_ctr_seq.finish     = refm.finish ;
                            axi_master_wr_ctr_seq.isusr_delay = axi_pkg::NO_DELAY;
                            for(int i=0; i<1; i++) begin
                                logic[63:0] data64bit_arnum[$];
                                logic[32-1:0] databusbit_arnum[$];
                                logic[63:0] data64bit_brnum[$];
                                logic[32-1:0] databusbit_brnum[$];
                                logic[63:0] data64bit_B_rcsr_base[$];
                                logic[32-1:0] databusbit_B_rcsr_base[$];
                                logic[63:0] data64bit_B_val_base[$];
                                logic[32-1:0] databusbit_B_val_base[$];
                                logic[63:0] data64bit_B_cid_base[$];
                                logic[32-1:0] databusbit_B_cid_base[$];
                                data64bit_arnum.delete(); databusbit_arnum.delete();
                                axi_master_wr_ctr_seq.StableAxiliteNoUpdate=0;
                                refm.mem_blk_pages_ctr_arnum.tobusdata(data64bit_arnum, refm.mem_blk_pages_ctr_arnum.rd_page_idx, 32);
                                foreach(data64bit_arnum[s]) databusbit_arnum[s]=data64bit_arnum[s][32-1:0];
                                axi_master_wr_ctr_seq.StableAxiliteNoUpdate=1;
                                axi_master_wr_ctr_seq.datamerge_inavg(databusbit_arnum, 0, 16, 1);
                                data64bit_brnum.delete(); databusbit_brnum.delete();
                                axi_master_wr_ctr_seq.StableAxiliteNoUpdate=0;
                                refm.mem_blk_pages_ctr_brnum.tobusdata(data64bit_brnum, refm.mem_blk_pages_ctr_brnum.rd_page_idx, 32);
                                foreach(data64bit_brnum[s]) databusbit_brnum[s]=data64bit_brnum[s][32-1:0];
                                axi_master_wr_ctr_seq.StableAxiliteNoUpdate=1;
                                axi_master_wr_ctr_seq.datamerge_inavg(databusbit_brnum, 0, 32, 1);
                                data64bit_B_rcsr_base.delete(); databusbit_B_rcsr_base.delete();
                                axi_master_wr_ctr_seq.StableAxiliteNoUpdate=0;
                                refm.mem_blk_pages_ctr_B_rcsr_base.tobusdata(data64bit_B_rcsr_base, refm.mem_blk_pages_ctr_B_rcsr_base.rd_page_idx, 32);
                                foreach(data64bit_B_rcsr_base[s]) databusbit_B_rcsr_base[s]=data64bit_B_rcsr_base[s][32-1:0];
                                axi_master_wr_ctr_seq.StableAxiliteNoUpdate=1;
                                axi_master_wr_ctr_seq.datamerge_inavg(databusbit_B_rcsr_base, 0, 48, 1);
                                data64bit_B_val_base.delete(); databusbit_B_val_base.delete();
                                axi_master_wr_ctr_seq.StableAxiliteNoUpdate=0;
                                refm.mem_blk_pages_ctr_B_val_base.tobusdata(data64bit_B_val_base, refm.mem_blk_pages_ctr_B_val_base.rd_page_idx, 32);
                                foreach(data64bit_B_val_base[s]) databusbit_B_val_base[s]=data64bit_B_val_base[s][32-1:0];
                                axi_master_wr_ctr_seq.StableAxiliteNoUpdate=1;
                                axi_master_wr_ctr_seq.datamerge_inavg(databusbit_B_val_base, 0, 56, 1);
                                data64bit_B_cid_base.delete(); databusbit_B_cid_base.delete();
                                axi_master_wr_ctr_seq.StableAxiliteNoUpdate=0;
                                refm.mem_blk_pages_ctr_B_cid_base.tobusdata(data64bit_B_cid_base, refm.mem_blk_pages_ctr_B_cid_base.rd_page_idx, 32);
                                foreach(data64bit_B_cid_base[s]) databusbit_B_cid_base[s]=data64bit_B_cid_base[s][32-1:0];
                                axi_master_wr_ctr_seq.StableAxiliteNoUpdate=1;
                                axi_master_wr_ctr_seq.datamerge_inavg(databusbit_B_cid_base, 0, 64, 1);
                                `uvm_send(axi_master_wr_ctr_seq);
                                refm.write_data_finish_ctr = 1;
                                `uvm_info("ctr data writting thread", $sformatf("%0dth(total 1): waiting for all write data finish event",i), UVM_LOW)
                                wait(refm.allaxilite_write_data_finish.triggered);
                                refm.write_data_finish_ctr = 0;
                                fork
                                    begin // configure start to enable DUT
                                        axi_master_wr_ctr_seq.wr_addr_data.push_back( (1<<0)+(0<<32) );
                                        `uvm_info("ctr start dut by axilite", $sformatf("%0dth(total 1): begin to set start bit",i), UVM_LOW)
                                        `uvm_send(axi_master_wr_ctr_seq);
                                    end
                                    begin
                                        `uvm_info("ctr wait for ap_ready for next trans", $sformatf("%0dth(total 1): begin to wait",i), UVM_LOW)
                                        wait(refm.dut2tb_ap_ready.triggered);
                                        wait(refm.ap_done_for_nexttrans.triggered);
                                        #0.01; //make sure mem incr_rd_page_idx is called first
                                    end
                                join
                            end
                        end
                        begin
                            for(int j=0; j<1; j=j+refm.ap_done_cnt) begin
                                wait(misc_if.dut2tb_ap_done_kernel == 1);
                                `uvm_info("test finish control", $sformatf("ap_done of kernel is triggered"), UVM_LOW)
                                @(posedge misc_if.clock);
                                fork
                                    forever begin
                                        `uvm_create_on(axi_master_poll_ctr_seq, p_sequencer.ctr_sqr);
                                        axi_master_poll_ctr_seq.isusr_delay = axi_pkg::NO_DELAY;
                                        axi_master_poll_ctr_seq.misc_if = refm.misc_if;
                                        axi_master_poll_ctr_seq.rd_addr.push_back(0);
                                        `uvm_send(axi_master_poll_ctr_seq)
                                        repeat(2) @(posedge misc_if.clock);
                                    end
                                    begin
                                        `uvm_info("test finish control", $sformatf("%0dth(total 1) ap_done_for_nexttrans begin to wait",j), UVM_LOW)
                                        @refm.dut2tb_ap_done;
                                    end
                                join_any
                                disable fork;
                                wait(refm.ap_ready_for_nexttrans.triggered);
                            end
                        end
                        begin
                            `uvm_create_on(axi_master_rd_ctr_seq, p_sequencer.ctr_sqr)
                            axi_master_rd_ctr_seq.misc_if = refm.misc_if;
                            axi_master_rd_ctr_seq.ap_done    = refm.ap_done_for_nexttrans   ;
                            axi_master_rd_ctr_seq.ap_ready   = refm.ap_ready_for_nexttrans  ;
                            axi_master_rd_ctr_seq.finish     = refm.finish ;
                            axi_master_rd_ctr_seq.isusr_delay = axi_pkg::NO_DELAY;
                            for(int j=0; j<1; j=j+refm.ap_done_cnt) begin
                                logic[32-1:0] databusbit[$];
                                @refm.dut2tb_ap_done;
                                axi_master_rd_ctr_seq.datamerge_inavg(databusbit, (1*32+32-1)/32, 72, 0);
                                axi_master_rd_ctr_seq.datamerge_inavg(databusbit, (1*32+32-1)/32, 88, 0);
                                axi_master_rd_ctr_seq.datamerge_inavg(databusbit, (1*32+32-1)/32, 104, 0);
                                axi_master_rd_ctr_seq.datamerge_inavg(databusbit, (1*32+32-1)/32, 120, 0);
                                axi_master_rd_ctr_seq.datamerge_inavg(databusbit, (1*32+32-1)/32, 136, 0);
                                axi_master_rd_ctr_seq.datamerge_inavg(databusbit, (1*32+32-1)/32, 152, 0);
                                axi_master_rd_ctr_seq.datamerge_inavg(databusbit, (1*32+32-1)/32, 168, 0);
                                axi_master_rd_ctr_seq.datamerge_inavg(databusbit, (1*32+32-1)/32, 184, 0);
                                axi_master_rd_ctr_seq.datamerge_inavg(databusbit, (1*32+32-1)/32, 264, 0);
                                axi_master_rd_ctr_seq.datamerge_inavg(databusbit, (1*32+32-1)/32, 280, 0);
                                axi_master_rd_ctr_seq.datamerge_inavg(databusbit, (1*32+32-1)/32, 296, 0);
                                axi_master_rd_ctr_seq.datamerge_inavg(databusbit, (1*32+32-1)/32, 312, 0);
                                axi_master_rd_ctr_seq.datamerge_inavg(databusbit, (1*32+32-1)/32, 328, 0);
                                axi_master_rd_ctr_seq.datamerge_inavg(databusbit, (1*32+32-1)/32, 344, 0);
                                axi_master_rd_ctr_seq.datamerge_inavg(databusbit, (1*32+32-1)/32, 360, 0);
                                axi_master_rd_ctr_seq.datamerge_inavg(databusbit, (1*32+32-1)/32, 376, 0);
                                axi_master_rd_ctr_seq.datamerge_inavg(databusbit, (1*32+32-1)/32, 456, 0);
                                axi_master_rd_ctr_seq.datamerge_inavg(databusbit, (1*32+32-1)/32, 472, 0);
                                axi_master_rd_ctr_seq.datamerge_inavg(databusbit, (1*32+32-1)/32, 488, 0);
                                axi_master_rd_ctr_seq.datamerge_inavg(databusbit, (1*32+32-1)/32, 504, 0);
                                axi_master_rd_ctr_seq.datamerge_inavg(databusbit, (1*32+32-1)/32, 520, 0);
                                    `uvm_info("axilite data read", $sformatf("%0dth(total 1) data read sequence is started",j), UVM_LOW)
                                `uvm_send(axi_master_rd_ctr_seq);
                                @(posedge refm.misc_if.clock); //wait address 2 rdata rsp done
                                @(posedge refm.misc_if.clock);
                                refm.read_data_finish_ctr = 1;
                                wait(refm.allaxilite_read_data_finish.triggered);
                            end
                        end
                    join
                end

                begin
                    for(int j=0; j<1; j=j+refm.ap_done_cnt) @refm.ap_done_for_nexttrans;
                    `uvm_info(this.get_full_name(), "autotb finished", UVM_LOW)
                    -> refm.finish;
                    refm.misc_if.finished = 1;
                    @(posedge refm.misc_if.clock);
                    refm.misc_if.finished = 0;
                    @(posedge refm.misc_if.clock);
                    -> refm.misc_if.finished_evt;
                end
            join_any
            repeat(5) @(posedge refm.misc_if.clock); //5 cycles delay for finish stuff. 5 is haphazard value

            p_sequencer.arcsr_sqr.stop_sequences();
            p_sequencer.acid_sqr.stop_sequences();
            p_sequencer.aval_sqr.stop_sequences();
            p_sequencer.brcsr1_sqr.stop_sequences();
            p_sequencer.brcsr2_sqr.stop_sequences();
            p_sequencer.brcsr3_sqr.stop_sequences();
            p_sequencer.brcsr4_sqr.stop_sequences();
            p_sequencer.bval1_sqr.stop_sequences();
            p_sequencer.bcid1_sqr.stop_sequences();
            p_sequencer.bval2_sqr.stop_sequences();
            p_sequencer.bcid2_sqr.stop_sequences();
            p_sequencer.bval3_sqr.stop_sequences();
            p_sequencer.bcid3_sqr.stop_sequences();
            p_sequencer.bval4_sqr.stop_sequences();
            p_sequencer.bcid4_sqr.stop_sequences();
            p_sequencer.bv1_sqr.stop_sequences();
            p_sequencer.bc1_sqr.stop_sequences();
            p_sequencer.bv2_sqr.stop_sequences();
            p_sequencer.bc2_sqr.stop_sequences();
            p_sequencer.bv3_sqr.stop_sequences();
            p_sequencer.bc3_sqr.stop_sequences();
            p_sequencer.bv4_sqr.stop_sequences();
            p_sequencer.bc4_sqr.stop_sequences();
            p_sequencer.crcsr_sqr.stop_sequences();
            p_sequencer.ccid_sqr.stop_sequences();
            p_sequencer.cval_sqr.stop_sequences();
            p_sequencer.control_sqr.stop_sequences();
            p_sequencer.ctr_sqr.stop_sequences();
            disable fork;
                                                                                                    
            starting_phase.drop_objection(this);                                                    
                                                                                                    
        endtask                                                                                     
    endclass                                                                                        
                                                                                                    
`endif                                                                                              
