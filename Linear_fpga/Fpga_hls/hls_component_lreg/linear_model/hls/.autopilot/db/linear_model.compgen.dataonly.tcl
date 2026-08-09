# This script segment is generated automatically by AutoPilot

set axilite_register_dict [dict create]
set port_HLS_LINEAR_PERIPH_BUS {
x { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 16
	offset_end 23
}
m { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 24
	offset_end 31
}
c { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 32
	offset_end 39
}
y { 
	dir O
	width 32
	depth 1
	mode ap_vld
	offset 40
	offset_end 47
}
done { 
	dir O
	width 16
	depth 1
	mode ap_vld
	offset 56
	offset_end 63
}
ap_start { }
ap_done { }
ap_ready { }
ap_idle { }
interrupt {
}
}
dict set axilite_register_dict HLS_LINEAR_PERIPH_BUS $port_HLS_LINEAR_PERIPH_BUS


