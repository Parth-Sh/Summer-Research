//==============================================================
//Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2025.1 (64-bit)
//Tool Version Limit: 2025.05
//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
//
//==============================================================

`ifndef T_INT_SUBSYSTEM_MONITOR_SV
`define T_INT_SUBSYSTEM_MONITOR_SV

`uvm_analysis_imp_decl(_axi_wtr_HLS_TREEADD_PERIPH_BUS)
`uvm_analysis_imp_decl(_axi_rtr_HLS_TREEADD_PERIPH_BUS)

class t_int_subsystem_monitor extends uvm_component;

    t_int_reference_model refm;
    t_int_scoreboard scbd;

    `uvm_component_utils_begin(t_int_subsystem_monitor)
    `uvm_component_utils_end

    uvm_analysis_imp_axi_wtr_HLS_TREEADD_PERIPH_BUS#(axi_pkg::axi_transfer, t_int_subsystem_monitor) HLS_TREEADD_PERIPH_BUS_wtr_imp;
    uvm_analysis_imp_axi_rtr_HLS_TREEADD_PERIPH_BUS#(axi_pkg::axi_transfer, t_int_subsystem_monitor) HLS_TREEADD_PERIPH_BUS_rtr_imp;

    virtual function void build_phase(uvm_phase phase);
        super.build_phase(phase);
        if (!uvm_config_db#(t_int_reference_model)::get(this, "", "refm", refm))
            `uvm_fatal(this.get_full_name(), "No refm from high level")
        `uvm_info(this.get_full_name(), "get reference model by uvm_config_db", UVM_MEDIUM)
        scbd = t_int_scoreboard::type_id::create("scbd", this);
    endfunction

    virtual function void connect_phase(uvm_phase phase);
        super.connect_phase(phase);
    endfunction

    function new (string name = "", uvm_component parent = null);
        super.new(name, parent);
        HLS_TREEADD_PERIPH_BUS_wtr_imp = new("HLS_TREEADD_PERIPH_BUS_wtr_imp", this);
        HLS_TREEADD_PERIPH_BUS_rtr_imp = new("HLS_TREEADD_PERIPH_BUS_rtr_imp", this);
    endfunction

    virtual function void write_axi_wtr_HLS_TREEADD_PERIPH_BUS(axi_transfer tr);
        refm.write_axi_wtr_HLS_TREEADD_PERIPH_BUS(tr);
        scbd.write_axi_wtr_HLS_TREEADD_PERIPH_BUS(tr);
    endfunction

    virtual function void write_axi_rtr_HLS_TREEADD_PERIPH_BUS(axi_transfer tr);
        refm.write_axi_rtr_HLS_TREEADD_PERIPH_BUS(tr);
        scbd.write_axi_rtr_HLS_TREEADD_PERIPH_BUS(tr);
    endfunction
endclass
`endif
