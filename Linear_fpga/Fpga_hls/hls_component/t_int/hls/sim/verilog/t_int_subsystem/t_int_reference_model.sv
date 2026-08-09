//==============================================================
//Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2025.1 (64-bit)
//Tool Version Limit: 2025.05
//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
//
//==============================================================

`ifndef T_INT_REFERENCE_MODEL_SV
`define T_INT_REFERENCE_MODEL_SV

class t_int_reference_model extends uvm_component;
`define TV_IN_a "../tv/cdatafile/c.t_int.autotvin_a.dat"
`define TV_OUT_a ""
`define TV_IN_b "../tv/cdatafile/c.t_int.autotvin_b.dat"
`define TV_OUT_b ""
`define TV_IN_c "../tv/cdatafile/c.t_int.autotvin_c.dat"
`define TV_OUT_c ""
`define TV_IN_d "../tv/cdatafile/c.t_int.autotvin_d.dat"
`define TV_OUT_d ""
`define TV_IN_e "../tv/cdatafile/c.t_int.autotvin_e.dat"
`define TV_OUT_e ""
`define TV_IN_f "../tv/cdatafile/c.t_int.autotvin_f.dat"
`define TV_OUT_f ""
`define TV_IN_g "../tv/cdatafile/c.t_int.autotvin_g.dat"
`define TV_OUT_g ""
`define TV_IN_h "../tv/cdatafile/c.t_int.autotvin_h.dat"
`define TV_OUT_h ""
`define TV_IN_r ""
`define TV_OUT_r "../tv/rtldatafile/rtl.t_int.autotvout_r.dat"
`define TV_IN_done ""
`define TV_OUT_done "../tv/rtldatafile/rtl.t_int.autotvout_done.dat"
    bit  read_data_finish_HLS_TREEADD_PERIPH_BUS;
    bit  write_data_finish_HLS_TREEADD_PERIPH_BUS;
    event allaxilite_read_data_finish;
    event allaxilite_read_one_transaction_finish;
    event allaxilite_write_data_finish;
    event allaxilite_write_one_transaction_finish;
    event write_start_finish;
    int trans_num_total = 1;
    int trans_num_idx;
    int ap_done_cnt=1;
    event dut2tb_ap_ready;
    event dut2tb_ap_done;
    event ap_ready_for_nexttrans;
    event ap_done_for_nexttrans;
    event finish;
    t_int_config t_int_cfg;
    virtual interface misc_interface misc_if;

    mem_model_pages#(32,8) mem_blk_pages_HLS_TREEADD_PERIPH_BUS_a;
    mem_model_pages#(32,8) mem_blk_pages_HLS_TREEADD_PERIPH_BUS_b;
    mem_model_pages#(32,8) mem_blk_pages_HLS_TREEADD_PERIPH_BUS_c;
    mem_model_pages#(32,8) mem_blk_pages_HLS_TREEADD_PERIPH_BUS_d;
    mem_model_pages#(32,8) mem_blk_pages_HLS_TREEADD_PERIPH_BUS_e;
    mem_model_pages#(32,8) mem_blk_pages_HLS_TREEADD_PERIPH_BUS_f;
    mem_model_pages#(32,8) mem_blk_pages_HLS_TREEADD_PERIPH_BUS_g;
    mem_model_pages#(32,8) mem_blk_pages_HLS_TREEADD_PERIPH_BUS_h;
    mem_model_pages#(32,8) mem_blk_pages_HLS_TREEADD_PERIPH_BUS_r;
    mem_model_pages#(16,8) mem_blk_pages_HLS_TREEADD_PERIPH_BUS_done;
    
    `uvm_component_utils_begin(t_int_reference_model)
        `uvm_field_int (trans_num_idx, UVM_DEFAULT)
    `uvm_component_utils_end

    virtual function void build_phase(uvm_phase phase);
        super.build_phase(phase);
        if(!uvm_config_db#(virtual misc_interface)::get(this, "", "misc_if", misc_if))
            `uvm_fatal(this.get_full_name(), "No misc_if from high level")
    endfunction

    function new (string name = "", uvm_component parent = null);
        super.new (name, parent);
        trans_num_idx= 0;
    endfunction

    virtual task run_phase(uvm_phase phase);
        string fpath[$];
misc_if.dut2tb_ap_done = 0;

        fpath.push_back(`TV_IN_a);
        mem_blk_pages_HLS_TREEADD_PERIPH_BUS_a = mem_model_pages#(32,8)::type_id::create("mem_blk_pages_HLS_TREEADD_PERIPH_BUS_a");
        mem_blk_pages_HLS_TREEADD_PERIPH_BUS_a.tvinload_pagechk_atinit(fpath, 1*((32+7)/8), 0, 16, "");
        fpath.delete;


        fpath.push_back(`TV_IN_b);
        mem_blk_pages_HLS_TREEADD_PERIPH_BUS_b = mem_model_pages#(32,8)::type_id::create("mem_blk_pages_HLS_TREEADD_PERIPH_BUS_b");
        mem_blk_pages_HLS_TREEADD_PERIPH_BUS_b.tvinload_pagechk_atinit(fpath, 1*((32+7)/8), 0, 24, "");
        fpath.delete;


        fpath.push_back(`TV_IN_c);
        mem_blk_pages_HLS_TREEADD_PERIPH_BUS_c = mem_model_pages#(32,8)::type_id::create("mem_blk_pages_HLS_TREEADD_PERIPH_BUS_c");
        mem_blk_pages_HLS_TREEADD_PERIPH_BUS_c.tvinload_pagechk_atinit(fpath, 1*((32+7)/8), 0, 32, "");
        fpath.delete;


        fpath.push_back(`TV_IN_d);
        mem_blk_pages_HLS_TREEADD_PERIPH_BUS_d = mem_model_pages#(32,8)::type_id::create("mem_blk_pages_HLS_TREEADD_PERIPH_BUS_d");
        mem_blk_pages_HLS_TREEADD_PERIPH_BUS_d.tvinload_pagechk_atinit(fpath, 1*((32+7)/8), 0, 40, "");
        fpath.delete;


        fpath.push_back(`TV_IN_e);
        mem_blk_pages_HLS_TREEADD_PERIPH_BUS_e = mem_model_pages#(32,8)::type_id::create("mem_blk_pages_HLS_TREEADD_PERIPH_BUS_e");
        mem_blk_pages_HLS_TREEADD_PERIPH_BUS_e.tvinload_pagechk_atinit(fpath, 1*((32+7)/8), 0, 48, "");
        fpath.delete;


        fpath.push_back(`TV_IN_f);
        mem_blk_pages_HLS_TREEADD_PERIPH_BUS_f = mem_model_pages#(32,8)::type_id::create("mem_blk_pages_HLS_TREEADD_PERIPH_BUS_f");
        mem_blk_pages_HLS_TREEADD_PERIPH_BUS_f.tvinload_pagechk_atinit(fpath, 1*((32+7)/8), 0, 56, "");
        fpath.delete;


        fpath.push_back(`TV_IN_g);
        mem_blk_pages_HLS_TREEADD_PERIPH_BUS_g = mem_model_pages#(32,8)::type_id::create("mem_blk_pages_HLS_TREEADD_PERIPH_BUS_g");
        mem_blk_pages_HLS_TREEADD_PERIPH_BUS_g.tvinload_pagechk_atinit(fpath, 1*((32+7)/8), 0, 64, "");
        fpath.delete;


        fpath.push_back(`TV_IN_h);
        mem_blk_pages_HLS_TREEADD_PERIPH_BUS_h = mem_model_pages#(32,8)::type_id::create("mem_blk_pages_HLS_TREEADD_PERIPH_BUS_h");
        mem_blk_pages_HLS_TREEADD_PERIPH_BUS_h.tvinload_pagechk_atinit(fpath, 1*((32+7)/8), 0, 72, "");
        fpath.delete;


        mem_blk_pages_HLS_TREEADD_PERIPH_BUS_r = mem_model_pages#(32,8)::type_id::create("mem_blk_pages_HLS_TREEADD_PERIPH_BUS_r");
        mem_blk_pages_HLS_TREEADD_PERIPH_BUS_r.init_pages(trans_num_total, 1*((32+7)/8), 80);
        mem_blk_pages_HLS_TREEADD_PERIPH_BUS_r.tvoutdump_atinit(`TV_OUT_r);


        mem_blk_pages_HLS_TREEADD_PERIPH_BUS_done = mem_model_pages#(16,8)::type_id::create("mem_blk_pages_HLS_TREEADD_PERIPH_BUS_done");
        mem_blk_pages_HLS_TREEADD_PERIPH_BUS_done.init_pages(trans_num_total, 1*((16+7)/8), 96);
        mem_blk_pages_HLS_TREEADD_PERIPH_BUS_done.tvoutdump_atinit(`TV_OUT_done);

        fork
            forever begin
                wait(write_data_finish_HLS_TREEADD_PERIPH_BUS);
                `uvm_info("", "trigger_allaxilite_data_write_finish", UVM_LOW)
                @(posedge misc_if.clock);
                write_data_finish_HLS_TREEADD_PERIPH_BUS = 0;
                -> allaxilite_write_data_finish;
            end
            forever begin
                wait(read_data_finish_HLS_TREEADD_PERIPH_BUS);
                `uvm_info("", "trigger_allaxilite_data_read_finish", UVM_LOW)
                @(posedge misc_if.clock);
                read_data_finish_HLS_TREEADD_PERIPH_BUS = 0;
                -> allaxilite_read_data_finish;
            end
            forever begin
                //this is non-pipeline case
                forever begin
                    @(negedge misc_if.clock);
                    if(misc_if.dut2tb_ap_done===1) break;
                end
                @(posedge misc_if.clock);
                @allaxilite_read_data_finish;
                @(posedge misc_if.clock);
                @allaxilite_write_data_finish;
                @(posedge misc_if.clock);
                -> ap_ready_for_nexttrans;
                `uvm_info(this.get_full_name(), "trigger event ap_ready_for_nexttrans", UVM_LOW)
                fork
                    begin
                        misc_if.ap_ready_for_nexttrans = 1;
                        @(posedge misc_if.clock);
                        misc_if.ap_ready_for_nexttrans = 0;
                    end
                join_none
            end
            forever begin
                forever begin
                    @(negedge misc_if.clock);
                    if(misc_if.dut2tb_ap_done===1) break;
                end
                @(posedge misc_if.clock);
                fork
                    begin
                        @(negedge misc_if.clock);
                        -> misc_if.dut2tb_ap_done_evt;
                        #0;
                        -> misc_if.dut2tb_ap_ready_evt;
                    end
                join_none
                @allaxilite_read_data_finish;
                @(posedge misc_if.clock);
                -> ap_done_for_nexttrans;
                `uvm_info(this.get_full_name(), "trigger event ap_done_for_nexttrans", UVM_LOW)
                fork
                    begin
                        misc_if.ap_done_for_nexttrans = 1;
                        @(posedge misc_if.clock);
                        misc_if.ap_done_for_nexttrans = 0;
                    end
                join_none
            end

            forever begin
                forever begin
                    @(negedge misc_if.clock);
                    if (misc_if.dut2tb_ap_ready === 1)   break;
                end
                @(posedge misc_if.clock);
                `uvm_info(this.get_full_name(), "trigger event DUT2TB_AP_READY", UVM_LOW)
                -> dut2tb_ap_ready;
                 misc_if.tb2dut_ap_start = 0;
            end
        join
    endtask

    virtual function void write_axi_wtr_HLS_TREEADD_PERIPH_BUS(axi_pkg::axi_transfer tr);
        if(tr.addr == 0 && tr.len == 0 && tr.data[0][0]==1) begin //addr 0 and bit 0 are parameter
            -> write_start_finish;
            misc_if.tb2dut_ap_start = 1;
        end
    endfunction
    virtual function void write_axi_rtr_HLS_TREEADD_PERIPH_BUS(axi_pkg::axi_transfer tr);
            `uvm_info("receive axi read data", tr.sprint(), UVM_HIGH)
        if(tr.addr == 0 && tr.len == 0) begin
            if(tr.data[0][1]==1) begin  //bit 1 is parameter
                `uvm_info("status polling", "ap_done is polled", UVM_LOW);
                fork
                    begin
                        misc_if.dut2tb_ap_done = 1;
                        @(posedge misc_if.clock);
                        #0;
                        misc_if.dut2tb_ap_done = 0;
                        misc_if.tb2dut_ap_continue = 0;
                        -> dut2tb_ap_done;
                    end
                join_none
            end
            begin
                misc_if.dut2tb_ap_idle = tr.data[0][2];
            end
        end else begin
            mem_blk_pages_HLS_TREEADD_PERIPH_BUS_r.write_elems_frontpage(tr.data, tr.byte_addr);
            mem_blk_pages_HLS_TREEADD_PERIPH_BUS_done.write_elems_frontpage(tr.data, tr.byte_addr);
        end
    endfunction
endclass
`endif
