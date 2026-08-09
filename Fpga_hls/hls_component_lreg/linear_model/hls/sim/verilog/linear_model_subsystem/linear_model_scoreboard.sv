//==============================================================
//Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2025.1 (64-bit)
//Tool Version Limit: 2025.05
//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
//
//==============================================================
`ifndef LINEAR_MODEL_SCOREBOARD__SV                                                       
    `define LINEAR_MODEL_SCOREBOARD__SV                                                   
                                                                                               
                                                                                               
    class linear_model_scoreboard extends uvm_component;                                        
                                                                                               
        linear_model_reference_model refm;                                                      
                                                                                               
                                                                                               
        `uvm_component_utils_begin(linear_model_scoreboard)                                     
        `uvm_field_object(refm  , UVM_DEFAULT)                                                 
        `uvm_component_utils_end                                                               
                                                                                               
        virtual function void build_phase(uvm_phase phase);                                    
            if (!uvm_config_db #(linear_model_reference_model)::get(this, "", "refm", refm))
                `uvm_fatal(this.get_full_name(), "No refm from high level")                  
            `uvm_info(this.get_full_name(), "get reference model by uvm_config_db", UVM_MEDIUM) 
                                                                                               
        endfunction                                                                            
                                                                                               
        function new (string name = "", uvm_component parent = null);                        
            super.new(name, parent);                                                           
        endfunction                                                                            
                                                                                               
        virtual task run_phase(uvm_phase phase);                                               

            fork                                                                               
                forever begin
                    @refm.allaxilite_write_data_finish;
                    `uvm_info(this.get_full_name(), "receive allaxilite_write_finish axilite write_mem_page_process", UVM_LOW)
                    void'(refm.mem_blk_pages_HLS_LINEAR_PERIPH_BUS_x.pages.pop_front());
                    void'(refm.mem_blk_pages_HLS_LINEAR_PERIPH_BUS_m.pages.pop_front());
                    void'(refm.mem_blk_pages_HLS_LINEAR_PERIPH_BUS_c.pages.pop_front());
                end
                forever begin
                    @refm.allaxilite_read_data_finish;
                    `uvm_info(this.get_full_name(), "receive allaxilite_read_finish axilite_read_mem_page_process", UVM_LOW)
                    refm.mem_blk_pages_HLS_LINEAR_PERIPH_BUS_y.tvout_dump_frontpage(1);
                    refm.mem_blk_pages_HLS_LINEAR_PERIPH_BUS_done.tvout_dump_frontpage(1);
                end
                                                                                               
                forever begin                                                                  
                    @refm.dut2tb_ap_done;                                                             
                    `uvm_info(this.get_full_name(), "receive ap_done_for_nexttrans and do axim dump", UVM_LOW)           
                end                                                                            
                begin                                                                          
                    @refm.finish;                                                              
                    `uvm_info(this.get_full_name(), "receive FINISH", UVM_LOW)               
                end                                                                            
            join                                                                               
        endtask                                                                                
                                                                                               
        virtual function void write_axi_wtr_HLS_LINEAR_PERIPH_BUS(axi_pkg::axi_transfer tr);
        endfunction

        virtual function void write_axi_rtr_HLS_LINEAR_PERIPH_BUS(axi_pkg::axi_transfer tr);
        endfunction

    endclass                                                                                   
                                                                                               
`endif                                                                                         
