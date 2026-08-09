# This script segment is generated automatically by AutoPilot

set axilite_register_dict [dict create]
set port_HLS_TREEADD_PERIPH_BUS {
a { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 16
	offset_end 23
}
b { 
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
d { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 40
	offset_end 47
}
e { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 48
	offset_end 55
}
f { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 56
	offset_end 63
}
g { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 64
	offset_end 71
}
h { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 72
	offset_end 79
}
r { 
	dir O
	width 32
	depth 1
	mode ap_vld
	offset 80
	offset_end 87
}
done { 
	dir O
	width 16
	depth 1
	mode ap_vld
	offset 96
	offset_end 103
}
ap_start { }
ap_done { }
ap_ready { }
ap_idle { }
interrupt {
}
}
dict set axilite_register_dict HLS_TREEADD_PERIPH_BUS $port_HLS_TREEADD_PERIPH_BUS


