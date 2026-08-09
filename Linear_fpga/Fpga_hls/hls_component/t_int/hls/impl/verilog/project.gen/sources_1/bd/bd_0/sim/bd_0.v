//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
//Date        : Wed Jun 24 14:05:15 2026
//Host        : CML-09 running 64-bit major release  (build 9200)
//Command     : generate_target bd_0.bd
//Design      : bd_0
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "bd_0,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=bd_0,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=1,numReposBlks=1,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=1,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=Hierarchical}" *) (* HW_HANDOFF = "bd_0.hwdef" *) 
module bd_0
   (ap_clk,
    ap_rst_n,
    interrupt,
    s_axi_HLS_TREEADD_PERIPH_BUS_araddr,
    s_axi_HLS_TREEADD_PERIPH_BUS_arready,
    s_axi_HLS_TREEADD_PERIPH_BUS_arvalid,
    s_axi_HLS_TREEADD_PERIPH_BUS_awaddr,
    s_axi_HLS_TREEADD_PERIPH_BUS_awready,
    s_axi_HLS_TREEADD_PERIPH_BUS_awvalid,
    s_axi_HLS_TREEADD_PERIPH_BUS_bready,
    s_axi_HLS_TREEADD_PERIPH_BUS_bresp,
    s_axi_HLS_TREEADD_PERIPH_BUS_bvalid,
    s_axi_HLS_TREEADD_PERIPH_BUS_rdata,
    s_axi_HLS_TREEADD_PERIPH_BUS_rready,
    s_axi_HLS_TREEADD_PERIPH_BUS_rresp,
    s_axi_HLS_TREEADD_PERIPH_BUS_rvalid,
    s_axi_HLS_TREEADD_PERIPH_BUS_wdata,
    s_axi_HLS_TREEADD_PERIPH_BUS_wready,
    s_axi_HLS_TREEADD_PERIPH_BUS_wstrb,
    s_axi_HLS_TREEADD_PERIPH_BUS_wvalid);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.AP_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.AP_CLK, ASSOCIATED_BUSIF s_axi_HLS_TREEADD_PERIPH_BUS, ASSOCIATED_RESET ap_rst_n, CLK_DOMAIN bd_0_ap_clk_0, FREQ_HZ 100000000.0, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input ap_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.AP_RST_N RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.AP_RST_N, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input ap_rst_n;
  (* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 INTR.INTERRUPT INTERRUPT" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME INTR.INTERRUPT, PortWidth 1, SENSITIVITY LEVEL_HIGH" *) output interrupt;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_HLS_TREEADD_PERIPH_BUS ARADDR" *) (* X_INTERFACE_MODE = "Slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi_HLS_TREEADD_PERIPH_BUS, ADDR_WIDTH 32, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN bd_0_ap_clk_0, DATA_WIDTH 32, FREQ_HZ 100000000.0, HAS_BRESP 1, HAS_BURST 0, HAS_CACHE 0, HAS_LOCK 0, HAS_PROT 0, HAS_QOS 0, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 0, INSERT_VIP 0, MAX_BURST_LENGTH 1, NUM_READ_OUTSTANDING 1, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 1, NUM_WRITE_THREADS 1, PHASE 0.0, PROTOCOL AXI4LITE, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) input [6:0]s_axi_HLS_TREEADD_PERIPH_BUS_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_HLS_TREEADD_PERIPH_BUS ARREADY" *) output s_axi_HLS_TREEADD_PERIPH_BUS_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_HLS_TREEADD_PERIPH_BUS ARVALID" *) input s_axi_HLS_TREEADD_PERIPH_BUS_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_HLS_TREEADD_PERIPH_BUS AWADDR" *) input [6:0]s_axi_HLS_TREEADD_PERIPH_BUS_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_HLS_TREEADD_PERIPH_BUS AWREADY" *) output s_axi_HLS_TREEADD_PERIPH_BUS_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_HLS_TREEADD_PERIPH_BUS AWVALID" *) input s_axi_HLS_TREEADD_PERIPH_BUS_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_HLS_TREEADD_PERIPH_BUS BREADY" *) input s_axi_HLS_TREEADD_PERIPH_BUS_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_HLS_TREEADD_PERIPH_BUS BRESP" *) output [1:0]s_axi_HLS_TREEADD_PERIPH_BUS_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_HLS_TREEADD_PERIPH_BUS BVALID" *) output s_axi_HLS_TREEADD_PERIPH_BUS_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_HLS_TREEADD_PERIPH_BUS RDATA" *) output [31:0]s_axi_HLS_TREEADD_PERIPH_BUS_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_HLS_TREEADD_PERIPH_BUS RREADY" *) input s_axi_HLS_TREEADD_PERIPH_BUS_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_HLS_TREEADD_PERIPH_BUS RRESP" *) output [1:0]s_axi_HLS_TREEADD_PERIPH_BUS_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_HLS_TREEADD_PERIPH_BUS RVALID" *) output s_axi_HLS_TREEADD_PERIPH_BUS_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_HLS_TREEADD_PERIPH_BUS WDATA" *) input [31:0]s_axi_HLS_TREEADD_PERIPH_BUS_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_HLS_TREEADD_PERIPH_BUS WREADY" *) output s_axi_HLS_TREEADD_PERIPH_BUS_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_HLS_TREEADD_PERIPH_BUS WSTRB" *) input [3:0]s_axi_HLS_TREEADD_PERIPH_BUS_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_HLS_TREEADD_PERIPH_BUS WVALID" *) input s_axi_HLS_TREEADD_PERIPH_BUS_wvalid;

  wire ap_clk;
  wire ap_rst_n;
  wire interrupt;
  wire [6:0]s_axi_HLS_TREEADD_PERIPH_BUS_araddr;
  wire s_axi_HLS_TREEADD_PERIPH_BUS_arready;
  wire s_axi_HLS_TREEADD_PERIPH_BUS_arvalid;
  wire [6:0]s_axi_HLS_TREEADD_PERIPH_BUS_awaddr;
  wire s_axi_HLS_TREEADD_PERIPH_BUS_awready;
  wire s_axi_HLS_TREEADD_PERIPH_BUS_awvalid;
  wire s_axi_HLS_TREEADD_PERIPH_BUS_bready;
  wire [1:0]s_axi_HLS_TREEADD_PERIPH_BUS_bresp;
  wire s_axi_HLS_TREEADD_PERIPH_BUS_bvalid;
  wire [31:0]s_axi_HLS_TREEADD_PERIPH_BUS_rdata;
  wire s_axi_HLS_TREEADD_PERIPH_BUS_rready;
  wire [1:0]s_axi_HLS_TREEADD_PERIPH_BUS_rresp;
  wire s_axi_HLS_TREEADD_PERIPH_BUS_rvalid;
  wire [31:0]s_axi_HLS_TREEADD_PERIPH_BUS_wdata;
  wire s_axi_HLS_TREEADD_PERIPH_BUS_wready;
  wire [3:0]s_axi_HLS_TREEADD_PERIPH_BUS_wstrb;
  wire s_axi_HLS_TREEADD_PERIPH_BUS_wvalid;

  bd_0_hls_inst_0 hls_inst
       (.ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .interrupt(interrupt),
        .s_axi_HLS_TREEADD_PERIPH_BUS_ARADDR(s_axi_HLS_TREEADD_PERIPH_BUS_araddr),
        .s_axi_HLS_TREEADD_PERIPH_BUS_ARREADY(s_axi_HLS_TREEADD_PERIPH_BUS_arready),
        .s_axi_HLS_TREEADD_PERIPH_BUS_ARVALID(s_axi_HLS_TREEADD_PERIPH_BUS_arvalid),
        .s_axi_HLS_TREEADD_PERIPH_BUS_AWADDR(s_axi_HLS_TREEADD_PERIPH_BUS_awaddr),
        .s_axi_HLS_TREEADD_PERIPH_BUS_AWREADY(s_axi_HLS_TREEADD_PERIPH_BUS_awready),
        .s_axi_HLS_TREEADD_PERIPH_BUS_AWVALID(s_axi_HLS_TREEADD_PERIPH_BUS_awvalid),
        .s_axi_HLS_TREEADD_PERIPH_BUS_BREADY(s_axi_HLS_TREEADD_PERIPH_BUS_bready),
        .s_axi_HLS_TREEADD_PERIPH_BUS_BRESP(s_axi_HLS_TREEADD_PERIPH_BUS_bresp),
        .s_axi_HLS_TREEADD_PERIPH_BUS_BVALID(s_axi_HLS_TREEADD_PERIPH_BUS_bvalid),
        .s_axi_HLS_TREEADD_PERIPH_BUS_RDATA(s_axi_HLS_TREEADD_PERIPH_BUS_rdata),
        .s_axi_HLS_TREEADD_PERIPH_BUS_RREADY(s_axi_HLS_TREEADD_PERIPH_BUS_rready),
        .s_axi_HLS_TREEADD_PERIPH_BUS_RRESP(s_axi_HLS_TREEADD_PERIPH_BUS_rresp),
        .s_axi_HLS_TREEADD_PERIPH_BUS_RVALID(s_axi_HLS_TREEADD_PERIPH_BUS_rvalid),
        .s_axi_HLS_TREEADD_PERIPH_BUS_WDATA(s_axi_HLS_TREEADD_PERIPH_BUS_wdata),
        .s_axi_HLS_TREEADD_PERIPH_BUS_WREADY(s_axi_HLS_TREEADD_PERIPH_BUS_wready),
        .s_axi_HLS_TREEADD_PERIPH_BUS_WSTRB(s_axi_HLS_TREEADD_PERIPH_BUS_wstrb),
        .s_axi_HLS_TREEADD_PERIPH_BUS_WVALID(s_axi_HLS_TREEADD_PERIPH_BUS_wvalid));
endmodule
