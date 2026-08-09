//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
//Date        : Tue Jun 30 10:32:13 2026
//Host        : CML-09 running 64-bit major release  (build 9200)
//Command     : generate_target bd_0_wrapper.bd
//Design      : bd_0_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module bd_0_wrapper
   (ap_clk,
    ap_rst_n,
    interrupt,
    s_axi_HLS_LINEAR_PERIPH_BUS_araddr,
    s_axi_HLS_LINEAR_PERIPH_BUS_arready,
    s_axi_HLS_LINEAR_PERIPH_BUS_arvalid,
    s_axi_HLS_LINEAR_PERIPH_BUS_awaddr,
    s_axi_HLS_LINEAR_PERIPH_BUS_awready,
    s_axi_HLS_LINEAR_PERIPH_BUS_awvalid,
    s_axi_HLS_LINEAR_PERIPH_BUS_bready,
    s_axi_HLS_LINEAR_PERIPH_BUS_bresp,
    s_axi_HLS_LINEAR_PERIPH_BUS_bvalid,
    s_axi_HLS_LINEAR_PERIPH_BUS_rdata,
    s_axi_HLS_LINEAR_PERIPH_BUS_rready,
    s_axi_HLS_LINEAR_PERIPH_BUS_rresp,
    s_axi_HLS_LINEAR_PERIPH_BUS_rvalid,
    s_axi_HLS_LINEAR_PERIPH_BUS_wdata,
    s_axi_HLS_LINEAR_PERIPH_BUS_wready,
    s_axi_HLS_LINEAR_PERIPH_BUS_wstrb,
    s_axi_HLS_LINEAR_PERIPH_BUS_wvalid);
  input ap_clk;
  input ap_rst_n;
  output interrupt;
  input [5:0]s_axi_HLS_LINEAR_PERIPH_BUS_araddr;
  output s_axi_HLS_LINEAR_PERIPH_BUS_arready;
  input s_axi_HLS_LINEAR_PERIPH_BUS_arvalid;
  input [5:0]s_axi_HLS_LINEAR_PERIPH_BUS_awaddr;
  output s_axi_HLS_LINEAR_PERIPH_BUS_awready;
  input s_axi_HLS_LINEAR_PERIPH_BUS_awvalid;
  input s_axi_HLS_LINEAR_PERIPH_BUS_bready;
  output [1:0]s_axi_HLS_LINEAR_PERIPH_BUS_bresp;
  output s_axi_HLS_LINEAR_PERIPH_BUS_bvalid;
  output [31:0]s_axi_HLS_LINEAR_PERIPH_BUS_rdata;
  input s_axi_HLS_LINEAR_PERIPH_BUS_rready;
  output [1:0]s_axi_HLS_LINEAR_PERIPH_BUS_rresp;
  output s_axi_HLS_LINEAR_PERIPH_BUS_rvalid;
  input [31:0]s_axi_HLS_LINEAR_PERIPH_BUS_wdata;
  output s_axi_HLS_LINEAR_PERIPH_BUS_wready;
  input [3:0]s_axi_HLS_LINEAR_PERIPH_BUS_wstrb;
  input s_axi_HLS_LINEAR_PERIPH_BUS_wvalid;

  wire ap_clk;
  wire ap_rst_n;
  wire interrupt;
  wire [5:0]s_axi_HLS_LINEAR_PERIPH_BUS_araddr;
  wire s_axi_HLS_LINEAR_PERIPH_BUS_arready;
  wire s_axi_HLS_LINEAR_PERIPH_BUS_arvalid;
  wire [5:0]s_axi_HLS_LINEAR_PERIPH_BUS_awaddr;
  wire s_axi_HLS_LINEAR_PERIPH_BUS_awready;
  wire s_axi_HLS_LINEAR_PERIPH_BUS_awvalid;
  wire s_axi_HLS_LINEAR_PERIPH_BUS_bready;
  wire [1:0]s_axi_HLS_LINEAR_PERIPH_BUS_bresp;
  wire s_axi_HLS_LINEAR_PERIPH_BUS_bvalid;
  wire [31:0]s_axi_HLS_LINEAR_PERIPH_BUS_rdata;
  wire s_axi_HLS_LINEAR_PERIPH_BUS_rready;
  wire [1:0]s_axi_HLS_LINEAR_PERIPH_BUS_rresp;
  wire s_axi_HLS_LINEAR_PERIPH_BUS_rvalid;
  wire [31:0]s_axi_HLS_LINEAR_PERIPH_BUS_wdata;
  wire s_axi_HLS_LINEAR_PERIPH_BUS_wready;
  wire [3:0]s_axi_HLS_LINEAR_PERIPH_BUS_wstrb;
  wire s_axi_HLS_LINEAR_PERIPH_BUS_wvalid;

  bd_0 bd_0_i
       (.ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .interrupt(interrupt),
        .s_axi_HLS_LINEAR_PERIPH_BUS_araddr(s_axi_HLS_LINEAR_PERIPH_BUS_araddr),
        .s_axi_HLS_LINEAR_PERIPH_BUS_arready(s_axi_HLS_LINEAR_PERIPH_BUS_arready),
        .s_axi_HLS_LINEAR_PERIPH_BUS_arvalid(s_axi_HLS_LINEAR_PERIPH_BUS_arvalid),
        .s_axi_HLS_LINEAR_PERIPH_BUS_awaddr(s_axi_HLS_LINEAR_PERIPH_BUS_awaddr),
        .s_axi_HLS_LINEAR_PERIPH_BUS_awready(s_axi_HLS_LINEAR_PERIPH_BUS_awready),
        .s_axi_HLS_LINEAR_PERIPH_BUS_awvalid(s_axi_HLS_LINEAR_PERIPH_BUS_awvalid),
        .s_axi_HLS_LINEAR_PERIPH_BUS_bready(s_axi_HLS_LINEAR_PERIPH_BUS_bready),
        .s_axi_HLS_LINEAR_PERIPH_BUS_bresp(s_axi_HLS_LINEAR_PERIPH_BUS_bresp),
        .s_axi_HLS_LINEAR_PERIPH_BUS_bvalid(s_axi_HLS_LINEAR_PERIPH_BUS_bvalid),
        .s_axi_HLS_LINEAR_PERIPH_BUS_rdata(s_axi_HLS_LINEAR_PERIPH_BUS_rdata),
        .s_axi_HLS_LINEAR_PERIPH_BUS_rready(s_axi_HLS_LINEAR_PERIPH_BUS_rready),
        .s_axi_HLS_LINEAR_PERIPH_BUS_rresp(s_axi_HLS_LINEAR_PERIPH_BUS_rresp),
        .s_axi_HLS_LINEAR_PERIPH_BUS_rvalid(s_axi_HLS_LINEAR_PERIPH_BUS_rvalid),
        .s_axi_HLS_LINEAR_PERIPH_BUS_wdata(s_axi_HLS_LINEAR_PERIPH_BUS_wdata),
        .s_axi_HLS_LINEAR_PERIPH_BUS_wready(s_axi_HLS_LINEAR_PERIPH_BUS_wready),
        .s_axi_HLS_LINEAR_PERIPH_BUS_wstrb(s_axi_HLS_LINEAR_PERIPH_BUS_wstrb),
        .s_axi_HLS_LINEAR_PERIPH_BUS_wvalid(s_axi_HLS_LINEAR_PERIPH_BUS_wvalid));
endmodule
