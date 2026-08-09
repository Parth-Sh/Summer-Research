//==============================================================
//Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2025.1 (64-bit)
//Tool Version Limit: 2025.05
//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
//
//==============================================================
`ifndef LINEAR_MODEL_ENV__SV                                                                                   
    `define LINEAR_MODEL_ENV__SV                                                                               
                                                                                                                    
                                                                                                                    
    class linear_model_env extends uvm_env;                                                                          
                                                                                                                    
        linear_model_virtual_sequencer linear_model_virtual_sqr;                                                      
        linear_model_config linear_model_cfg;                                                                         
                                                                                                                    
        axi_pkg::axi_env#(6,4,4,3,1) axi_lite_HLS_LINEAR_PERIPH_BUS;
                                                                                                                    
        linear_model_reference_model   refm;                                                                         
                                                                                                                    
        linear_model_subsystem_monitor subsys_mon;                                                                   
                                                                                                                    
        `uvm_component_utils_begin(linear_model_env)                                                                 
        `uvm_field_object (refm, UVM_DEFAULT | UVM_REFERENCE)                                                       
        `uvm_field_object (linear_model_virtual_sqr, UVM_DEFAULT | UVM_REFERENCE)                                    
        `uvm_field_object (linear_model_cfg        , UVM_DEFAULT)                                                    
        `uvm_component_utils_end                                                                                    
                                                                                                                    
        function new (string name = "linear_model_env", uvm_component parent = null);                              
            super.new(name, parent);                                                                                
        endfunction                                                                                                 
                                                                                                                    
        extern virtual function void build_phase(uvm_phase phase);                                                  
        extern virtual function void connect_phase(uvm_phase phase);                                                
        extern virtual task          run_phase(uvm_phase phase);                                                    
                                                                                                                    
    endclass                                                                                                        
                                                                                                                    
    function void linear_model_env::build_phase(uvm_phase phase);                                                    
        super.build_phase(phase);                                                                                   
        linear_model_cfg = linear_model_config::type_id::create("linear_model_cfg", this);                           
                                                                                                                    

        linear_model_cfg.HLS_LINEAR_PERIPH_BUS_cfg.set_default();
        linear_model_cfg.HLS_LINEAR_PERIPH_BUS_cfg.drv_type = axi_pkg::MASTER;
        linear_model_cfg.HLS_LINEAR_PERIPH_BUS_cfg.reset_level = axi_pkg::RESET_LEVEL_LOW;
        uvm_config_db#(axi_pkg::axi_cfg)::set(this, "axi_lite_HLS_LINEAR_PERIPH_BUS*", "cfg", linear_model_cfg.HLS_LINEAR_PERIPH_BUS_cfg);
        axi_lite_HLS_LINEAR_PERIPH_BUS = axi_pkg::axi_env#(6,4,4,3,1)::type_id::create("axi_lite_HLS_LINEAR_PERIPH_BUS", this);



        refm = linear_model_reference_model::type_id::create("refm", this);


        uvm_config_db#(linear_model_reference_model)::set(this, "*", "refm", refm);


        `uvm_info(this.get_full_name(), "set reference model by uvm_config_db", UVM_LOW)


        subsys_mon = linear_model_subsystem_monitor::type_id::create("subsys_mon", this);


        linear_model_virtual_sqr = linear_model_virtual_sequencer::type_id::create("linear_model_virtual_sqr", this);
        `uvm_info(this.get_full_name(), "build_phase done", UVM_LOW)
    endfunction


    function void linear_model_env::connect_phase(uvm_phase phase);
        super.connect_phase(phase);


        if(linear_model_cfg.HLS_LINEAR_PERIPH_BUS_cfg.drv_type==axi_pkg::MASTER ||linear_model_cfg.HLS_LINEAR_PERIPH_BUS_cfg.drv_type==axi_pkg::SLAVE)
            linear_model_virtual_sqr.HLS_LINEAR_PERIPH_BUS_sqr = axi_lite_HLS_LINEAR_PERIPH_BUS.vsqr;
        axi_lite_HLS_LINEAR_PERIPH_BUS.item_wtr_port.connect(subsys_mon.HLS_LINEAR_PERIPH_BUS_wtr_imp);
        axi_lite_HLS_LINEAR_PERIPH_BUS.item_rtr_port.connect(subsys_mon.HLS_LINEAR_PERIPH_BUS_rtr_imp);
        refm.linear_model_cfg = linear_model_cfg;
        `uvm_info(this.get_full_name(), "connect phase done", UVM_LOW)
    endfunction


    task linear_model_env::run_phase(uvm_phase phase);
        `uvm_info(this.get_full_name(), "linear_model_env is running", UVM_LOW)
    endtask


`endif
