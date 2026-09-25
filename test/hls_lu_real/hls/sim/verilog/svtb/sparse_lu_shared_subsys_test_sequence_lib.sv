//==============================================================
//Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2025.2 (64-bit)
//Tool Version Limit: 2025.11
//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
//
//==============================================================
`ifndef SPARSE_LU_SHARED_SUBSYS_TEST_SEQUENCE_LIB__SV                                              
    `define SPARSE_LU_SHARED_SUBSYS_TEST_SEQUENCE_LIB__SV                                          
                                                                                                    
                                                                                                    
    `include "uvm_macros.svh"                                                                     
                                                                                                    
    class sparse_lu_shared_subsys_test_sequence_lib extends uvm_sequence;                                
                                                                                                    
        function new (string name = "sparse_lu_shared_subsys_test_sequence_lib");                      
            super.new(name);                                                                        
            `uvm_info(this.get_full_name(), "new is called", UVM_LOW)                             
        endfunction                                                                                 
                                                                                                    
        `uvm_object_utils(sparse_lu_shared_subsys_test_sequence_lib)                                     
        `uvm_declare_p_sequencer(sparse_lu_shared_virtual_sequencer)                                     
                                                                                                    
        virtual task body();                                                                        
            uvm_phase starting_phase;                                                               
            virtual interface misc_interface misc_if;                                               
            sparse_lu_shared_reference_model refm;                                                       
                                                                                                    
            axi_pkg::axi_slave_sequence#(64,4,8,3,1) axi_slave_a_row_seq;
            axi_pkg::axi_slave_sequence#(64,4,8,3,1) axi_slave_a_col_seq;
            axi_pkg::axi_slave_sequence#(64,4,8,3,1) axi_slave_a_val_seq;
            axi_pkg::axi_slave_sequence#(64,4,8,3,1) axi_slave_l_row_seq;
            axi_pkg::axi_slave_sequence#(64,4,8,3,1) axi_slave_l_col_seq;
            axi_pkg::axi_slave_sequence#(64,4,8,3,1) axi_slave_l_val_seq;
            axi_pkg::axi_slave_sequence#(64,4,8,3,1) axi_slave_u_row_seq;
            axi_pkg::axi_slave_sequence#(64,4,8,3,1) axi_slave_u_col_seq;
            axi_pkg::axi_slave_sequence#(64,4,8,3,1) axi_slave_u_val_seq;
            axi_pkg::axi_slave_sequence#(64,4,8,3,1) axi_slave_x_row_seq;
            axi_pkg::axi_slave_sequence#(64,4,8,3,1) axi_slave_x_col_seq;
            axi_pkg::axi_slave_sequence#(64,4,8,3,1) axi_slave_x_val_seq;
            axi_pkg::axi_busdatas_master_sequence#(7, 32) axi_master_wr_control_seq;
            axi_pkg::axi_busdatas_master_sequence#(7, 32) axi_master_rd_control_seq;
            axi_pkg::axi_busdatas_master_sequence#(7, 32) axi_master_poll_control_seq;
            axi_pkg::axi_busdatas_master_sequence#(8, 32) axi_master_wr_control_r_seq;

            if (!uvm_config_db#(sparse_lu_shared_reference_model)::get(p_sequencer,"", "refm", refm))
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
                            `uvm_create_on(axi_slave_a_row_seq, p_sequencer.a_row_sqr);
                            axi_slave_a_row_seq.misc_if = refm.misc_if;
                            axi_slave_a_row_seq.ap_done    = refm.ap_done_for_nexttrans   ;
                            axi_slave_a_row_seq.ap_ready   = refm.ap_ready_for_nexttrans  ;
                            axi_slave_a_row_seq.finish     = refm.finish ;
                            axi_slave_a_row_seq.isusr_delay = axi_pkg::NO_DELAY;
                            `uvm_send(axi_slave_a_row_seq);
                        end
                        begin //axi slave sequence. loop delays
                            `uvm_create_on(axi_slave_a_col_seq, p_sequencer.a_col_sqr);
                            axi_slave_a_col_seq.misc_if = refm.misc_if;
                            axi_slave_a_col_seq.ap_done    = refm.ap_done_for_nexttrans   ;
                            axi_slave_a_col_seq.ap_ready   = refm.ap_ready_for_nexttrans  ;
                            axi_slave_a_col_seq.finish     = refm.finish ;
                            axi_slave_a_col_seq.isusr_delay = axi_pkg::NO_DELAY;
                            `uvm_send(axi_slave_a_col_seq);
                        end
                        begin //axi slave sequence. loop delays
                            `uvm_create_on(axi_slave_a_val_seq, p_sequencer.a_val_sqr);
                            axi_slave_a_val_seq.misc_if = refm.misc_if;
                            axi_slave_a_val_seq.ap_done    = refm.ap_done_for_nexttrans   ;
                            axi_slave_a_val_seq.ap_ready   = refm.ap_ready_for_nexttrans  ;
                            axi_slave_a_val_seq.finish     = refm.finish ;
                            axi_slave_a_val_seq.isusr_delay = axi_pkg::NO_DELAY;
                            `uvm_send(axi_slave_a_val_seq);
                        end
                        begin //axi slave sequence. loop delays
                            `uvm_create_on(axi_slave_l_row_seq, p_sequencer.l_row_sqr);
                            axi_slave_l_row_seq.misc_if = refm.misc_if;
                            axi_slave_l_row_seq.ap_done    = refm.ap_done_for_nexttrans   ;
                            axi_slave_l_row_seq.ap_ready   = refm.ap_ready_for_nexttrans  ;
                            axi_slave_l_row_seq.finish     = refm.finish ;
                            axi_slave_l_row_seq.isusr_delay = axi_pkg::NO_DELAY;
                            `uvm_send(axi_slave_l_row_seq);
                        end
                        begin //axi slave sequence. loop delays
                            `uvm_create_on(axi_slave_l_col_seq, p_sequencer.l_col_sqr);
                            axi_slave_l_col_seq.misc_if = refm.misc_if;
                            axi_slave_l_col_seq.ap_done    = refm.ap_done_for_nexttrans   ;
                            axi_slave_l_col_seq.ap_ready   = refm.ap_ready_for_nexttrans  ;
                            axi_slave_l_col_seq.finish     = refm.finish ;
                            axi_slave_l_col_seq.isusr_delay = axi_pkg::NO_DELAY;
                            `uvm_send(axi_slave_l_col_seq);
                        end
                        begin //axi slave sequence. loop delays
                            `uvm_create_on(axi_slave_l_val_seq, p_sequencer.l_val_sqr);
                            axi_slave_l_val_seq.misc_if = refm.misc_if;
                            axi_slave_l_val_seq.ap_done    = refm.ap_done_for_nexttrans   ;
                            axi_slave_l_val_seq.ap_ready   = refm.ap_ready_for_nexttrans  ;
                            axi_slave_l_val_seq.finish     = refm.finish ;
                            axi_slave_l_val_seq.isusr_delay = axi_pkg::NO_DELAY;
                            `uvm_send(axi_slave_l_val_seq);
                        end
                        begin //axi slave sequence. loop delays
                            `uvm_create_on(axi_slave_u_row_seq, p_sequencer.u_row_sqr);
                            axi_slave_u_row_seq.misc_if = refm.misc_if;
                            axi_slave_u_row_seq.ap_done    = refm.ap_done_for_nexttrans   ;
                            axi_slave_u_row_seq.ap_ready   = refm.ap_ready_for_nexttrans  ;
                            axi_slave_u_row_seq.finish     = refm.finish ;
                            axi_slave_u_row_seq.isusr_delay = axi_pkg::NO_DELAY;
                            `uvm_send(axi_slave_u_row_seq);
                        end
                        begin //axi slave sequence. loop delays
                            `uvm_create_on(axi_slave_u_col_seq, p_sequencer.u_col_sqr);
                            axi_slave_u_col_seq.misc_if = refm.misc_if;
                            axi_slave_u_col_seq.ap_done    = refm.ap_done_for_nexttrans   ;
                            axi_slave_u_col_seq.ap_ready   = refm.ap_ready_for_nexttrans  ;
                            axi_slave_u_col_seq.finish     = refm.finish ;
                            axi_slave_u_col_seq.isusr_delay = axi_pkg::NO_DELAY;
                            `uvm_send(axi_slave_u_col_seq);
                        end
                        begin //axi slave sequence. loop delays
                            `uvm_create_on(axi_slave_u_val_seq, p_sequencer.u_val_sqr);
                            axi_slave_u_val_seq.misc_if = refm.misc_if;
                            axi_slave_u_val_seq.ap_done    = refm.ap_done_for_nexttrans   ;
                            axi_slave_u_val_seq.ap_ready   = refm.ap_ready_for_nexttrans  ;
                            axi_slave_u_val_seq.finish     = refm.finish ;
                            axi_slave_u_val_seq.isusr_delay = axi_pkg::NO_DELAY;
                            `uvm_send(axi_slave_u_val_seq);
                        end
                        begin //axi slave sequence. loop delays
                            `uvm_create_on(axi_slave_x_row_seq, p_sequencer.x_row_sqr);
                            axi_slave_x_row_seq.misc_if = refm.misc_if;
                            axi_slave_x_row_seq.ap_done    = refm.ap_done_for_nexttrans   ;
                            axi_slave_x_row_seq.ap_ready   = refm.ap_ready_for_nexttrans  ;
                            axi_slave_x_row_seq.finish     = refm.finish ;
                            axi_slave_x_row_seq.isusr_delay = axi_pkg::NO_DELAY;
                            `uvm_send(axi_slave_x_row_seq);
                        end
                        begin //axi slave sequence. loop delays
                            `uvm_create_on(axi_slave_x_col_seq, p_sequencer.x_col_sqr);
                            axi_slave_x_col_seq.misc_if = refm.misc_if;
                            axi_slave_x_col_seq.ap_done    = refm.ap_done_for_nexttrans   ;
                            axi_slave_x_col_seq.ap_ready   = refm.ap_ready_for_nexttrans  ;
                            axi_slave_x_col_seq.finish     = refm.finish ;
                            axi_slave_x_col_seq.isusr_delay = axi_pkg::NO_DELAY;
                            `uvm_send(axi_slave_x_col_seq);
                        end
                        begin //axi slave sequence. loop delays
                            `uvm_create_on(axi_slave_x_val_seq, p_sequencer.x_val_sqr);
                            axi_slave_x_val_seq.misc_if = refm.misc_if;
                            axi_slave_x_val_seq.ap_done    = refm.ap_done_for_nexttrans   ;
                            axi_slave_x_val_seq.ap_ready   = refm.ap_ready_for_nexttrans  ;
                            axi_slave_x_val_seq.finish     = refm.finish ;
                            axi_slave_x_val_seq.isusr_delay = axi_pkg::NO_DELAY;
                            `uvm_send(axi_slave_x_val_seq);
                        end
                        begin
                            int control_page_idx_bak;
                            `uvm_create_on(axi_master_wr_control_seq, p_sequencer.control_sqr);
                            axi_master_wr_control_seq.misc_if = refm.misc_if;
                            axi_master_wr_control_seq.ap_done    = refm.ap_done_for_nexttrans   ;
                            axi_master_wr_control_seq.ap_ready   = refm.ap_ready_for_nexttrans  ;
                            axi_master_wr_control_seq.finish     = refm.finish ;
                            axi_master_wr_control_seq.isusr_delay = axi_pkg::NO_DELAY;
                            for(int i=0; i<3; i++) begin
                                logic[63:0] data64bit_operation[$];
                                logic[32-1:0] databusbit_operation[$];
                                logic[63:0] data64bit_n[$];
                                logic[32-1:0] databusbit_n[$];
                                logic[63:0] data64bit_a_nnz[$];
                                logic[32-1:0] databusbit_a_nnz[$];
                                logic[63:0] data64bit_l_nnz[$];
                                logic[32-1:0] databusbit_l_nnz[$];
                                logic[63:0] data64bit_u_nnz[$];
                                logic[32-1:0] databusbit_u_nnz[$];
                                logic[63:0] data64bit_x_rows[$];
                                logic[32-1:0] databusbit_x_rows[$];
                                logic[63:0] data64bit_x_cols[$];
                                logic[32-1:0] databusbit_x_cols[$];
                                logic[63:0] data64bit_x_nnz[$];
                                logic[32-1:0] databusbit_x_nnz[$];
                                logic[63:0] data64bit_pivot_eps[$];
                                logic[32-1:0] databusbit_pivot_eps[$];
                                data64bit_operation.delete(); databusbit_operation.delete();
                                axi_master_wr_control_seq.StableAxiliteNoUpdate=0;
                                refm.mem_blk_pages_control_operation.tobusdata(data64bit_operation, refm.mem_blk_pages_control_operation.rd_page_idx, 32);
                                foreach(data64bit_operation[s]) databusbit_operation[s]=data64bit_operation[s][32-1:0];
                                axi_master_wr_control_seq.StableAxiliteNoUpdate=1;
                                axi_master_wr_control_seq.datamerge_inavg(databusbit_operation, 0, 16, 1);
                                data64bit_n.delete(); databusbit_n.delete();
                                axi_master_wr_control_seq.StableAxiliteNoUpdate=0;
                                refm.mem_blk_pages_control_n.tobusdata(data64bit_n, refm.mem_blk_pages_control_n.rd_page_idx, 32);
                                foreach(data64bit_n[s]) databusbit_n[s]=data64bit_n[s][32-1:0];
                                axi_master_wr_control_seq.StableAxiliteNoUpdate=1;
                                axi_master_wr_control_seq.datamerge_inavg(databusbit_n, 0, 24, 1);
                                data64bit_a_nnz.delete(); databusbit_a_nnz.delete();
                                axi_master_wr_control_seq.StableAxiliteNoUpdate=0;
                                refm.mem_blk_pages_control_a_nnz.tobusdata(data64bit_a_nnz, refm.mem_blk_pages_control_a_nnz.rd_page_idx, 32);
                                foreach(data64bit_a_nnz[s]) databusbit_a_nnz[s]=data64bit_a_nnz[s][32-1:0];
                                axi_master_wr_control_seq.StableAxiliteNoUpdate=1;
                                axi_master_wr_control_seq.datamerge_inavg(databusbit_a_nnz, 0, 32, 1);
                                data64bit_l_nnz.delete(); databusbit_l_nnz.delete();
                                axi_master_wr_control_seq.StableAxiliteNoUpdate=0;
                                refm.mem_blk_pages_control_l_nnz.tobusdata(data64bit_l_nnz, refm.mem_blk_pages_control_l_nnz.rd_page_idx, 32);
                                foreach(data64bit_l_nnz[s]) databusbit_l_nnz[s]=data64bit_l_nnz[s][32-1:0];
                                axi_master_wr_control_seq.StableAxiliteNoUpdate=1;
                                axi_master_wr_control_seq.datamerge_inavg(databusbit_l_nnz, 0, 40, 1);
                                data64bit_u_nnz.delete(); databusbit_u_nnz.delete();
                                axi_master_wr_control_seq.StableAxiliteNoUpdate=0;
                                refm.mem_blk_pages_control_u_nnz.tobusdata(data64bit_u_nnz, refm.mem_blk_pages_control_u_nnz.rd_page_idx, 32);
                                foreach(data64bit_u_nnz[s]) databusbit_u_nnz[s]=data64bit_u_nnz[s][32-1:0];
                                axi_master_wr_control_seq.StableAxiliteNoUpdate=1;
                                axi_master_wr_control_seq.datamerge_inavg(databusbit_u_nnz, 0, 48, 1);
                                data64bit_x_rows.delete(); databusbit_x_rows.delete();
                                axi_master_wr_control_seq.StableAxiliteNoUpdate=0;
                                refm.mem_blk_pages_control_x_rows.tobusdata(data64bit_x_rows, refm.mem_blk_pages_control_x_rows.rd_page_idx, 32);
                                foreach(data64bit_x_rows[s]) databusbit_x_rows[s]=data64bit_x_rows[s][32-1:0];
                                axi_master_wr_control_seq.StableAxiliteNoUpdate=1;
                                axi_master_wr_control_seq.datamerge_inavg(databusbit_x_rows, 0, 56, 1);
                                data64bit_x_cols.delete(); databusbit_x_cols.delete();
                                axi_master_wr_control_seq.StableAxiliteNoUpdate=0;
                                refm.mem_blk_pages_control_x_cols.tobusdata(data64bit_x_cols, refm.mem_blk_pages_control_x_cols.rd_page_idx, 32);
                                foreach(data64bit_x_cols[s]) databusbit_x_cols[s]=data64bit_x_cols[s][32-1:0];
                                axi_master_wr_control_seq.StableAxiliteNoUpdate=1;
                                axi_master_wr_control_seq.datamerge_inavg(databusbit_x_cols, 0, 64, 1);
                                data64bit_x_nnz.delete(); databusbit_x_nnz.delete();
                                axi_master_wr_control_seq.StableAxiliteNoUpdate=0;
                                refm.mem_blk_pages_control_x_nnz.tobusdata(data64bit_x_nnz, refm.mem_blk_pages_control_x_nnz.rd_page_idx, 32);
                                foreach(data64bit_x_nnz[s]) databusbit_x_nnz[s]=data64bit_x_nnz[s][32-1:0];
                                axi_master_wr_control_seq.StableAxiliteNoUpdate=1;
                                axi_master_wr_control_seq.datamerge_inavg(databusbit_x_nnz, 0, 72, 1);
                                data64bit_pivot_eps.delete(); databusbit_pivot_eps.delete();
                                axi_master_wr_control_seq.StableAxiliteNoUpdate=0;
                                refm.mem_blk_pages_control_pivot_eps.tobusdata(data64bit_pivot_eps, refm.mem_blk_pages_control_pivot_eps.rd_page_idx, 32);
                                foreach(data64bit_pivot_eps[s]) databusbit_pivot_eps[s]=data64bit_pivot_eps[s][32-1:0];
                                axi_master_wr_control_seq.StableAxiliteNoUpdate=1;
                                axi_master_wr_control_seq.datamerge_inavg(databusbit_pivot_eps, 0, 80, 1);
                                `uvm_send(axi_master_wr_control_seq);
                                refm.write_data_finish_control = 1;
                                `uvm_info("control data writting thread", $sformatf("%0dth(total 3): waiting for all write data finish event",i), UVM_LOW)
                                wait(refm.allaxilite_write_data_finish.triggered);
                                refm.write_data_finish_control = 0;
                                fork
                                    begin // configure start to enable DUT
                                        axi_master_wr_control_seq.wr_addr_data.push_back( (1<<0)+(0<<32) );
                                        `uvm_info("control start dut by axilite", $sformatf("%0dth(total 3): begin to set start bit",i), UVM_LOW)
                                        `uvm_send(axi_master_wr_control_seq);
                                    end
                                    begin
                                        `uvm_info("control wait for ap_ready for next trans", $sformatf("%0dth(total 3): begin to wait",i), UVM_LOW)
                                        wait(refm.dut2tb_ap_ready.triggered);
                                        wait(refm.ap_done_for_nexttrans.triggered);
                                        #0.01; //make sure mem incr_rd_page_idx is called first
                                    end
                                join
                            end
                        end
                        begin
                            for(int j=0; j<3; j=j+refm.ap_done_cnt) begin
                                wait(misc_if.dut2tb_ap_done_kernel == 1);
                                `uvm_info("test finish control", $sformatf("ap_done of kernel is triggered"), UVM_LOW)
                                @(posedge misc_if.clock);
                                fork
                                    forever begin
                                        `uvm_create_on(axi_master_poll_control_seq, p_sequencer.control_sqr);
                                        axi_master_poll_control_seq.isusr_delay = axi_pkg::NO_DELAY;
                                        axi_master_poll_control_seq.misc_if = refm.misc_if;
                                        axi_master_poll_control_seq.rd_addr.push_back(0);
                                        `uvm_send(axi_master_poll_control_seq)
                                        repeat(2) @(posedge misc_if.clock);
                                    end
                                    begin
                                        `uvm_info("test finish control", $sformatf("%0dth(total 3) ap_done_for_nexttrans begin to wait",j), UVM_LOW)
                                        @refm.dut2tb_ap_done;
                                    end
                                join_any
                                disable fork;
                                wait(refm.ap_ready_for_nexttrans.triggered);
                            end
                        end
                        begin
                            `uvm_create_on(axi_master_rd_control_seq, p_sequencer.control_sqr)
                            axi_master_rd_control_seq.misc_if = refm.misc_if;
                            axi_master_rd_control_seq.ap_done    = refm.ap_done_for_nexttrans   ;
                            axi_master_rd_control_seq.ap_ready   = refm.ap_ready_for_nexttrans  ;
                            axi_master_rd_control_seq.finish     = refm.finish ;
                            axi_master_rd_control_seq.isusr_delay = axi_pkg::NO_DELAY;
                            for(int j=0; j<3; j=j+refm.ap_done_cnt) begin
                                logic[32-1:0] databusbit[$];
                                @refm.dut2tb_ap_done;
                                axi_master_rd_control_seq.datamerge_inavg(databusbit, (1*32+32-1)/32, 88, 0);
                                axi_master_rd_control_seq.datamerge_inavg(databusbit, (1*32+32-1)/32, 104, 0);
                                    `uvm_info("axilite data read", $sformatf("%0dth(total 3) data read sequence is started",j), UVM_LOW)
                                `uvm_send(axi_master_rd_control_seq);
                                @(posedge refm.misc_if.clock); //wait address 2 rdata rsp done
                                @(posedge refm.misc_if.clock);
                                refm.read_data_finish_control = 1;
                                wait(refm.allaxilite_read_data_finish.triggered);
                            end
                        end
                        begin
                            int control_r_page_idx_bak;
                            `uvm_create_on(axi_master_wr_control_r_seq, p_sequencer.control_r_sqr);
                            axi_master_wr_control_r_seq.misc_if = refm.misc_if;
                            axi_master_wr_control_r_seq.ap_done    = refm.ap_done_for_nexttrans   ;
                            axi_master_wr_control_r_seq.ap_ready   = refm.ap_ready_for_nexttrans  ;
                            axi_master_wr_control_r_seq.finish     = refm.finish ;
                            axi_master_wr_control_r_seq.isusr_delay = axi_pkg::NO_DELAY;
                            for(int i=0; i<3; i++) begin
                                logic[63:0] data64bit_A_rcsr[$];
                                logic[32-1:0] databusbit_A_rcsr[$];
                                logic[63:0] data64bit_A_cid[$];
                                logic[32-1:0] databusbit_A_cid[$];
                                logic[63:0] data64bit_A_val_r[$];
                                logic[32-1:0] databusbit_A_val_r[$];
                                logic[63:0] data64bit_L_rcsr[$];
                                logic[32-1:0] databusbit_L_rcsr[$];
                                logic[63:0] data64bit_L_cid[$];
                                logic[32-1:0] databusbit_L_cid[$];
                                logic[63:0] data64bit_L_val_r[$];
                                logic[32-1:0] databusbit_L_val_r[$];
                                logic[63:0] data64bit_U_rcsr[$];
                                logic[32-1:0] databusbit_U_rcsr[$];
                                logic[63:0] data64bit_U_cid[$];
                                logic[32-1:0] databusbit_U_cid[$];
                                logic[63:0] data64bit_U_val_r[$];
                                logic[32-1:0] databusbit_U_val_r[$];
                                logic[63:0] data64bit_X_rcsr[$];
                                logic[32-1:0] databusbit_X_rcsr[$];
                                logic[63:0] data64bit_X_cid[$];
                                logic[32-1:0] databusbit_X_cid[$];
                                logic[63:0] data64bit_X_val_r[$];
                                logic[32-1:0] databusbit_X_val_r[$];
                                data64bit_A_rcsr.delete(); databusbit_A_rcsr.delete();
                                axi_master_wr_control_r_seq.StableAxiliteNoUpdate=0;
                                for(int j=0; j < (64+32-1)/32; j++) begin
                                    data64bit_A_rcsr.push_back( ((refm.mem_blk_pages_a_row.maxi_bundlevar_offset["A_rcsr"]+refm.mem_blk_pages_a_row.page_ofst[refm.mem_blk_pages_a_row.rd_page_idx])>>(j*32)) & (2**32-1) );
                                end
                                foreach(data64bit_A_rcsr[s]) databusbit_A_rcsr[s]=data64bit_A_rcsr[s][32-1:0];
                                axi_master_wr_control_r_seq.StableAxiliteNoUpdate=1;
                                axi_master_wr_control_r_seq.datamerge_inavg(databusbit_A_rcsr, 0, 16, 1);
                                data64bit_A_cid.delete(); databusbit_A_cid.delete();
                                axi_master_wr_control_r_seq.StableAxiliteNoUpdate=0;
                                for(int j=0; j < (64+32-1)/32; j++) begin
                                    data64bit_A_cid.push_back( ((refm.mem_blk_pages_a_col.maxi_bundlevar_offset["A_cid"]+refm.mem_blk_pages_a_col.page_ofst[refm.mem_blk_pages_a_col.rd_page_idx])>>(j*32)) & (2**32-1) );
                                end
                                foreach(data64bit_A_cid[s]) databusbit_A_cid[s]=data64bit_A_cid[s][32-1:0];
                                axi_master_wr_control_r_seq.StableAxiliteNoUpdate=1;
                                axi_master_wr_control_r_seq.datamerge_inavg(databusbit_A_cid, 0, 28, 1);
                                data64bit_A_val_r.delete(); databusbit_A_val_r.delete();
                                axi_master_wr_control_r_seq.StableAxiliteNoUpdate=0;
                                for(int j=0; j < (64+32-1)/32; j++) begin
                                    data64bit_A_val_r.push_back( ((refm.mem_blk_pages_a_val.maxi_bundlevar_offset["A_val_r"]+refm.mem_blk_pages_a_val.page_ofst[refm.mem_blk_pages_a_val.rd_page_idx])>>(j*32)) & (2**32-1) );
                                end
                                foreach(data64bit_A_val_r[s]) databusbit_A_val_r[s]=data64bit_A_val_r[s][32-1:0];
                                axi_master_wr_control_r_seq.StableAxiliteNoUpdate=1;
                                axi_master_wr_control_r_seq.datamerge_inavg(databusbit_A_val_r, 0, 40, 1);
                                data64bit_L_rcsr.delete(); databusbit_L_rcsr.delete();
                                axi_master_wr_control_r_seq.StableAxiliteNoUpdate=0;
                                for(int j=0; j < (64+32-1)/32; j++) begin
                                    data64bit_L_rcsr.push_back( ((refm.mem_blk_pages_l_row.maxi_bundlevar_offset["L_rcsr"]+refm.mem_blk_pages_l_row.page_ofst[refm.mem_blk_pages_l_row.rd_page_idx])>>(j*32)) & (2**32-1) );
                                end
                                foreach(data64bit_L_rcsr[s]) databusbit_L_rcsr[s]=data64bit_L_rcsr[s][32-1:0];
                                axi_master_wr_control_r_seq.StableAxiliteNoUpdate=1;
                                axi_master_wr_control_r_seq.datamerge_inavg(databusbit_L_rcsr, 0, 52, 1);
                                data64bit_L_cid.delete(); databusbit_L_cid.delete();
                                axi_master_wr_control_r_seq.StableAxiliteNoUpdate=0;
                                for(int j=0; j < (64+32-1)/32; j++) begin
                                    data64bit_L_cid.push_back( ((refm.mem_blk_pages_l_col.maxi_bundlevar_offset["L_cid"]+refm.mem_blk_pages_l_col.page_ofst[refm.mem_blk_pages_l_col.rd_page_idx])>>(j*32)) & (2**32-1) );
                                end
                                foreach(data64bit_L_cid[s]) databusbit_L_cid[s]=data64bit_L_cid[s][32-1:0];
                                axi_master_wr_control_r_seq.StableAxiliteNoUpdate=1;
                                axi_master_wr_control_r_seq.datamerge_inavg(databusbit_L_cid, 0, 64, 1);
                                data64bit_L_val_r.delete(); databusbit_L_val_r.delete();
                                axi_master_wr_control_r_seq.StableAxiliteNoUpdate=0;
                                for(int j=0; j < (64+32-1)/32; j++) begin
                                    data64bit_L_val_r.push_back( ((refm.mem_blk_pages_l_val.maxi_bundlevar_offset["L_val_r"]+refm.mem_blk_pages_l_val.page_ofst[refm.mem_blk_pages_l_val.rd_page_idx])>>(j*32)) & (2**32-1) );
                                end
                                foreach(data64bit_L_val_r[s]) databusbit_L_val_r[s]=data64bit_L_val_r[s][32-1:0];
                                axi_master_wr_control_r_seq.StableAxiliteNoUpdate=1;
                                axi_master_wr_control_r_seq.datamerge_inavg(databusbit_L_val_r, 0, 76, 1);
                                data64bit_U_rcsr.delete(); databusbit_U_rcsr.delete();
                                axi_master_wr_control_r_seq.StableAxiliteNoUpdate=0;
                                for(int j=0; j < (64+32-1)/32; j++) begin
                                    data64bit_U_rcsr.push_back( ((refm.mem_blk_pages_u_row.maxi_bundlevar_offset["U_rcsr"]+refm.mem_blk_pages_u_row.page_ofst[refm.mem_blk_pages_u_row.rd_page_idx])>>(j*32)) & (2**32-1) );
                                end
                                foreach(data64bit_U_rcsr[s]) databusbit_U_rcsr[s]=data64bit_U_rcsr[s][32-1:0];
                                axi_master_wr_control_r_seq.StableAxiliteNoUpdate=1;
                                axi_master_wr_control_r_seq.datamerge_inavg(databusbit_U_rcsr, 0, 88, 1);
                                data64bit_U_cid.delete(); databusbit_U_cid.delete();
                                axi_master_wr_control_r_seq.StableAxiliteNoUpdate=0;
                                for(int j=0; j < (64+32-1)/32; j++) begin
                                    data64bit_U_cid.push_back( ((refm.mem_blk_pages_u_col.maxi_bundlevar_offset["U_cid"]+refm.mem_blk_pages_u_col.page_ofst[refm.mem_blk_pages_u_col.rd_page_idx])>>(j*32)) & (2**32-1) );
                                end
                                foreach(data64bit_U_cid[s]) databusbit_U_cid[s]=data64bit_U_cid[s][32-1:0];
                                axi_master_wr_control_r_seq.StableAxiliteNoUpdate=1;
                                axi_master_wr_control_r_seq.datamerge_inavg(databusbit_U_cid, 0, 100, 1);
                                data64bit_U_val_r.delete(); databusbit_U_val_r.delete();
                                axi_master_wr_control_r_seq.StableAxiliteNoUpdate=0;
                                for(int j=0; j < (64+32-1)/32; j++) begin
                                    data64bit_U_val_r.push_back( ((refm.mem_blk_pages_u_val.maxi_bundlevar_offset["U_val_r"]+refm.mem_blk_pages_u_val.page_ofst[refm.mem_blk_pages_u_val.rd_page_idx])>>(j*32)) & (2**32-1) );
                                end
                                foreach(data64bit_U_val_r[s]) databusbit_U_val_r[s]=data64bit_U_val_r[s][32-1:0];
                                axi_master_wr_control_r_seq.StableAxiliteNoUpdate=1;
                                axi_master_wr_control_r_seq.datamerge_inavg(databusbit_U_val_r, 0, 112, 1);
                                data64bit_X_rcsr.delete(); databusbit_X_rcsr.delete();
                                axi_master_wr_control_r_seq.StableAxiliteNoUpdate=0;
                                for(int j=0; j < (64+32-1)/32; j++) begin
                                    data64bit_X_rcsr.push_back( ((refm.mem_blk_pages_x_row.maxi_bundlevar_offset["X_rcsr"]+refm.mem_blk_pages_x_row.page_ofst[refm.mem_blk_pages_x_row.rd_page_idx])>>(j*32)) & (2**32-1) );
                                end
                                foreach(data64bit_X_rcsr[s]) databusbit_X_rcsr[s]=data64bit_X_rcsr[s][32-1:0];
                                axi_master_wr_control_r_seq.StableAxiliteNoUpdate=1;
                                axi_master_wr_control_r_seq.datamerge_inavg(databusbit_X_rcsr, 0, 124, 1);
                                data64bit_X_cid.delete(); databusbit_X_cid.delete();
                                axi_master_wr_control_r_seq.StableAxiliteNoUpdate=0;
                                for(int j=0; j < (64+32-1)/32; j++) begin
                                    data64bit_X_cid.push_back( ((refm.mem_blk_pages_x_col.maxi_bundlevar_offset["X_cid"]+refm.mem_blk_pages_x_col.page_ofst[refm.mem_blk_pages_x_col.rd_page_idx])>>(j*32)) & (2**32-1) );
                                end
                                foreach(data64bit_X_cid[s]) databusbit_X_cid[s]=data64bit_X_cid[s][32-1:0];
                                axi_master_wr_control_r_seq.StableAxiliteNoUpdate=1;
                                axi_master_wr_control_r_seq.datamerge_inavg(databusbit_X_cid, 0, 136, 1);
                                data64bit_X_val_r.delete(); databusbit_X_val_r.delete();
                                axi_master_wr_control_r_seq.StableAxiliteNoUpdate=0;
                                for(int j=0; j < (64+32-1)/32; j++) begin
                                    data64bit_X_val_r.push_back( ((refm.mem_blk_pages_x_val.maxi_bundlevar_offset["X_val_r"]+refm.mem_blk_pages_x_val.page_ofst[refm.mem_blk_pages_x_val.rd_page_idx])>>(j*32)) & (2**32-1) );
                                end
                                foreach(data64bit_X_val_r[s]) databusbit_X_val_r[s]=data64bit_X_val_r[s][32-1:0];
                                axi_master_wr_control_r_seq.StableAxiliteNoUpdate=1;
                                axi_master_wr_control_r_seq.datamerge_inavg(databusbit_X_val_r, 0, 148, 1);
                                `uvm_send(axi_master_wr_control_r_seq);
                                refm.write_data_finish_control_r = 1;
                                `uvm_info("control_r data writting thread", $sformatf("%0dth(total 3): waiting for all write data finish event",i), UVM_LOW)
                                wait(refm.allaxilite_write_data_finish.triggered);
                                refm.write_data_finish_control_r = 0;
                                `uvm_info("control_r wait for ap_ready for next trans", $sformatf("%0dth(total 3): begin to wait",i), UVM_LOW)
                                wait(refm.dut2tb_ap_ready.triggered);
                                wait(refm.ap_done_for_nexttrans.triggered);
                                #0.01; //make sure mem incr_rd_page_idx is called first
                            end
                        end
                    join
                end

                begin
                    for(int j=0; j<3; j=j+refm.ap_done_cnt) @refm.ap_done_for_nexttrans;
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

            p_sequencer.a_row_sqr.stop_sequences();
            p_sequencer.a_col_sqr.stop_sequences();
            p_sequencer.a_val_sqr.stop_sequences();
            p_sequencer.l_row_sqr.stop_sequences();
            p_sequencer.l_col_sqr.stop_sequences();
            p_sequencer.l_val_sqr.stop_sequences();
            p_sequencer.u_row_sqr.stop_sequences();
            p_sequencer.u_col_sqr.stop_sequences();
            p_sequencer.u_val_sqr.stop_sequences();
            p_sequencer.x_row_sqr.stop_sequences();
            p_sequencer.x_col_sqr.stop_sequences();
            p_sequencer.x_val_sqr.stop_sequences();
            p_sequencer.control_sqr.stop_sequences();
            p_sequencer.control_r_sqr.stop_sequences();
            disable fork;
                                                                                                    
            starting_phase.drop_objection(this);                                                    
                                                                                                    
        endtask                                                                                     
    endclass                                                                                        
                                                                                                    
`endif                                                                                              
