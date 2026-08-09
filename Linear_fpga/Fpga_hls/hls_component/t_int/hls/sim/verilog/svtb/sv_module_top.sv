//==============================================================
//Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2025.1 (64-bit)
//Tool Version Limit: 2025.05
//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
//
//==============================================================

`ifndef SV_MODULE_TOP_SV
`define SV_MODULE_TOP_SV


`timescale 1ns/1ps


`include "uvm_macros.svh"
import uvm_pkg::*;
import file_agent_pkg::*;
import t_int_subsystem_pkg::*;
`include "t_int_subsys_test_sequence_lib.sv"
`include "t_int_test_lib.sv"


module sv_module_top;


    misc_interface              misc_if ( .clock(apatb_t_int_top.AESL_clock), .reset(apatb_t_int_top.AESL_reset) );
    assign misc_if.dut2tb_ap_ready = apatb_t_int_top.AESL_inst_t_int.ap_ready;
    assign misc_if.dut2tb_ap_done_kernel = apatb_t_int_top.AESL_inst_t_int.ap_done;
    initial begin
        uvm_config_db #(virtual misc_interface)::set(null, "uvm_test_top.top_env.*", "misc_if", misc_if);
    end


    axi_if #(7,4,4,3,1)  axi_HLS_TREEADD_PERIPH_BUS_if (.clk  (apatb_t_int_top.AESL_clock), .rst(apatb_t_int_top.AESL_reset));
    assign apatb_t_int_top.HLS_TREEADD_PERIPH_BUS_AWADDR = axi_HLS_TREEADD_PERIPH_BUS_if.AWADDR;
    assign apatb_t_int_top.HLS_TREEADD_PERIPH_BUS_AWVALID = axi_HLS_TREEADD_PERIPH_BUS_if.AWVALID;
    assign axi_HLS_TREEADD_PERIPH_BUS_if.AWREADY = apatb_t_int_top.HLS_TREEADD_PERIPH_BUS_AWREADY;
    assign apatb_t_int_top.HLS_TREEADD_PERIPH_BUS_WVALID = axi_HLS_TREEADD_PERIPH_BUS_if.WVALID;
    assign axi_HLS_TREEADD_PERIPH_BUS_if.WREADY = apatb_t_int_top.HLS_TREEADD_PERIPH_BUS_WREADY;
    assign apatb_t_int_top.HLS_TREEADD_PERIPH_BUS_WDATA = axi_HLS_TREEADD_PERIPH_BUS_if.WDATA;
    assign apatb_t_int_top.HLS_TREEADD_PERIPH_BUS_WSTRB = axi_HLS_TREEADD_PERIPH_BUS_if.WSTRB;
    assign apatb_t_int_top.HLS_TREEADD_PERIPH_BUS_ARADDR = axi_HLS_TREEADD_PERIPH_BUS_if.ARADDR;
    assign apatb_t_int_top.HLS_TREEADD_PERIPH_BUS_ARVALID = axi_HLS_TREEADD_PERIPH_BUS_if.ARVALID;
    assign axi_HLS_TREEADD_PERIPH_BUS_if.ARREADY = apatb_t_int_top.HLS_TREEADD_PERIPH_BUS_ARREADY;
    assign axi_HLS_TREEADD_PERIPH_BUS_if.RVALID = apatb_t_int_top.HLS_TREEADD_PERIPH_BUS_RVALID;
    assign apatb_t_int_top.HLS_TREEADD_PERIPH_BUS_RREADY = axi_HLS_TREEADD_PERIPH_BUS_if.RREADY;
    assign axi_HLS_TREEADD_PERIPH_BUS_if.RDATA = apatb_t_int_top.HLS_TREEADD_PERIPH_BUS_RDATA;
    assign axi_HLS_TREEADD_PERIPH_BUS_if.RRESP = apatb_t_int_top.HLS_TREEADD_PERIPH_BUS_RRESP;
    assign axi_HLS_TREEADD_PERIPH_BUS_if.BVALID = apatb_t_int_top.HLS_TREEADD_PERIPH_BUS_BVALID;
    assign apatb_t_int_top.HLS_TREEADD_PERIPH_BUS_BREADY = axi_HLS_TREEADD_PERIPH_BUS_if.BREADY;
    assign axi_HLS_TREEADD_PERIPH_BUS_if.BRESP = apatb_t_int_top.HLS_TREEADD_PERIPH_BUS_BRESP;
    assign axi_HLS_TREEADD_PERIPH_BUS_if.BID = 0;
    assign axi_HLS_TREEADD_PERIPH_BUS_if.RID = 0;
    assign axi_HLS_TREEADD_PERIPH_BUS_if.RLAST = 1;
    initial begin
        uvm_config_db #( virtual axi_if#(7,4,4,3,1) )::set(null, "uvm_test_top.top_env.axi_lite_HLS_TREEADD_PERIPH_BUS.*", "vif", axi_HLS_TREEADD_PERIPH_BUS_if);
    end


    initial begin
        run_test();
    end
endmodule
`endif
