//==============================================================
//Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2025.1 (64-bit)
//Tool Version Limit: 2025.05
//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
//
//==============================================================
`ifndef T_INT_SUBSYS_TEST_SEQUENCE_LIB__SV                                              
    `define T_INT_SUBSYS_TEST_SEQUENCE_LIB__SV                                          
                                                                                                    
                                                                                                    
    `include "uvm_macros.svh"                                                                     
                                                                                                    
    class t_int_subsys_test_sequence_lib extends uvm_sequence;                                
                                                                                                    
        function new (string name = "t_int_subsys_test_sequence_lib");                      
            super.new(name);                                                                        
            `uvm_info(this.get_full_name(), "new is called", UVM_LOW)                             
        endfunction                                                                                 
                                                                                                    
        `uvm_object_utils(t_int_subsys_test_sequence_lib)                                     
        `uvm_declare_p_sequencer(t_int_virtual_sequencer)                                     
                                                                                                    
        virtual task body();                                                                        
            uvm_phase starting_phase;                                                               
            virtual interface misc_interface misc_if;                                               
            t_int_reference_model refm;                                                       
                                                                                                    
            axi_pkg::axi_busdatas_master_sequence#(7, 32) axi_master_wr_HLS_TREEADD_PERIPH_BUS_seq;
            axi_pkg::axi_busdatas_master_sequence#(7, 32) axi_master_rd_HLS_TREEADD_PERIPH_BUS_seq;
            axi_pkg::axi_busdatas_master_sequence#(7, 32) axi_master_poll_HLS_TREEADD_PERIPH_BUS_seq;

            if (!uvm_config_db#(t_int_reference_model)::get(p_sequencer,"", "refm", refm))
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
                        begin
                            int HLS_TREEADD_PERIPH_BUS_page_idx_bak;
                            `uvm_create_on(axi_master_wr_HLS_TREEADD_PERIPH_BUS_seq, p_sequencer.HLS_TREEADD_PERIPH_BUS_sqr);
                            axi_master_wr_HLS_TREEADD_PERIPH_BUS_seq.misc_if = refm.misc_if;
                            axi_master_wr_HLS_TREEADD_PERIPH_BUS_seq.ap_done    = refm.ap_done_for_nexttrans   ;
                            axi_master_wr_HLS_TREEADD_PERIPH_BUS_seq.ap_ready   = refm.ap_ready_for_nexttrans  ;
                            axi_master_wr_HLS_TREEADD_PERIPH_BUS_seq.finish     = refm.finish ;
                            axi_master_wr_HLS_TREEADD_PERIPH_BUS_seq.isusr_delay = axi_pkg::NO_DELAY;
                            for(int i=0; i<1; i++) begin
                                logic[63:0] data64bit_a[$];
                                logic[32-1:0] databusbit_a[$];
                                logic[63:0] data64bit_b[$];
                                logic[32-1:0] databusbit_b[$];
                                logic[63:0] data64bit_c[$];
                                logic[32-1:0] databusbit_c[$];
                                logic[63:0] data64bit_d[$];
                                logic[32-1:0] databusbit_d[$];
                                logic[63:0] data64bit_e[$];
                                logic[32-1:0] databusbit_e[$];
                                logic[63:0] data64bit_f[$];
                                logic[32-1:0] databusbit_f[$];
                                logic[63:0] data64bit_g[$];
                                logic[32-1:0] databusbit_g[$];
                                logic[63:0] data64bit_h[$];
                                logic[32-1:0] databusbit_h[$];
                                data64bit_a.delete(); databusbit_a.delete();
                                axi_master_wr_HLS_TREEADD_PERIPH_BUS_seq.StableAxiliteNoUpdate=0;
                                refm.mem_blk_pages_HLS_TREEADD_PERIPH_BUS_a.tobusdata(data64bit_a, refm.mem_blk_pages_HLS_TREEADD_PERIPH_BUS_a.rd_page_idx, 32);
                                foreach(data64bit_a[s]) databusbit_a[s]=data64bit_a[s][32-1:0];
                                axi_master_wr_HLS_TREEADD_PERIPH_BUS_seq.StableAxiliteNoUpdate=1;
                                axi_master_wr_HLS_TREEADD_PERIPH_BUS_seq.datamerge_inavg(databusbit_a, 0, 16, 1);
                                data64bit_b.delete(); databusbit_b.delete();
                                axi_master_wr_HLS_TREEADD_PERIPH_BUS_seq.StableAxiliteNoUpdate=0;
                                refm.mem_blk_pages_HLS_TREEADD_PERIPH_BUS_b.tobusdata(data64bit_b, refm.mem_blk_pages_HLS_TREEADD_PERIPH_BUS_b.rd_page_idx, 32);
                                foreach(data64bit_b[s]) databusbit_b[s]=data64bit_b[s][32-1:0];
                                axi_master_wr_HLS_TREEADD_PERIPH_BUS_seq.StableAxiliteNoUpdate=1;
                                axi_master_wr_HLS_TREEADD_PERIPH_BUS_seq.datamerge_inavg(databusbit_b, 0, 24, 1);
                                data64bit_c.delete(); databusbit_c.delete();
                                axi_master_wr_HLS_TREEADD_PERIPH_BUS_seq.StableAxiliteNoUpdate=0;
                                refm.mem_blk_pages_HLS_TREEADD_PERIPH_BUS_c.tobusdata(data64bit_c, refm.mem_blk_pages_HLS_TREEADD_PERIPH_BUS_c.rd_page_idx, 32);
                                foreach(data64bit_c[s]) databusbit_c[s]=data64bit_c[s][32-1:0];
                                axi_master_wr_HLS_TREEADD_PERIPH_BUS_seq.StableAxiliteNoUpdate=1;
                                axi_master_wr_HLS_TREEADD_PERIPH_BUS_seq.datamerge_inavg(databusbit_c, 0, 32, 1);
                                data64bit_d.delete(); databusbit_d.delete();
                                axi_master_wr_HLS_TREEADD_PERIPH_BUS_seq.StableAxiliteNoUpdate=0;
                                refm.mem_blk_pages_HLS_TREEADD_PERIPH_BUS_d.tobusdata(data64bit_d, refm.mem_blk_pages_HLS_TREEADD_PERIPH_BUS_d.rd_page_idx, 32);
                                foreach(data64bit_d[s]) databusbit_d[s]=data64bit_d[s][32-1:0];
                                axi_master_wr_HLS_TREEADD_PERIPH_BUS_seq.StableAxiliteNoUpdate=1;
                                axi_master_wr_HLS_TREEADD_PERIPH_BUS_seq.datamerge_inavg(databusbit_d, 0, 40, 1);
                                data64bit_e.delete(); databusbit_e.delete();
                                axi_master_wr_HLS_TREEADD_PERIPH_BUS_seq.StableAxiliteNoUpdate=0;
                                refm.mem_blk_pages_HLS_TREEADD_PERIPH_BUS_e.tobusdata(data64bit_e, refm.mem_blk_pages_HLS_TREEADD_PERIPH_BUS_e.rd_page_idx, 32);
                                foreach(data64bit_e[s]) databusbit_e[s]=data64bit_e[s][32-1:0];
                                axi_master_wr_HLS_TREEADD_PERIPH_BUS_seq.StableAxiliteNoUpdate=1;
                                axi_master_wr_HLS_TREEADD_PERIPH_BUS_seq.datamerge_inavg(databusbit_e, 0, 48, 1);
                                data64bit_f.delete(); databusbit_f.delete();
                                axi_master_wr_HLS_TREEADD_PERIPH_BUS_seq.StableAxiliteNoUpdate=0;
                                refm.mem_blk_pages_HLS_TREEADD_PERIPH_BUS_f.tobusdata(data64bit_f, refm.mem_blk_pages_HLS_TREEADD_PERIPH_BUS_f.rd_page_idx, 32);
                                foreach(data64bit_f[s]) databusbit_f[s]=data64bit_f[s][32-1:0];
                                axi_master_wr_HLS_TREEADD_PERIPH_BUS_seq.StableAxiliteNoUpdate=1;
                                axi_master_wr_HLS_TREEADD_PERIPH_BUS_seq.datamerge_inavg(databusbit_f, 0, 56, 1);
                                data64bit_g.delete(); databusbit_g.delete();
                                axi_master_wr_HLS_TREEADD_PERIPH_BUS_seq.StableAxiliteNoUpdate=0;
                                refm.mem_blk_pages_HLS_TREEADD_PERIPH_BUS_g.tobusdata(data64bit_g, refm.mem_blk_pages_HLS_TREEADD_PERIPH_BUS_g.rd_page_idx, 32);
                                foreach(data64bit_g[s]) databusbit_g[s]=data64bit_g[s][32-1:0];
                                axi_master_wr_HLS_TREEADD_PERIPH_BUS_seq.StableAxiliteNoUpdate=1;
                                axi_master_wr_HLS_TREEADD_PERIPH_BUS_seq.datamerge_inavg(databusbit_g, 0, 64, 1);
                                data64bit_h.delete(); databusbit_h.delete();
                                axi_master_wr_HLS_TREEADD_PERIPH_BUS_seq.StableAxiliteNoUpdate=0;
                                refm.mem_blk_pages_HLS_TREEADD_PERIPH_BUS_h.tobusdata(data64bit_h, refm.mem_blk_pages_HLS_TREEADD_PERIPH_BUS_h.rd_page_idx, 32);
                                foreach(data64bit_h[s]) databusbit_h[s]=data64bit_h[s][32-1:0];
                                axi_master_wr_HLS_TREEADD_PERIPH_BUS_seq.StableAxiliteNoUpdate=1;
                                axi_master_wr_HLS_TREEADD_PERIPH_BUS_seq.datamerge_inavg(databusbit_h, 0, 72, 1);
                                `uvm_send(axi_master_wr_HLS_TREEADD_PERIPH_BUS_seq);
                                @(posedge refm.misc_if.clock); //wait address 2 rsp done
                                @(posedge refm.misc_if.clock);
                                refm.write_data_finish_HLS_TREEADD_PERIPH_BUS = 1;
                                `uvm_info("HLS_TREEADD_PERIPH_BUS data writting thread", $sformatf("%0dth(total 1): waiting for all write data finish event",i), UVM_LOW)
                                wait(refm.allaxilite_write_data_finish.triggered);
                                refm.write_data_finish_HLS_TREEADD_PERIPH_BUS = 0;
                                fork
                                    begin
                                        axi_master_wr_HLS_TREEADD_PERIPH_BUS_seq.wr_addr_data.push_back( (1<<0)+(0<<32) );
                                        `uvm_info("HLS_TREEADD_PERIPH_BUS start dut by axilite", $sformatf("%0dth(total 1): begin to set start bit",i), UVM_LOW)
                                        `uvm_send(axi_master_wr_HLS_TREEADD_PERIPH_BUS_seq);
                                    end
                                    begin
                                        `uvm_info("HLS_TREEADD_PERIPH_BUS wait for ap_ready for next trans", $sformatf("%0dth(total 1): begin to wait",i), UVM_LOW)
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
                                        `uvm_create_on(axi_master_poll_HLS_TREEADD_PERIPH_BUS_seq, p_sequencer.HLS_TREEADD_PERIPH_BUS_sqr);
                                        axi_master_poll_HLS_TREEADD_PERIPH_BUS_seq.isusr_delay = axi_pkg::NO_DELAY;
                                        axi_master_poll_HLS_TREEADD_PERIPH_BUS_seq.misc_if = refm.misc_if;
                                        axi_master_poll_HLS_TREEADD_PERIPH_BUS_seq.rd_addr.push_back(0);
                                        `uvm_send(axi_master_poll_HLS_TREEADD_PERIPH_BUS_seq)
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
                            `uvm_create_on(axi_master_rd_HLS_TREEADD_PERIPH_BUS_seq, p_sequencer.HLS_TREEADD_PERIPH_BUS_sqr)
                            axi_master_rd_HLS_TREEADD_PERIPH_BUS_seq.misc_if = refm.misc_if;
                            axi_master_rd_HLS_TREEADD_PERIPH_BUS_seq.ap_done    = refm.ap_done_for_nexttrans   ;
                            axi_master_rd_HLS_TREEADD_PERIPH_BUS_seq.ap_ready   = refm.ap_ready_for_nexttrans  ;
                            axi_master_rd_HLS_TREEADD_PERIPH_BUS_seq.finish     = refm.finish ;
                            axi_master_rd_HLS_TREEADD_PERIPH_BUS_seq.isusr_delay = axi_pkg::NO_DELAY;
                            for(int j=0; j<1; j=j+refm.ap_done_cnt) begin
                                logic[32-1:0] databusbit[$];
                                @refm.dut2tb_ap_done;
                                axi_master_rd_HLS_TREEADD_PERIPH_BUS_seq.datamerge_inavg(databusbit, (1*32+32-1)/32, 80, 0);
                                axi_master_rd_HLS_TREEADD_PERIPH_BUS_seq.datamerge_inavg(databusbit, (1*16+32-1)/32, 96, 0);
                                    `uvm_info("axilite data read", $sformatf("%0dth(total 1) data read sequence is started",j), UVM_LOW)
                                `uvm_send(axi_master_rd_HLS_TREEADD_PERIPH_BUS_seq);
                                @(posedge refm.misc_if.clock); //wait address 2 rdata rsp done
                                @(posedge refm.misc_if.clock);
                                refm.read_data_finish_HLS_TREEADD_PERIPH_BUS = 1;
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

            p_sequencer.HLS_TREEADD_PERIPH_BUS_sqr.stop_sequences();
            disable fork;
                                                                                                    
            starting_phase.drop_objection(this);                                                    
                                                                                                    
        endtask                                                                                     
    endclass                                                                                        
                                                                                                    
`endif                                                                                              
