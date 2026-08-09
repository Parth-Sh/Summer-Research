set moduleName t_int
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
set C_modelName {t_int}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ a int 32 regular {axi_slave 0}  }
	{ b int 32 regular {axi_slave 0}  }
	{ c int 32 regular {axi_slave 0}  }
	{ d int 32 regular {axi_slave 0}  }
	{ e int 32 regular {axi_slave 0}  }
	{ f int 32 regular {axi_slave 0}  }
	{ g int 32 regular {axi_slave 0}  }
	{ h int 32 regular {axi_slave 0}  }
	{ r int 32 regular {axi_slave 1}  }
	{ done int 16 regular {axi_slave 1}  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "a", "interface" : "axi_slave", "bundle":"HLS_TREEADD_PERIPH_BUS","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":16}, "offset_end" : {"in":23}} , 
 	{ "Name" : "b", "interface" : "axi_slave", "bundle":"HLS_TREEADD_PERIPH_BUS","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":24}, "offset_end" : {"in":31}} , 
 	{ "Name" : "c", "interface" : "axi_slave", "bundle":"HLS_TREEADD_PERIPH_BUS","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":32}, "offset_end" : {"in":39}} , 
 	{ "Name" : "d", "interface" : "axi_slave", "bundle":"HLS_TREEADD_PERIPH_BUS","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":40}, "offset_end" : {"in":47}} , 
 	{ "Name" : "e", "interface" : "axi_slave", "bundle":"HLS_TREEADD_PERIPH_BUS","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":48}, "offset_end" : {"in":55}} , 
 	{ "Name" : "f", "interface" : "axi_slave", "bundle":"HLS_TREEADD_PERIPH_BUS","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":56}, "offset_end" : {"in":63}} , 
 	{ "Name" : "g", "interface" : "axi_slave", "bundle":"HLS_TREEADD_PERIPH_BUS","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":64}, "offset_end" : {"in":71}} , 
 	{ "Name" : "h", "interface" : "axi_slave", "bundle":"HLS_TREEADD_PERIPH_BUS","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":72}, "offset_end" : {"in":79}} , 
 	{ "Name" : "r", "interface" : "axi_slave", "bundle":"HLS_TREEADD_PERIPH_BUS","type":"ap_vld","bitwidth" : 32, "direction" : "WRITEONLY", "offset" : {"out":80}, "offset_end" : {"out":87}} , 
 	{ "Name" : "done", "interface" : "axi_slave", "bundle":"HLS_TREEADD_PERIPH_BUS","type":"ap_vld","bitwidth" : 16, "direction" : "WRITEONLY", "offset" : {"out":96}, "offset_end" : {"out":103}} ]}
# RTL Port declarations: 
set portNum 20
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ s_axi_HLS_TREEADD_PERIPH_BUS_AWVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_HLS_TREEADD_PERIPH_BUS_AWREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_HLS_TREEADD_PERIPH_BUS_AWADDR sc_in sc_lv 7 signal -1 } 
	{ s_axi_HLS_TREEADD_PERIPH_BUS_WVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_HLS_TREEADD_PERIPH_BUS_WREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_HLS_TREEADD_PERIPH_BUS_WDATA sc_in sc_lv 32 signal -1 } 
	{ s_axi_HLS_TREEADD_PERIPH_BUS_WSTRB sc_in sc_lv 4 signal -1 } 
	{ s_axi_HLS_TREEADD_PERIPH_BUS_ARVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_HLS_TREEADD_PERIPH_BUS_ARREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_HLS_TREEADD_PERIPH_BUS_ARADDR sc_in sc_lv 7 signal -1 } 
	{ s_axi_HLS_TREEADD_PERIPH_BUS_RVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_HLS_TREEADD_PERIPH_BUS_RREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_HLS_TREEADD_PERIPH_BUS_RDATA sc_out sc_lv 32 signal -1 } 
	{ s_axi_HLS_TREEADD_PERIPH_BUS_RRESP sc_out sc_lv 2 signal -1 } 
	{ s_axi_HLS_TREEADD_PERIPH_BUS_BVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_HLS_TREEADD_PERIPH_BUS_BREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_HLS_TREEADD_PERIPH_BUS_BRESP sc_out sc_lv 2 signal -1 } 
	{ interrupt sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "s_axi_HLS_TREEADD_PERIPH_BUS_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "HLS_TREEADD_PERIPH_BUS", "role": "AWADDR" },"address":[{"name":"t_int","role":"start","value":"0","valid_bit":"0"},{"name":"t_int","role":"continue","value":"0","valid_bit":"4"},{"name":"t_int","role":"auto_start","value":"0","valid_bit":"7"},{"name":"a","role":"data","value":"16"},{"name":"b","role":"data","value":"24"},{"name":"c","role":"data","value":"32"},{"name":"d","role":"data","value":"40"},{"name":"e","role":"data","value":"48"},{"name":"f","role":"data","value":"56"},{"name":"g","role":"data","value":"64"},{"name":"h","role":"data","value":"72"}] },
	{ "name": "s_axi_HLS_TREEADD_PERIPH_BUS_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "HLS_TREEADD_PERIPH_BUS", "role": "AWVALID" } },
	{ "name": "s_axi_HLS_TREEADD_PERIPH_BUS_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "HLS_TREEADD_PERIPH_BUS", "role": "AWREADY" } },
	{ "name": "s_axi_HLS_TREEADD_PERIPH_BUS_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "HLS_TREEADD_PERIPH_BUS", "role": "WVALID" } },
	{ "name": "s_axi_HLS_TREEADD_PERIPH_BUS_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "HLS_TREEADD_PERIPH_BUS", "role": "WREADY" } },
	{ "name": "s_axi_HLS_TREEADD_PERIPH_BUS_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "HLS_TREEADD_PERIPH_BUS", "role": "WDATA" } },
	{ "name": "s_axi_HLS_TREEADD_PERIPH_BUS_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "HLS_TREEADD_PERIPH_BUS", "role": "WSTRB" } },
	{ "name": "s_axi_HLS_TREEADD_PERIPH_BUS_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "HLS_TREEADD_PERIPH_BUS", "role": "ARADDR" },"address":[{"name":"t_int","role":"start","value":"0","valid_bit":"0"},{"name":"t_int","role":"done","value":"0","valid_bit":"1"},{"name":"t_int","role":"idle","value":"0","valid_bit":"2"},{"name":"t_int","role":"ready","value":"0","valid_bit":"3"},{"name":"t_int","role":"auto_start","value":"0","valid_bit":"7"},{"name":"r","role":"data","value":"80"}, {"name":"r","role":"valid","value":"84","valid_bit":"0"},{"name":"done","role":"data","value":"96"}, {"name":"done","role":"valid","value":"100","valid_bit":"0"}] },
	{ "name": "s_axi_HLS_TREEADD_PERIPH_BUS_ARVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "HLS_TREEADD_PERIPH_BUS", "role": "ARVALID" } },
	{ "name": "s_axi_HLS_TREEADD_PERIPH_BUS_ARREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "HLS_TREEADD_PERIPH_BUS", "role": "ARREADY" } },
	{ "name": "s_axi_HLS_TREEADD_PERIPH_BUS_RVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "HLS_TREEADD_PERIPH_BUS", "role": "RVALID" } },
	{ "name": "s_axi_HLS_TREEADD_PERIPH_BUS_RREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "HLS_TREEADD_PERIPH_BUS", "role": "RREADY" } },
	{ "name": "s_axi_HLS_TREEADD_PERIPH_BUS_RDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "HLS_TREEADD_PERIPH_BUS", "role": "RDATA" } },
	{ "name": "s_axi_HLS_TREEADD_PERIPH_BUS_RRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "HLS_TREEADD_PERIPH_BUS", "role": "RRESP" } },
	{ "name": "s_axi_HLS_TREEADD_PERIPH_BUS_BVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "HLS_TREEADD_PERIPH_BUS", "role": "BVALID" } },
	{ "name": "s_axi_HLS_TREEADD_PERIPH_BUS_BREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "HLS_TREEADD_PERIPH_BUS", "role": "BREADY" } },
	{ "name": "s_axi_HLS_TREEADD_PERIPH_BUS_BRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "HLS_TREEADD_PERIPH_BUS", "role": "BRESP" } },
	{ "name": "interrupt", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "HLS_TREEADD_PERIPH_BUS", "role": "interrupt" } }, 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }}  ]}

set ArgLastReadFirstWriteLatency {
	t_int {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		c {Type I LastRead 0 FirstWrite -1}
		d {Type I LastRead 0 FirstWrite -1}
		e {Type I LastRead 0 FirstWrite -1}
		f {Type I LastRead 0 FirstWrite -1}
		g {Type I LastRead 0 FirstWrite -1}
		h {Type I LastRead 0 FirstWrite -1}
		r {Type O LastRead -1 FirstWrite 1}
		done {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1", "Max" : "1"}
	, {"Name" : "Interval", "Min" : "2", "Max" : "2"}
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
