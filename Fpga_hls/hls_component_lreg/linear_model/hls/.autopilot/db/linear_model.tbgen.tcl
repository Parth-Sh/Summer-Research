set moduleName linear_model
set isTopModule 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set isPipelined_legacy 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set DLRegFirstOffset 0
set DLRegItemOffset 0
set svuvm_can_support 1
set cdfgNum 2
set C_modelName {linear_model}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ x int 32 regular {axi_slave 0}  }
	{ m int 32 regular {axi_slave 0}  }
	{ c int 32 regular {axi_slave 0}  }
	{ y int 32 regular {axi_slave 1}  }
	{ done int 16 regular {axi_slave 1}  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "x", "interface" : "axi_slave", "bundle":"HLS_LINEAR_PERIPH_BUS","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":16}, "offset_end" : {"in":23}} , 
 	{ "Name" : "m", "interface" : "axi_slave", "bundle":"HLS_LINEAR_PERIPH_BUS","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":24}, "offset_end" : {"in":31}} , 
 	{ "Name" : "c", "interface" : "axi_slave", "bundle":"HLS_LINEAR_PERIPH_BUS","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":32}, "offset_end" : {"in":39}} , 
 	{ "Name" : "y", "interface" : "axi_slave", "bundle":"HLS_LINEAR_PERIPH_BUS","type":"ap_vld","bitwidth" : 32, "direction" : "WRITEONLY", "offset" : {"out":40}, "offset_end" : {"out":47}} , 
 	{ "Name" : "done", "interface" : "axi_slave", "bundle":"HLS_LINEAR_PERIPH_BUS","type":"ap_vld","bitwidth" : 16, "direction" : "WRITEONLY", "offset" : {"out":56}, "offset_end" : {"out":63}} ]}
# RTL Port declarations: 
set portNum 20
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ s_axi_HLS_LINEAR_PERIPH_BUS_AWVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_HLS_LINEAR_PERIPH_BUS_AWREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_HLS_LINEAR_PERIPH_BUS_AWADDR sc_in sc_lv 6 signal -1 } 
	{ s_axi_HLS_LINEAR_PERIPH_BUS_WVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_HLS_LINEAR_PERIPH_BUS_WREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_HLS_LINEAR_PERIPH_BUS_WDATA sc_in sc_lv 32 signal -1 } 
	{ s_axi_HLS_LINEAR_PERIPH_BUS_WSTRB sc_in sc_lv 4 signal -1 } 
	{ s_axi_HLS_LINEAR_PERIPH_BUS_ARVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_HLS_LINEAR_PERIPH_BUS_ARREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_HLS_LINEAR_PERIPH_BUS_ARADDR sc_in sc_lv 6 signal -1 } 
	{ s_axi_HLS_LINEAR_PERIPH_BUS_RVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_HLS_LINEAR_PERIPH_BUS_RREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_HLS_LINEAR_PERIPH_BUS_RDATA sc_out sc_lv 32 signal -1 } 
	{ s_axi_HLS_LINEAR_PERIPH_BUS_RRESP sc_out sc_lv 2 signal -1 } 
	{ s_axi_HLS_LINEAR_PERIPH_BUS_BVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_HLS_LINEAR_PERIPH_BUS_BREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_HLS_LINEAR_PERIPH_BUS_BRESP sc_out sc_lv 2 signal -1 } 
	{ interrupt sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "s_axi_HLS_LINEAR_PERIPH_BUS_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "HLS_LINEAR_PERIPH_BUS", "role": "AWADDR" },"address":[{"name":"linear_model","role":"start","value":"0","valid_bit":"0"},{"name":"linear_model","role":"continue","value":"0","valid_bit":"4"},{"name":"linear_model","role":"auto_start","value":"0","valid_bit":"7"},{"name":"x","role":"data","value":"16"},{"name":"m","role":"data","value":"24"},{"name":"c","role":"data","value":"32"}] },
	{ "name": "s_axi_HLS_LINEAR_PERIPH_BUS_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "HLS_LINEAR_PERIPH_BUS", "role": "AWVALID" } },
	{ "name": "s_axi_HLS_LINEAR_PERIPH_BUS_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "HLS_LINEAR_PERIPH_BUS", "role": "AWREADY" } },
	{ "name": "s_axi_HLS_LINEAR_PERIPH_BUS_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "HLS_LINEAR_PERIPH_BUS", "role": "WVALID" } },
	{ "name": "s_axi_HLS_LINEAR_PERIPH_BUS_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "HLS_LINEAR_PERIPH_BUS", "role": "WREADY" } },
	{ "name": "s_axi_HLS_LINEAR_PERIPH_BUS_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "HLS_LINEAR_PERIPH_BUS", "role": "WDATA" } },
	{ "name": "s_axi_HLS_LINEAR_PERIPH_BUS_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "HLS_LINEAR_PERIPH_BUS", "role": "WSTRB" } },
	{ "name": "s_axi_HLS_LINEAR_PERIPH_BUS_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "HLS_LINEAR_PERIPH_BUS", "role": "ARADDR" },"address":[{"name":"linear_model","role":"start","value":"0","valid_bit":"0"},{"name":"linear_model","role":"done","value":"0","valid_bit":"1"},{"name":"linear_model","role":"idle","value":"0","valid_bit":"2"},{"name":"linear_model","role":"ready","value":"0","valid_bit":"3"},{"name":"linear_model","role":"auto_start","value":"0","valid_bit":"7"},{"name":"y","role":"data","value":"40"}, {"name":"y","role":"valid","value":"44","valid_bit":"0"},{"name":"done","role":"data","value":"56"}, {"name":"done","role":"valid","value":"60","valid_bit":"0"}] },
	{ "name": "s_axi_HLS_LINEAR_PERIPH_BUS_ARVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "HLS_LINEAR_PERIPH_BUS", "role": "ARVALID" } },
	{ "name": "s_axi_HLS_LINEAR_PERIPH_BUS_ARREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "HLS_LINEAR_PERIPH_BUS", "role": "ARREADY" } },
	{ "name": "s_axi_HLS_LINEAR_PERIPH_BUS_RVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "HLS_LINEAR_PERIPH_BUS", "role": "RVALID" } },
	{ "name": "s_axi_HLS_LINEAR_PERIPH_BUS_RREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "HLS_LINEAR_PERIPH_BUS", "role": "RREADY" } },
	{ "name": "s_axi_HLS_LINEAR_PERIPH_BUS_RDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "HLS_LINEAR_PERIPH_BUS", "role": "RDATA" } },
	{ "name": "s_axi_HLS_LINEAR_PERIPH_BUS_RRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "HLS_LINEAR_PERIPH_BUS", "role": "RRESP" } },
	{ "name": "s_axi_HLS_LINEAR_PERIPH_BUS_BVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "HLS_LINEAR_PERIPH_BUS", "role": "BVALID" } },
	{ "name": "s_axi_HLS_LINEAR_PERIPH_BUS_BREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "HLS_LINEAR_PERIPH_BUS", "role": "BREADY" } },
	{ "name": "s_axi_HLS_LINEAR_PERIPH_BUS_BRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "HLS_LINEAR_PERIPH_BUS", "role": "BRESP" } },
	{ "name": "interrupt", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "HLS_LINEAR_PERIPH_BUS", "role": "interrupt" } }, 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }}  ]}

set ArgLastReadFirstWriteLatency {
	linear_model {
		x {Type I LastRead 0 FirstWrite -1}
		m {Type I LastRead 0 FirstWrite -1}
		c {Type I LastRead 0 FirstWrite -1}
		y {Type O LastRead -1 FirstWrite 2}
		done {Type O LastRead -1 FirstWrite 2}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "2", "Max" : "2"}
	, {"Name" : "Interval", "Min" : "3", "Max" : "3"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
}

set maxi_interface_dict [dict create]

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
