//==============================================================
//Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2025.1 (64-bit)
//Tool Version Limit: 2025.05
//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
//
//==============================================================
`timescale 1ns/1ps 

`ifndef T_INT_SUBSYSTEM_PKG__SV          
    `define T_INT_SUBSYSTEM_PKG__SV      
                                                     
    package t_int_subsystem_pkg;               
                                                     
        import uvm_pkg::*;                           
        import file_agent_pkg::*;                    
        import axi_pkg::*;
                                                     
        `include "uvm_macros.svh"                  
                                                     
        `include "t_int_config.sv"           
        `include "t_int_reference_model.sv"  
        `include "t_int_scoreboard.sv"       
        `include "t_int_subsystem_monitor.sv"
        `include "t_int_virtual_sequencer.sv"
        `include "t_int_pkg_sequence_lib.sv" 
        `include "t_int_env.sv"              
                                                     
    endpackage                                       
                                                     
`endif                                               
