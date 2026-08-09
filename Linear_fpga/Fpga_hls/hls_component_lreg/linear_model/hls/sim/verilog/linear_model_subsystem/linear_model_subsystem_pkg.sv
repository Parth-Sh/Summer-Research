//==============================================================
//Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2025.1 (64-bit)
//Tool Version Limit: 2025.05
//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
//
//==============================================================
`timescale 1ns/1ps 

`ifndef LINEAR_MODEL_SUBSYSTEM_PKG__SV          
    `define LINEAR_MODEL_SUBSYSTEM_PKG__SV      
                                                     
    package linear_model_subsystem_pkg;               
                                                     
        import uvm_pkg::*;                           
        import file_agent_pkg::*;                    
        import axi_pkg::*;
                                                     
        `include "uvm_macros.svh"                  
                                                     
        `include "linear_model_config.sv"           
        `include "linear_model_reference_model.sv"  
        `include "linear_model_scoreboard.sv"       
        `include "linear_model_subsystem_monitor.sv"
        `include "linear_model_virtual_sequencer.sv"
        `include "linear_model_pkg_sequence_lib.sv" 
        `include "linear_model_env.sv"              
                                                     
    endpackage                                       
                                                     
`endif                                               
