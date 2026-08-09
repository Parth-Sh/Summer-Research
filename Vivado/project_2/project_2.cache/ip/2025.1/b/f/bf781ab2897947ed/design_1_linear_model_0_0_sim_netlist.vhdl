-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
-- Date        : Tue Jun 30 10:46:25 2026
-- Host        : CML-09 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_linear_model_0_0_sim_netlist.vhdl
-- Design      : design_1_linear_model_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_linear_model_HLS_LINEAR_PERIPH_BUS_s_axi is
  port (
    ap_rst_n_inv : out STD_LOGIC;
    interrupt : out STD_LOGIC;
    \FSM_onehot_rstate_reg[1]_0\ : out STD_LOGIC;
    s_axi_HLS_LINEAR_PERIPH_BUS_BVALID : out STD_LOGIC;
    \FSM_onehot_wstate_reg[2]_0\ : out STD_LOGIC;
    \FSM_onehot_wstate_reg[1]_0\ : out STD_LOGIC;
    s_axi_HLS_LINEAR_PERIPH_BUS_RVALID : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    int_x0 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \waddr_reg[2]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    int_m0 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \int_c_reg[31]_0\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_HLS_LINEAR_PERIPH_BUS_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    ap_clk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 2 downto 0 );
    ap_rst_n : in STD_LOGIC;
    s_axi_HLS_LINEAR_PERIPH_BUS_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_HLS_LINEAR_PERIPH_BUS_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_HLS_LINEAR_PERIPH_BUS_ARADDR : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_HLS_LINEAR_PERIPH_BUS_ARVALID : in STD_LOGIC;
    s_axi_HLS_LINEAR_PERIPH_BUS_AWADDR : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \int_y_reg[31]_0\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \int_y_reg[31]_1\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_HLS_LINEAR_PERIPH_BUS_RREADY : in STD_LOGIC;
    s_axi_HLS_LINEAR_PERIPH_BUS_WVALID : in STD_LOGIC;
    s_axi_HLS_LINEAR_PERIPH_BUS_AWVALID : in STD_LOGIC;
    s_axi_HLS_LINEAR_PERIPH_BUS_BREADY : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_linear_model_HLS_LINEAR_PERIPH_BUS_s_axi;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_linear_model_HLS_LINEAR_PERIPH_BUS_s_axi is
  signal \^e\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \FSM_onehot_rstate[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_rstate[2]_i_1_n_0\ : STD_LOGIC;
  signal \^fsm_onehot_rstate_reg[1]_0\ : STD_LOGIC;
  signal \FSM_onehot_wstate[1]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_wstate[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_wstate[3]_i_1_n_0\ : STD_LOGIC;
  signal \^fsm_onehot_wstate_reg[1]_0\ : STD_LOGIC;
  signal \^fsm_onehot_wstate_reg[2]_0\ : STD_LOGIC;
  signal ap_idle : STD_LOGIC;
  signal \^ap_rst_n_inv\ : STD_LOGIC;
  signal ap_start : STD_LOGIC;
  signal ar_hs : STD_LOGIC;
  signal auto_restart_status_i_1_n_0 : STD_LOGIC;
  signal auto_restart_status_reg_n_0 : STD_LOGIC;
  signal int_ap_ready : STD_LOGIC;
  signal int_ap_ready_i_1_n_0 : STD_LOGIC;
  signal int_ap_start5_out : STD_LOGIC;
  signal int_ap_start_i_1_n_0 : STD_LOGIC;
  signal int_ap_start_i_3_n_0 : STD_LOGIC;
  signal int_auto_restart_i_1_n_0 : STD_LOGIC;
  signal int_auto_restart_i_2_n_0 : STD_LOGIC;
  signal int_c0 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \int_c[31]_i_1_n_0\ : STD_LOGIC;
  signal \^int_c_reg[31]_0\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal int_done : STD_LOGIC_VECTOR ( 0 to 0 );
  signal int_done_ap_vld : STD_LOGIC;
  signal int_done_ap_vld_i_1_n_0 : STD_LOGIC;
  signal int_gie_i_1_n_0 : STD_LOGIC;
  signal int_gie_reg_n_0 : STD_LOGIC;
  signal \int_ier[0]_i_1_n_0\ : STD_LOGIC;
  signal \int_ier[1]_i_1_n_0\ : STD_LOGIC;
  signal \int_ier[1]_i_2_n_0\ : STD_LOGIC;
  signal \int_ier_reg_n_0_[0]\ : STD_LOGIC;
  signal \int_ier_reg_n_0_[1]\ : STD_LOGIC;
  signal int_interrupt0 : STD_LOGIC;
  signal int_isr7_out : STD_LOGIC;
  signal \int_isr[0]_i_1_n_0\ : STD_LOGIC;
  signal \int_isr[1]_i_1_n_0\ : STD_LOGIC;
  signal \int_isr_reg_n_0_[0]\ : STD_LOGIC;
  signal \int_isr_reg_n_0_[1]\ : STD_LOGIC;
  signal \^int_m0\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal int_task_ap_done : STD_LOGIC;
  signal int_task_ap_done_i_1_n_0 : STD_LOGIC;
  signal int_task_ap_done_i_2_n_0 : STD_LOGIC;
  signal int_task_ap_done_i_3_n_0 : STD_LOGIC;
  signal \^int_x0\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal int_y : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \int_y[11]_i_2_n_0\ : STD_LOGIC;
  signal \int_y[11]_i_3_n_0\ : STD_LOGIC;
  signal \int_y[11]_i_4_n_0\ : STD_LOGIC;
  signal \int_y[11]_i_5_n_0\ : STD_LOGIC;
  signal \int_y[15]_i_2_n_0\ : STD_LOGIC;
  signal \int_y[15]_i_3_n_0\ : STD_LOGIC;
  signal \int_y[15]_i_4_n_0\ : STD_LOGIC;
  signal \int_y[15]_i_5_n_0\ : STD_LOGIC;
  signal \int_y[19]_i_2_n_0\ : STD_LOGIC;
  signal \int_y[19]_i_3_n_0\ : STD_LOGIC;
  signal \int_y[19]_i_4_n_0\ : STD_LOGIC;
  signal \int_y[19]_i_5_n_0\ : STD_LOGIC;
  signal \int_y[23]_i_2_n_0\ : STD_LOGIC;
  signal \int_y[23]_i_3_n_0\ : STD_LOGIC;
  signal \int_y[23]_i_4_n_0\ : STD_LOGIC;
  signal \int_y[23]_i_5_n_0\ : STD_LOGIC;
  signal \int_y[27]_i_2_n_0\ : STD_LOGIC;
  signal \int_y[27]_i_3_n_0\ : STD_LOGIC;
  signal \int_y[27]_i_4_n_0\ : STD_LOGIC;
  signal \int_y[27]_i_5_n_0\ : STD_LOGIC;
  signal \int_y[31]_i_2_n_0\ : STD_LOGIC;
  signal \int_y[31]_i_3_n_0\ : STD_LOGIC;
  signal \int_y[31]_i_4_n_0\ : STD_LOGIC;
  signal \int_y[31]_i_5_n_0\ : STD_LOGIC;
  signal \int_y[3]_i_2_n_0\ : STD_LOGIC;
  signal \int_y[3]_i_3_n_0\ : STD_LOGIC;
  signal \int_y[3]_i_4_n_0\ : STD_LOGIC;
  signal \int_y[3]_i_5_n_0\ : STD_LOGIC;
  signal \int_y[7]_i_2_n_0\ : STD_LOGIC;
  signal \int_y[7]_i_3_n_0\ : STD_LOGIC;
  signal \int_y[7]_i_4_n_0\ : STD_LOGIC;
  signal \int_y[7]_i_5_n_0\ : STD_LOGIC;
  signal int_y_ap_vld : STD_LOGIC;
  signal int_y_ap_vld_i_1_n_0 : STD_LOGIC;
  signal int_y_ap_vld_i_2_n_0 : STD_LOGIC;
  signal \int_y_reg[11]_i_1_n_0\ : STD_LOGIC;
  signal \int_y_reg[11]_i_1_n_1\ : STD_LOGIC;
  signal \int_y_reg[11]_i_1_n_2\ : STD_LOGIC;
  signal \int_y_reg[11]_i_1_n_3\ : STD_LOGIC;
  signal \int_y_reg[15]_i_1_n_0\ : STD_LOGIC;
  signal \int_y_reg[15]_i_1_n_1\ : STD_LOGIC;
  signal \int_y_reg[15]_i_1_n_2\ : STD_LOGIC;
  signal \int_y_reg[15]_i_1_n_3\ : STD_LOGIC;
  signal \int_y_reg[19]_i_1_n_0\ : STD_LOGIC;
  signal \int_y_reg[19]_i_1_n_1\ : STD_LOGIC;
  signal \int_y_reg[19]_i_1_n_2\ : STD_LOGIC;
  signal \int_y_reg[19]_i_1_n_3\ : STD_LOGIC;
  signal \int_y_reg[23]_i_1_n_0\ : STD_LOGIC;
  signal \int_y_reg[23]_i_1_n_1\ : STD_LOGIC;
  signal \int_y_reg[23]_i_1_n_2\ : STD_LOGIC;
  signal \int_y_reg[23]_i_1_n_3\ : STD_LOGIC;
  signal \int_y_reg[27]_i_1_n_0\ : STD_LOGIC;
  signal \int_y_reg[27]_i_1_n_1\ : STD_LOGIC;
  signal \int_y_reg[27]_i_1_n_2\ : STD_LOGIC;
  signal \int_y_reg[27]_i_1_n_3\ : STD_LOGIC;
  signal \int_y_reg[31]_i_1_n_1\ : STD_LOGIC;
  signal \int_y_reg[31]_i_1_n_2\ : STD_LOGIC;
  signal \int_y_reg[31]_i_1_n_3\ : STD_LOGIC;
  signal \int_y_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \int_y_reg[3]_i_1_n_1\ : STD_LOGIC;
  signal \int_y_reg[3]_i_1_n_2\ : STD_LOGIC;
  signal \int_y_reg[3]_i_1_n_3\ : STD_LOGIC;
  signal \int_y_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \int_y_reg[7]_i_1_n_1\ : STD_LOGIC;
  signal \int_y_reg[7]_i_1_n_2\ : STD_LOGIC;
  signal \int_y_reg[7]_i_1_n_3\ : STD_LOGIC;
  signal \^interrupt\ : STD_LOGIC;
  signal m : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal p_7_in : STD_LOGIC_VECTOR ( 7 downto 2 );
  signal \rdata[0]_i_1_n_0\ : STD_LOGIC;
  signal \rdata[0]_i_2_n_0\ : STD_LOGIC;
  signal \rdata[0]_i_3_n_0\ : STD_LOGIC;
  signal \rdata[0]_i_4_n_0\ : STD_LOGIC;
  signal \rdata[0]_i_5_n_0\ : STD_LOGIC;
  signal \rdata[0]_i_6_n_0\ : STD_LOGIC;
  signal \rdata[10]_i_1_n_0\ : STD_LOGIC;
  signal \rdata[10]_i_2_n_0\ : STD_LOGIC;
  signal \rdata[11]_i_1_n_0\ : STD_LOGIC;
  signal \rdata[11]_i_2_n_0\ : STD_LOGIC;
  signal \rdata[12]_i_1_n_0\ : STD_LOGIC;
  signal \rdata[12]_i_2_n_0\ : STD_LOGIC;
  signal \rdata[13]_i_1_n_0\ : STD_LOGIC;
  signal \rdata[13]_i_2_n_0\ : STD_LOGIC;
  signal \rdata[14]_i_1_n_0\ : STD_LOGIC;
  signal \rdata[14]_i_2_n_0\ : STD_LOGIC;
  signal \rdata[15]_i_1_n_0\ : STD_LOGIC;
  signal \rdata[15]_i_2_n_0\ : STD_LOGIC;
  signal \rdata[15]_i_3_n_0\ : STD_LOGIC;
  signal \rdata[16]_i_1_n_0\ : STD_LOGIC;
  signal \rdata[17]_i_1_n_0\ : STD_LOGIC;
  signal \rdata[18]_i_1_n_0\ : STD_LOGIC;
  signal \rdata[19]_i_1_n_0\ : STD_LOGIC;
  signal \rdata[1]_i_1_n_0\ : STD_LOGIC;
  signal \rdata[1]_i_2_n_0\ : STD_LOGIC;
  signal \rdata[1]_i_3_n_0\ : STD_LOGIC;
  signal \rdata[1]_i_4_n_0\ : STD_LOGIC;
  signal \rdata[1]_i_5_n_0\ : STD_LOGIC;
  signal \rdata[20]_i_1_n_0\ : STD_LOGIC;
  signal \rdata[21]_i_1_n_0\ : STD_LOGIC;
  signal \rdata[22]_i_1_n_0\ : STD_LOGIC;
  signal \rdata[23]_i_1_n_0\ : STD_LOGIC;
  signal \rdata[24]_i_1_n_0\ : STD_LOGIC;
  signal \rdata[25]_i_1_n_0\ : STD_LOGIC;
  signal \rdata[26]_i_1_n_0\ : STD_LOGIC;
  signal \rdata[27]_i_1_n_0\ : STD_LOGIC;
  signal \rdata[28]_i_1_n_0\ : STD_LOGIC;
  signal \rdata[29]_i_1_n_0\ : STD_LOGIC;
  signal \rdata[2]_i_1_n_0\ : STD_LOGIC;
  signal \rdata[2]_i_2_n_0\ : STD_LOGIC;
  signal \rdata[30]_i_1_n_0\ : STD_LOGIC;
  signal \rdata[31]_i_1_n_0\ : STD_LOGIC;
  signal \rdata[31]_i_3_n_0\ : STD_LOGIC;
  signal \rdata[3]_i_1_n_0\ : STD_LOGIC;
  signal \rdata[3]_i_2_n_0\ : STD_LOGIC;
  signal \rdata[4]_i_1_n_0\ : STD_LOGIC;
  signal \rdata[4]_i_2_n_0\ : STD_LOGIC;
  signal \rdata[5]_i_1_n_0\ : STD_LOGIC;
  signal \rdata[5]_i_2_n_0\ : STD_LOGIC;
  signal \rdata[6]_i_1_n_0\ : STD_LOGIC;
  signal \rdata[6]_i_2_n_0\ : STD_LOGIC;
  signal \rdata[7]_i_1_n_0\ : STD_LOGIC;
  signal \rdata[7]_i_2_n_0\ : STD_LOGIC;
  signal \rdata[8]_i_1_n_0\ : STD_LOGIC;
  signal \rdata[8]_i_2_n_0\ : STD_LOGIC;
  signal \rdata[9]_i_1_n_0\ : STD_LOGIC;
  signal \rdata[9]_i_2_n_0\ : STD_LOGIC;
  signal \^s_axi_hls_linear_periph_bus_bvalid\ : STD_LOGIC;
  signal \^s_axi_hls_linear_periph_bus_rdata\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^s_axi_hls_linear_periph_bus_rvalid\ : STD_LOGIC;
  signal waddr : STD_LOGIC;
  signal \^waddr_reg[2]_0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \waddr_reg_n_0_[2]\ : STD_LOGIC;
  signal \waddr_reg_n_0_[3]\ : STD_LOGIC;
  signal \waddr_reg_n_0_[4]\ : STD_LOGIC;
  signal \waddr_reg_n_0_[5]\ : STD_LOGIC;
  signal x : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal y : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_int_y_reg[31]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_rstate[1]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \FSM_onehot_rstate[2]_i_1\ : label is "soft_lutpair4";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_rstate_reg[1]\ : label is "RDIDLE:010,RDDATA:100,iSTATE:001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_rstate_reg[2]\ : label is "RDIDLE:010,RDDATA:100,iSTATE:001";
  attribute SOFT_HLUTNM of \FSM_onehot_wstate[3]_i_1\ : label is "soft_lutpair5";
  attribute FSM_ENCODED_STATES of \FSM_onehot_wstate_reg[1]\ : label is "WRDATA:0100,WRRESP:1000,WRIDLE:0010,iSTATE:0001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_wstate_reg[2]\ : label is "WRDATA:0100,WRRESP:1000,WRIDLE:0010,iSTATE:0001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_wstate_reg[3]\ : label is "WRDATA:0100,WRRESP:1000,WRIDLE:0010,iSTATE:0001";
  attribute SOFT_HLUTNM of \ap_CS_fsm[0]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \ap_CS_fsm[1]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of int_ap_idle_i_1 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of int_ap_start_i_1 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of int_ap_start_i_3 : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of int_auto_restart_i_2 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \int_c[0]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \int_c[10]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \int_c[11]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \int_c[12]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \int_c[13]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \int_c[14]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \int_c[15]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \int_c[16]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \int_c[17]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \int_c[18]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \int_c[19]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \int_c[1]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \int_c[20]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \int_c[21]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \int_c[22]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \int_c[23]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \int_c[24]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \int_c[25]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \int_c[26]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \int_c[27]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \int_c[28]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \int_c[29]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \int_c[2]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \int_c[30]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \int_c[31]_i_2\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \int_c[3]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \int_c[4]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \int_c[5]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \int_c[6]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \int_c[7]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \int_c[8]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \int_c[9]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of int_done_ap_vld_i_1 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \int_ier[1]_i_2\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of int_task_ap_done_i_3 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of int_y_ap_vld_i_1 : label is "soft_lutpair2";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \int_y_reg[11]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \int_y_reg[15]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \int_y_reg[19]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \int_y_reg[23]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \int_y_reg[27]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \int_y_reg[31]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \int_y_reg[3]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \int_y_reg[7]_i_1\ : label is 35;
  attribute SOFT_HLUTNM of \rdata[0]_i_6\ : label is "soft_lutpair0";
begin
  E(0) <= \^e\(0);
  \FSM_onehot_rstate_reg[1]_0\ <= \^fsm_onehot_rstate_reg[1]_0\;
  \FSM_onehot_wstate_reg[1]_0\ <= \^fsm_onehot_wstate_reg[1]_0\;
  \FSM_onehot_wstate_reg[2]_0\ <= \^fsm_onehot_wstate_reg[2]_0\;
  ap_rst_n_inv <= \^ap_rst_n_inv\;
  \int_c_reg[31]_0\(31 downto 0) <= \^int_c_reg[31]_0\(31 downto 0);
  int_m0(31 downto 0) <= \^int_m0\(31 downto 0);
  int_x0(31 downto 0) <= \^int_x0\(31 downto 0);
  interrupt <= \^interrupt\;
  s_axi_HLS_LINEAR_PERIPH_BUS_BVALID <= \^s_axi_hls_linear_periph_bus_bvalid\;
  s_axi_HLS_LINEAR_PERIPH_BUS_RDATA(31 downto 0) <= \^s_axi_hls_linear_periph_bus_rdata\(31 downto 0);
  s_axi_HLS_LINEAR_PERIPH_BUS_RVALID <= \^s_axi_hls_linear_periph_bus_rvalid\;
  \waddr_reg[2]_0\(0) <= \^waddr_reg[2]_0\(0);
\FSM_onehot_rstate[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F727"
    )
        port map (
      I0 => \^fsm_onehot_rstate_reg[1]_0\,
      I1 => s_axi_HLS_LINEAR_PERIPH_BUS_ARVALID,
      I2 => \^s_axi_hls_linear_periph_bus_rvalid\,
      I3 => s_axi_HLS_LINEAR_PERIPH_BUS_RREADY,
      O => \FSM_onehot_rstate[1]_i_1_n_0\
    );
\FSM_onehot_rstate[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F222"
    )
        port map (
      I0 => \^s_axi_hls_linear_periph_bus_rvalid\,
      I1 => s_axi_HLS_LINEAR_PERIPH_BUS_RREADY,
      I2 => s_axi_HLS_LINEAR_PERIPH_BUS_ARVALID,
      I3 => \^fsm_onehot_rstate_reg[1]_0\,
      O => \FSM_onehot_rstate[2]_i_1_n_0\
    );
\FSM_onehot_rstate_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \FSM_onehot_rstate[1]_i_1_n_0\,
      Q => \^fsm_onehot_rstate_reg[1]_0\,
      R => \^ap_rst_n_inv\
    );
\FSM_onehot_rstate_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \FSM_onehot_rstate[2]_i_1_n_0\,
      Q => \^s_axi_hls_linear_periph_bus_rvalid\,
      R => \^ap_rst_n_inv\
    );
\FSM_onehot_wstate[1]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => ap_rst_n,
      O => \^ap_rst_n_inv\
    );
\FSM_onehot_wstate[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF1D0C1D"
    )
        port map (
      I0 => \^fsm_onehot_wstate_reg[2]_0\,
      I1 => \^fsm_onehot_wstate_reg[1]_0\,
      I2 => s_axi_HLS_LINEAR_PERIPH_BUS_AWVALID,
      I3 => \^s_axi_hls_linear_periph_bus_bvalid\,
      I4 => s_axi_HLS_LINEAR_PERIPH_BUS_BREADY,
      O => \FSM_onehot_wstate[1]_i_2_n_0\
    );
\FSM_onehot_wstate[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F88"
    )
        port map (
      I0 => s_axi_HLS_LINEAR_PERIPH_BUS_AWVALID,
      I1 => \^fsm_onehot_wstate_reg[1]_0\,
      I2 => s_axi_HLS_LINEAR_PERIPH_BUS_WVALID,
      I3 => \^fsm_onehot_wstate_reg[2]_0\,
      O => \FSM_onehot_wstate[2]_i_1_n_0\
    );
\FSM_onehot_wstate[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"88F8"
    )
        port map (
      I0 => s_axi_HLS_LINEAR_PERIPH_BUS_WVALID,
      I1 => \^fsm_onehot_wstate_reg[2]_0\,
      I2 => \^s_axi_hls_linear_periph_bus_bvalid\,
      I3 => s_axi_HLS_LINEAR_PERIPH_BUS_BREADY,
      O => \FSM_onehot_wstate[3]_i_1_n_0\
    );
\FSM_onehot_wstate_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \FSM_onehot_wstate[1]_i_2_n_0\,
      Q => \^fsm_onehot_wstate_reg[1]_0\,
      R => \^ap_rst_n_inv\
    );
\FSM_onehot_wstate_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \FSM_onehot_wstate[2]_i_1_n_0\,
      Q => \^fsm_onehot_wstate_reg[2]_0\,
      R => \^ap_rst_n_inv\
    );
\FSM_onehot_wstate_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \FSM_onehot_wstate[3]_i_1_n_0\,
      Q => \^s_axi_hls_linear_periph_bus_bvalid\,
      R => \^ap_rst_n_inv\
    );
\ap_CS_fsm[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5515"
    )
        port map (
      I0 => Q(1),
      I1 => Q(0),
      I2 => ap_start,
      I3 => Q(2),
      O => D(0)
    );
\ap_CS_fsm[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0400"
    )
        port map (
      I0 => Q(1),
      I1 => Q(0),
      I2 => Q(2),
      I3 => ap_start,
      O => D(1)
    );
auto_restart_status_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EFAA"
    )
        port map (
      I0 => p_7_in(7),
      I1 => ap_start,
      I2 => Q(0),
      I3 => auto_restart_status_reg_n_0,
      O => auto_restart_status_i_1_n_0
    );
auto_restart_status_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => auto_restart_status_i_1_n_0,
      Q => auto_restart_status_reg_n_0,
      R => \^ap_rst_n_inv\
    );
int_ap_idle_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Q(0),
      I1 => ap_start,
      O => ap_idle
    );
int_ap_idle_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_idle,
      Q => p_7_in(2),
      R => \^ap_rst_n_inv\
    );
int_ap_ready_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F44"
    )
        port map (
      I0 => p_7_in(7),
      I1 => Q(2),
      I2 => int_task_ap_done_i_2_n_0,
      I3 => int_ap_ready,
      O => int_ap_ready_i_1_n_0
    );
int_ap_ready_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => int_ap_ready_i_1_n_0,
      Q => int_ap_ready,
      R => \^ap_rst_n_inv\
    );
int_ap_start_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FBF8"
    )
        port map (
      I0 => p_7_in(7),
      I1 => Q(2),
      I2 => int_ap_start5_out,
      I3 => ap_start,
      O => int_ap_start_i_1_n_0
    );
int_ap_start_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000002000000"
    )
        port map (
      I0 => s_axi_HLS_LINEAR_PERIPH_BUS_WDATA(0),
      I1 => \waddr_reg_n_0_[4]\,
      I2 => \waddr_reg_n_0_[3]\,
      I3 => int_ap_start_i_3_n_0,
      I4 => s_axi_HLS_LINEAR_PERIPH_BUS_WSTRB(0),
      I5 => \waddr_reg_n_0_[2]\,
      O => int_ap_start5_out
    );
int_ap_start_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \^fsm_onehot_wstate_reg[2]_0\,
      I1 => s_axi_HLS_LINEAR_PERIPH_BUS_WVALID,
      I2 => \waddr_reg_n_0_[5]\,
      O => int_ap_start_i_3_n_0
    );
int_ap_start_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => int_ap_start_i_1_n_0,
      Q => ap_start,
      R => \^ap_rst_n_inv\
    );
int_auto_restart_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFFF2000"
    )
        port map (
      I0 => s_axi_HLS_LINEAR_PERIPH_BUS_WDATA(7),
      I1 => \waddr_reg_n_0_[2]\,
      I2 => s_axi_HLS_LINEAR_PERIPH_BUS_WSTRB(0),
      I3 => int_auto_restart_i_2_n_0,
      I4 => p_7_in(7),
      O => int_auto_restart_i_1_n_0
    );
int_auto_restart_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"01000000"
    )
        port map (
      I0 => \waddr_reg_n_0_[4]\,
      I1 => \waddr_reg_n_0_[3]\,
      I2 => \waddr_reg_n_0_[5]\,
      I3 => s_axi_HLS_LINEAR_PERIPH_BUS_WVALID,
      I4 => \^fsm_onehot_wstate_reg[2]_0\,
      O => int_auto_restart_i_2_n_0
    );
int_auto_restart_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => int_auto_restart_i_1_n_0,
      Q => p_7_in(7),
      R => \^ap_rst_n_inv\
    );
\int_c[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \^int_c_reg[31]_0\(0),
      I1 => s_axi_HLS_LINEAR_PERIPH_BUS_WSTRB(0),
      I2 => s_axi_HLS_LINEAR_PERIPH_BUS_WDATA(0),
      O => int_c0(0)
    );
\int_c[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \^int_c_reg[31]_0\(10),
      I1 => s_axi_HLS_LINEAR_PERIPH_BUS_WSTRB(1),
      I2 => s_axi_HLS_LINEAR_PERIPH_BUS_WDATA(10),
      O => int_c0(10)
    );
\int_c[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \^int_c_reg[31]_0\(11),
      I1 => s_axi_HLS_LINEAR_PERIPH_BUS_WSTRB(1),
      I2 => s_axi_HLS_LINEAR_PERIPH_BUS_WDATA(11),
      O => int_c0(11)
    );
\int_c[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \^int_c_reg[31]_0\(12),
      I1 => s_axi_HLS_LINEAR_PERIPH_BUS_WSTRB(1),
      I2 => s_axi_HLS_LINEAR_PERIPH_BUS_WDATA(12),
      O => int_c0(12)
    );
\int_c[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \^int_c_reg[31]_0\(13),
      I1 => s_axi_HLS_LINEAR_PERIPH_BUS_WSTRB(1),
      I2 => s_axi_HLS_LINEAR_PERIPH_BUS_WDATA(13),
      O => int_c0(13)
    );
\int_c[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \^int_c_reg[31]_0\(14),
      I1 => s_axi_HLS_LINEAR_PERIPH_BUS_WSTRB(1),
      I2 => s_axi_HLS_LINEAR_PERIPH_BUS_WDATA(14),
      O => int_c0(14)
    );
\int_c[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \^int_c_reg[31]_0\(15),
      I1 => s_axi_HLS_LINEAR_PERIPH_BUS_WSTRB(1),
      I2 => s_axi_HLS_LINEAR_PERIPH_BUS_WDATA(15),
      O => int_c0(15)
    );
\int_c[16]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \^int_c_reg[31]_0\(16),
      I1 => s_axi_HLS_LINEAR_PERIPH_BUS_WSTRB(2),
      I2 => s_axi_HLS_LINEAR_PERIPH_BUS_WDATA(16),
      O => int_c0(16)
    );
\int_c[17]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \^int_c_reg[31]_0\(17),
      I1 => s_axi_HLS_LINEAR_PERIPH_BUS_WSTRB(2),
      I2 => s_axi_HLS_LINEAR_PERIPH_BUS_WDATA(17),
      O => int_c0(17)
    );
\int_c[18]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \^int_c_reg[31]_0\(18),
      I1 => s_axi_HLS_LINEAR_PERIPH_BUS_WSTRB(2),
      I2 => s_axi_HLS_LINEAR_PERIPH_BUS_WDATA(18),
      O => int_c0(18)
    );
\int_c[19]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \^int_c_reg[31]_0\(19),
      I1 => s_axi_HLS_LINEAR_PERIPH_BUS_WSTRB(2),
      I2 => s_axi_HLS_LINEAR_PERIPH_BUS_WDATA(19),
      O => int_c0(19)
    );
\int_c[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \^int_c_reg[31]_0\(1),
      I1 => s_axi_HLS_LINEAR_PERIPH_BUS_WSTRB(0),
      I2 => s_axi_HLS_LINEAR_PERIPH_BUS_WDATA(1),
      O => int_c0(1)
    );
\int_c[20]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \^int_c_reg[31]_0\(20),
      I1 => s_axi_HLS_LINEAR_PERIPH_BUS_WSTRB(2),
      I2 => s_axi_HLS_LINEAR_PERIPH_BUS_WDATA(20),
      O => int_c0(20)
    );
\int_c[21]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \^int_c_reg[31]_0\(21),
      I1 => s_axi_HLS_LINEAR_PERIPH_BUS_WSTRB(2),
      I2 => s_axi_HLS_LINEAR_PERIPH_BUS_WDATA(21),
      O => int_c0(21)
    );
\int_c[22]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \^int_c_reg[31]_0\(22),
      I1 => s_axi_HLS_LINEAR_PERIPH_BUS_WSTRB(2),
      I2 => s_axi_HLS_LINEAR_PERIPH_BUS_WDATA(22),
      O => int_c0(22)
    );
\int_c[23]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \^int_c_reg[31]_0\(23),
      I1 => s_axi_HLS_LINEAR_PERIPH_BUS_WSTRB(2),
      I2 => s_axi_HLS_LINEAR_PERIPH_BUS_WDATA(23),
      O => int_c0(23)
    );
\int_c[24]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \^int_c_reg[31]_0\(24),
      I1 => s_axi_HLS_LINEAR_PERIPH_BUS_WSTRB(3),
      I2 => s_axi_HLS_LINEAR_PERIPH_BUS_WDATA(24),
      O => int_c0(24)
    );
\int_c[25]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \^int_c_reg[31]_0\(25),
      I1 => s_axi_HLS_LINEAR_PERIPH_BUS_WSTRB(3),
      I2 => s_axi_HLS_LINEAR_PERIPH_BUS_WDATA(25),
      O => int_c0(25)
    );
\int_c[26]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \^int_c_reg[31]_0\(26),
      I1 => s_axi_HLS_LINEAR_PERIPH_BUS_WSTRB(3),
      I2 => s_axi_HLS_LINEAR_PERIPH_BUS_WDATA(26),
      O => int_c0(26)
    );
\int_c[27]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \^int_c_reg[31]_0\(27),
      I1 => s_axi_HLS_LINEAR_PERIPH_BUS_WSTRB(3),
      I2 => s_axi_HLS_LINEAR_PERIPH_BUS_WDATA(27),
      O => int_c0(27)
    );
\int_c[28]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \^int_c_reg[31]_0\(28),
      I1 => s_axi_HLS_LINEAR_PERIPH_BUS_WSTRB(3),
      I2 => s_axi_HLS_LINEAR_PERIPH_BUS_WDATA(28),
      O => int_c0(28)
    );
\int_c[29]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \^int_c_reg[31]_0\(29),
      I1 => s_axi_HLS_LINEAR_PERIPH_BUS_WSTRB(3),
      I2 => s_axi_HLS_LINEAR_PERIPH_BUS_WDATA(29),
      O => int_c0(29)
    );
\int_c[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \^int_c_reg[31]_0\(2),
      I1 => s_axi_HLS_LINEAR_PERIPH_BUS_WSTRB(0),
      I2 => s_axi_HLS_LINEAR_PERIPH_BUS_WDATA(2),
      O => int_c0(2)
    );
\int_c[30]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \^int_c_reg[31]_0\(30),
      I1 => s_axi_HLS_LINEAR_PERIPH_BUS_WSTRB(3),
      I2 => s_axi_HLS_LINEAR_PERIPH_BUS_WDATA(30),
      O => int_c0(30)
    );
\int_c[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0002000000000000"
    )
        port map (
      I0 => \waddr_reg_n_0_[5]\,
      I1 => \waddr_reg_n_0_[4]\,
      I2 => \waddr_reg_n_0_[2]\,
      I3 => \waddr_reg_n_0_[3]\,
      I4 => \^fsm_onehot_wstate_reg[2]_0\,
      I5 => s_axi_HLS_LINEAR_PERIPH_BUS_WVALID,
      O => \int_c[31]_i_1_n_0\
    );
\int_c[31]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \^int_c_reg[31]_0\(31),
      I1 => s_axi_HLS_LINEAR_PERIPH_BUS_WSTRB(3),
      I2 => s_axi_HLS_LINEAR_PERIPH_BUS_WDATA(31),
      O => int_c0(31)
    );
\int_c[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \^int_c_reg[31]_0\(3),
      I1 => s_axi_HLS_LINEAR_PERIPH_BUS_WSTRB(0),
      I2 => s_axi_HLS_LINEAR_PERIPH_BUS_WDATA(3),
      O => int_c0(3)
    );
\int_c[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \^int_c_reg[31]_0\(4),
      I1 => s_axi_HLS_LINEAR_PERIPH_BUS_WSTRB(0),
      I2 => s_axi_HLS_LINEAR_PERIPH_BUS_WDATA(4),
      O => int_c0(4)
    );
\int_c[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \^int_c_reg[31]_0\(5),
      I1 => s_axi_HLS_LINEAR_PERIPH_BUS_WSTRB(0),
      I2 => s_axi_HLS_LINEAR_PERIPH_BUS_WDATA(5),
      O => int_c0(5)
    );
\int_c[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \^int_c_reg[31]_0\(6),
      I1 => s_axi_HLS_LINEAR_PERIPH_BUS_WSTRB(0),
      I2 => s_axi_HLS_LINEAR_PERIPH_BUS_WDATA(6),
      O => int_c0(6)
    );
\int_c[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \^int_c_reg[31]_0\(7),
      I1 => s_axi_HLS_LINEAR_PERIPH_BUS_WSTRB(0),
      I2 => s_axi_HLS_LINEAR_PERIPH_BUS_WDATA(7),
      O => int_c0(7)
    );
\int_c[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \^int_c_reg[31]_0\(8),
      I1 => s_axi_HLS_LINEAR_PERIPH_BUS_WSTRB(1),
      I2 => s_axi_HLS_LINEAR_PERIPH_BUS_WDATA(8),
      O => int_c0(8)
    );
\int_c[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \^int_c_reg[31]_0\(9),
      I1 => s_axi_HLS_LINEAR_PERIPH_BUS_WSTRB(1),
      I2 => s_axi_HLS_LINEAR_PERIPH_BUS_WDATA(9),
      O => int_c0(9)
    );
\int_c_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_c[31]_i_1_n_0\,
      D => int_c0(0),
      Q => \^int_c_reg[31]_0\(0),
      R => \^ap_rst_n_inv\
    );
\int_c_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_c[31]_i_1_n_0\,
      D => int_c0(10),
      Q => \^int_c_reg[31]_0\(10),
      R => \^ap_rst_n_inv\
    );
\int_c_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_c[31]_i_1_n_0\,
      D => int_c0(11),
      Q => \^int_c_reg[31]_0\(11),
      R => \^ap_rst_n_inv\
    );
\int_c_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_c[31]_i_1_n_0\,
      D => int_c0(12),
      Q => \^int_c_reg[31]_0\(12),
      R => \^ap_rst_n_inv\
    );
\int_c_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_c[31]_i_1_n_0\,
      D => int_c0(13),
      Q => \^int_c_reg[31]_0\(13),
      R => \^ap_rst_n_inv\
    );
\int_c_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_c[31]_i_1_n_0\,
      D => int_c0(14),
      Q => \^int_c_reg[31]_0\(14),
      R => \^ap_rst_n_inv\
    );
\int_c_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_c[31]_i_1_n_0\,
      D => int_c0(15),
      Q => \^int_c_reg[31]_0\(15),
      R => \^ap_rst_n_inv\
    );
\int_c_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_c[31]_i_1_n_0\,
      D => int_c0(16),
      Q => \^int_c_reg[31]_0\(16),
      R => \^ap_rst_n_inv\
    );
\int_c_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_c[31]_i_1_n_0\,
      D => int_c0(17),
      Q => \^int_c_reg[31]_0\(17),
      R => \^ap_rst_n_inv\
    );
\int_c_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_c[31]_i_1_n_0\,
      D => int_c0(18),
      Q => \^int_c_reg[31]_0\(18),
      R => \^ap_rst_n_inv\
    );
\int_c_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_c[31]_i_1_n_0\,
      D => int_c0(19),
      Q => \^int_c_reg[31]_0\(19),
      R => \^ap_rst_n_inv\
    );
\int_c_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_c[31]_i_1_n_0\,
      D => int_c0(1),
      Q => \^int_c_reg[31]_0\(1),
      R => \^ap_rst_n_inv\
    );
\int_c_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_c[31]_i_1_n_0\,
      D => int_c0(20),
      Q => \^int_c_reg[31]_0\(20),
      R => \^ap_rst_n_inv\
    );
\int_c_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_c[31]_i_1_n_0\,
      D => int_c0(21),
      Q => \^int_c_reg[31]_0\(21),
      R => \^ap_rst_n_inv\
    );
\int_c_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_c[31]_i_1_n_0\,
      D => int_c0(22),
      Q => \^int_c_reg[31]_0\(22),
      R => \^ap_rst_n_inv\
    );
\int_c_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_c[31]_i_1_n_0\,
      D => int_c0(23),
      Q => \^int_c_reg[31]_0\(23),
      R => \^ap_rst_n_inv\
    );
\int_c_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_c[31]_i_1_n_0\,
      D => int_c0(24),
      Q => \^int_c_reg[31]_0\(24),
      R => \^ap_rst_n_inv\
    );
\int_c_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_c[31]_i_1_n_0\,
      D => int_c0(25),
      Q => \^int_c_reg[31]_0\(25),
      R => \^ap_rst_n_inv\
    );
\int_c_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_c[31]_i_1_n_0\,
      D => int_c0(26),
      Q => \^int_c_reg[31]_0\(26),
      R => \^ap_rst_n_inv\
    );
\int_c_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_c[31]_i_1_n_0\,
      D => int_c0(27),
      Q => \^int_c_reg[31]_0\(27),
      R => \^ap_rst_n_inv\
    );
\int_c_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_c[31]_i_1_n_0\,
      D => int_c0(28),
      Q => \^int_c_reg[31]_0\(28),
      R => \^ap_rst_n_inv\
    );
\int_c_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_c[31]_i_1_n_0\,
      D => int_c0(29),
      Q => \^int_c_reg[31]_0\(29),
      R => \^ap_rst_n_inv\
    );
\int_c_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_c[31]_i_1_n_0\,
      D => int_c0(2),
      Q => \^int_c_reg[31]_0\(2),
      R => \^ap_rst_n_inv\
    );
\int_c_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_c[31]_i_1_n_0\,
      D => int_c0(30),
      Q => \^int_c_reg[31]_0\(30),
      R => \^ap_rst_n_inv\
    );
\int_c_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_c[31]_i_1_n_0\,
      D => int_c0(31),
      Q => \^int_c_reg[31]_0\(31),
      R => \^ap_rst_n_inv\
    );
\int_c_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_c[31]_i_1_n_0\,
      D => int_c0(3),
      Q => \^int_c_reg[31]_0\(3),
      R => \^ap_rst_n_inv\
    );
\int_c_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_c[31]_i_1_n_0\,
      D => int_c0(4),
      Q => \^int_c_reg[31]_0\(4),
      R => \^ap_rst_n_inv\
    );
\int_c_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_c[31]_i_1_n_0\,
      D => int_c0(5),
      Q => \^int_c_reg[31]_0\(5),
      R => \^ap_rst_n_inv\
    );
\int_c_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_c[31]_i_1_n_0\,
      D => int_c0(6),
      Q => \^int_c_reg[31]_0\(6),
      R => \^ap_rst_n_inv\
    );
\int_c_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_c[31]_i_1_n_0\,
      D => int_c0(7),
      Q => \^int_c_reg[31]_0\(7),
      R => \^ap_rst_n_inv\
    );
\int_c_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_c[31]_i_1_n_0\,
      D => int_c0(8),
      Q => \^int_c_reg[31]_0\(8),
      R => \^ap_rst_n_inv\
    );
\int_c_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_c[31]_i_1_n_0\,
      D => int_c0(9),
      Q => \^int_c_reg[31]_0\(9),
      R => \^ap_rst_n_inv\
    );
int_done_ap_vld_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F7F0"
    )
        port map (
      I0 => int_y_ap_vld_i_2_n_0,
      I1 => s_axi_HLS_LINEAR_PERIPH_BUS_ARADDR(4),
      I2 => Q(2),
      I3 => int_done_ap_vld,
      O => int_done_ap_vld_i_1_n_0
    );
int_done_ap_vld_reg: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => int_done_ap_vld_i_1_n_0,
      Q => int_done_ap_vld,
      R => \^ap_rst_n_inv\
    );
\int_done_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => Q(2),
      D => '1',
      Q => int_done(0),
      R => \^ap_rst_n_inv\
    );
int_gie_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFF8000"
    )
        port map (
      I0 => s_axi_HLS_LINEAR_PERIPH_BUS_WDATA(0),
      I1 => s_axi_HLS_LINEAR_PERIPH_BUS_WSTRB(0),
      I2 => \waddr_reg_n_0_[2]\,
      I3 => int_auto_restart_i_2_n_0,
      I4 => int_gie_reg_n_0,
      O => int_gie_i_1_n_0
    );
int_gie_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => int_gie_i_1_n_0,
      Q => int_gie_reg_n_0,
      R => \^ap_rst_n_inv\
    );
\int_ier[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFFF2000"
    )
        port map (
      I0 => s_axi_HLS_LINEAR_PERIPH_BUS_WDATA(0),
      I1 => \waddr_reg_n_0_[2]\,
      I2 => s_axi_HLS_LINEAR_PERIPH_BUS_WSTRB(0),
      I3 => \int_ier[1]_i_2_n_0\,
      I4 => \int_ier_reg_n_0_[0]\,
      O => \int_ier[0]_i_1_n_0\
    );
\int_ier[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFFF2000"
    )
        port map (
      I0 => s_axi_HLS_LINEAR_PERIPH_BUS_WDATA(1),
      I1 => \waddr_reg_n_0_[2]\,
      I2 => s_axi_HLS_LINEAR_PERIPH_BUS_WSTRB(0),
      I3 => \int_ier[1]_i_2_n_0\,
      I4 => \int_ier_reg_n_0_[1]\,
      O => \int_ier[1]_i_1_n_0\
    );
\int_ier[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04000000"
    )
        port map (
      I0 => \waddr_reg_n_0_[4]\,
      I1 => \waddr_reg_n_0_[3]\,
      I2 => \waddr_reg_n_0_[5]\,
      I3 => s_axi_HLS_LINEAR_PERIPH_BUS_WVALID,
      I4 => \^fsm_onehot_wstate_reg[2]_0\,
      O => \int_ier[1]_i_2_n_0\
    );
\int_ier_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \int_ier[0]_i_1_n_0\,
      Q => \int_ier_reg_n_0_[0]\,
      R => \^ap_rst_n_inv\
    );
\int_ier_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \int_ier[1]_i_1_n_0\,
      Q => \int_ier_reg_n_0_[1]\,
      R => \^ap_rst_n_inv\
    );
int_interrupt_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \int_isr_reg_n_0_[0]\,
      I1 => \int_isr_reg_n_0_[1]\,
      I2 => int_gie_reg_n_0,
      O => int_interrupt0
    );
int_interrupt_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => int_interrupt0,
      Q => \^interrupt\,
      R => \^ap_rst_n_inv\
    );
\int_isr[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F777F888"
    )
        port map (
      I0 => s_axi_HLS_LINEAR_PERIPH_BUS_WDATA(0),
      I1 => int_isr7_out,
      I2 => Q(2),
      I3 => \int_ier_reg_n_0_[0]\,
      I4 => \int_isr_reg_n_0_[0]\,
      O => \int_isr[0]_i_1_n_0\
    );
\int_isr[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008000"
    )
        port map (
      I0 => s_axi_HLS_LINEAR_PERIPH_BUS_WSTRB(0),
      I1 => \waddr_reg_n_0_[2]\,
      I2 => int_ap_start_i_3_n_0,
      I3 => \waddr_reg_n_0_[3]\,
      I4 => \waddr_reg_n_0_[4]\,
      O => int_isr7_out
    );
\int_isr[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F777F888"
    )
        port map (
      I0 => s_axi_HLS_LINEAR_PERIPH_BUS_WDATA(1),
      I1 => int_isr7_out,
      I2 => \int_ier_reg_n_0_[1]\,
      I3 => Q(2),
      I4 => \int_isr_reg_n_0_[1]\,
      O => \int_isr[1]_i_1_n_0\
    );
\int_isr_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \int_isr[0]_i_1_n_0\,
      Q => \int_isr_reg_n_0_[0]\,
      R => \^ap_rst_n_inv\
    );
\int_isr_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \int_isr[1]_i_1_n_0\,
      Q => \int_isr_reg_n_0_[1]\,
      R => \^ap_rst_n_inv\
    );
\int_m[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => m(0),
      I1 => s_axi_HLS_LINEAR_PERIPH_BUS_WSTRB(0),
      I2 => s_axi_HLS_LINEAR_PERIPH_BUS_WDATA(0),
      O => \^int_m0\(0)
    );
\int_m[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => m(10),
      I1 => s_axi_HLS_LINEAR_PERIPH_BUS_WSTRB(1),
      I2 => s_axi_HLS_LINEAR_PERIPH_BUS_WDATA(10),
      O => \^int_m0\(10)
    );
\int_m[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => m(11),
      I1 => s_axi_HLS_LINEAR_PERIPH_BUS_WSTRB(1),
      I2 => s_axi_HLS_LINEAR_PERIPH_BUS_WDATA(11),
      O => \^int_m0\(11)
    );
\int_m[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => m(12),
      I1 => s_axi_HLS_LINEAR_PERIPH_BUS_WSTRB(1),
      I2 => s_axi_HLS_LINEAR_PERIPH_BUS_WDATA(12),
      O => \^int_m0\(12)
    );
\int_m[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => m(13),
      I1 => s_axi_HLS_LINEAR_PERIPH_BUS_WSTRB(1),
      I2 => s_axi_HLS_LINEAR_PERIPH_BUS_WDATA(13),
      O => \^int_m0\(13)
    );
\int_m[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => m(14),
      I1 => s_axi_HLS_LINEAR_PERIPH_BUS_WSTRB(1),
      I2 => s_axi_HLS_LINEAR_PERIPH_BUS_WDATA(14),
      O => \^int_m0\(14)
    );
\int_m[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => m(15),
      I1 => s_axi_HLS_LINEAR_PERIPH_BUS_WSTRB(1),
      I2 => s_axi_HLS_LINEAR_PERIPH_BUS_WDATA(15),
      O => \^int_m0\(15)
    );
\int_m[16]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => m(16),
      I1 => s_axi_HLS_LINEAR_PERIPH_BUS_WSTRB(2),
      I2 => s_axi_HLS_LINEAR_PERIPH_BUS_WDATA(16),
      O => \^int_m0\(16)
    );
\int_m[17]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => m(17),
      I1 => s_axi_HLS_LINEAR_PERIPH_BUS_WSTRB(2),
      I2 => s_axi_HLS_LINEAR_PERIPH_BUS_WDATA(17),
      O => \^int_m0\(17)
    );
\int_m[18]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => m(18),
      I1 => s_axi_HLS_LINEAR_PERIPH_BUS_WSTRB(2),
      I2 => s_axi_HLS_LINEAR_PERIPH_BUS_WDATA(18),
      O => \^int_m0\(18)
    );
\int_m[19]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => m(19),
      I1 => s_axi_HLS_LINEAR_PERIPH_BUS_WSTRB(2),
      I2 => s_axi_HLS_LINEAR_PERIPH_BUS_WDATA(19),
      O => \^int_m0\(19)
    );
\int_m[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => m(1),
      I1 => s_axi_HLS_LINEAR_PERIPH_BUS_WSTRB(0),
      I2 => s_axi_HLS_LINEAR_PERIPH_BUS_WDATA(1),
      O => \^int_m0\(1)
    );
\int_m[20]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => m(20),
      I1 => s_axi_HLS_LINEAR_PERIPH_BUS_WSTRB(2),
      I2 => s_axi_HLS_LINEAR_PERIPH_BUS_WDATA(20),
      O => \^int_m0\(20)
    );
\int_m[21]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => m(21),
      I1 => s_axi_HLS_LINEAR_PERIPH_BUS_WSTRB(2),
      I2 => s_axi_HLS_LINEAR_PERIPH_BUS_WDATA(21),
      O => \^int_m0\(21)
    );
\int_m[22]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => m(22),
      I1 => s_axi_HLS_LINEAR_PERIPH_BUS_WSTRB(2),
      I2 => s_axi_HLS_LINEAR_PERIPH_BUS_WDATA(22),
      O => \^int_m0\(22)
    );
\int_m[23]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => m(23),
      I1 => s_axi_HLS_LINEAR_PERIPH_BUS_WSTRB(2),
      I2 => s_axi_HLS_LINEAR_PERIPH_BUS_WDATA(23),
      O => \^int_m0\(23)
    );
\int_m[24]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => m(24),
      I1 => s_axi_HLS_LINEAR_PERIPH_BUS_WSTRB(3),
      I2 => s_axi_HLS_LINEAR_PERIPH_BUS_WDATA(24),
      O => \^int_m0\(24)
    );
\int_m[25]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => m(25),
      I1 => s_axi_HLS_LINEAR_PERIPH_BUS_WSTRB(3),
      I2 => s_axi_HLS_LINEAR_PERIPH_BUS_WDATA(25),
      O => \^int_m0\(25)
    );
\int_m[26]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => m(26),
      I1 => s_axi_HLS_LINEAR_PERIPH_BUS_WSTRB(3),
      I2 => s_axi_HLS_LINEAR_PERIPH_BUS_WDATA(26),
      O => \^int_m0\(26)
    );
\int_m[27]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => m(27),
      I1 => s_axi_HLS_LINEAR_PERIPH_BUS_WSTRB(3),
      I2 => s_axi_HLS_LINEAR_PERIPH_BUS_WDATA(27),
      O => \^int_m0\(27)
    );
\int_m[28]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => m(28),
      I1 => s_axi_HLS_LINEAR_PERIPH_BUS_WSTRB(3),
      I2 => s_axi_HLS_LINEAR_PERIPH_BUS_WDATA(28),
      O => \^int_m0\(28)
    );
\int_m[29]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => m(29),
      I1 => s_axi_HLS_LINEAR_PERIPH_BUS_WSTRB(3),
      I2 => s_axi_HLS_LINEAR_PERIPH_BUS_WDATA(29),
      O => \^int_m0\(29)
    );
\int_m[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => m(2),
      I1 => s_axi_HLS_LINEAR_PERIPH_BUS_WSTRB(0),
      I2 => s_axi_HLS_LINEAR_PERIPH_BUS_WDATA(2),
      O => \^int_m0\(2)
    );
\int_m[30]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => m(30),
      I1 => s_axi_HLS_LINEAR_PERIPH_BUS_WSTRB(3),
      I2 => s_axi_HLS_LINEAR_PERIPH_BUS_WDATA(30),
      O => \^int_m0\(30)
    );
\int_m[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0040000000000000"
    )
        port map (
      I0 => \waddr_reg_n_0_[2]\,
      I1 => \waddr_reg_n_0_[3]\,
      I2 => \waddr_reg_n_0_[4]\,
      I3 => \waddr_reg_n_0_[5]\,
      I4 => s_axi_HLS_LINEAR_PERIPH_BUS_WVALID,
      I5 => \^fsm_onehot_wstate_reg[2]_0\,
      O => \^waddr_reg[2]_0\(0)
    );
\int_m[31]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => m(31),
      I1 => s_axi_HLS_LINEAR_PERIPH_BUS_WSTRB(3),
      I2 => s_axi_HLS_LINEAR_PERIPH_BUS_WDATA(31),
      O => \^int_m0\(31)
    );
\int_m[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => m(3),
      I1 => s_axi_HLS_LINEAR_PERIPH_BUS_WSTRB(0),
      I2 => s_axi_HLS_LINEAR_PERIPH_BUS_WDATA(3),
      O => \^int_m0\(3)
    );
\int_m[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => m(4),
      I1 => s_axi_HLS_LINEAR_PERIPH_BUS_WSTRB(0),
      I2 => s_axi_HLS_LINEAR_PERIPH_BUS_WDATA(4),
      O => \^int_m0\(4)
    );
\int_m[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => m(5),
      I1 => s_axi_HLS_LINEAR_PERIPH_BUS_WSTRB(0),
      I2 => s_axi_HLS_LINEAR_PERIPH_BUS_WDATA(5),
      O => \^int_m0\(5)
    );
\int_m[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => m(6),
      I1 => s_axi_HLS_LINEAR_PERIPH_BUS_WSTRB(0),
      I2 => s_axi_HLS_LINEAR_PERIPH_BUS_WDATA(6),
      O => \^int_m0\(6)
    );
\int_m[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => m(7),
      I1 => s_axi_HLS_LINEAR_PERIPH_BUS_WSTRB(0),
      I2 => s_axi_HLS_LINEAR_PERIPH_BUS_WDATA(7),
      O => \^int_m0\(7)
    );
\int_m[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => m(8),
      I1 => s_axi_HLS_LINEAR_PERIPH_BUS_WSTRB(1),
      I2 => s_axi_HLS_LINEAR_PERIPH_BUS_WDATA(8),
      O => \^int_m0\(8)
    );
\int_m[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => m(9),
      I1 => s_axi_HLS_LINEAR_PERIPH_BUS_WSTRB(1),
      I2 => s_axi_HLS_LINEAR_PERIPH_BUS_WDATA(9),
      O => \^int_m0\(9)
    );
\int_m_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^waddr_reg[2]_0\(0),
      D => \^int_m0\(0),
      Q => m(0),
      R => \^ap_rst_n_inv\
    );
\int_m_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^waddr_reg[2]_0\(0),
      D => \^int_m0\(10),
      Q => m(10),
      R => \^ap_rst_n_inv\
    );
\int_m_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^waddr_reg[2]_0\(0),
      D => \^int_m0\(11),
      Q => m(11),
      R => \^ap_rst_n_inv\
    );
\int_m_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^waddr_reg[2]_0\(0),
      D => \^int_m0\(12),
      Q => m(12),
      R => \^ap_rst_n_inv\
    );
\int_m_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^waddr_reg[2]_0\(0),
      D => \^int_m0\(13),
      Q => m(13),
      R => \^ap_rst_n_inv\
    );
\int_m_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^waddr_reg[2]_0\(0),
      D => \^int_m0\(14),
      Q => m(14),
      R => \^ap_rst_n_inv\
    );
\int_m_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^waddr_reg[2]_0\(0),
      D => \^int_m0\(15),
      Q => m(15),
      R => \^ap_rst_n_inv\
    );
\int_m_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^waddr_reg[2]_0\(0),
      D => \^int_m0\(16),
      Q => m(16),
      R => \^ap_rst_n_inv\
    );
\int_m_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^waddr_reg[2]_0\(0),
      D => \^int_m0\(17),
      Q => m(17),
      R => \^ap_rst_n_inv\
    );
\int_m_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^waddr_reg[2]_0\(0),
      D => \^int_m0\(18),
      Q => m(18),
      R => \^ap_rst_n_inv\
    );
\int_m_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^waddr_reg[2]_0\(0),
      D => \^int_m0\(19),
      Q => m(19),
      R => \^ap_rst_n_inv\
    );
\int_m_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^waddr_reg[2]_0\(0),
      D => \^int_m0\(1),
      Q => m(1),
      R => \^ap_rst_n_inv\
    );
\int_m_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^waddr_reg[2]_0\(0),
      D => \^int_m0\(20),
      Q => m(20),
      R => \^ap_rst_n_inv\
    );
\int_m_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^waddr_reg[2]_0\(0),
      D => \^int_m0\(21),
      Q => m(21),
      R => \^ap_rst_n_inv\
    );
\int_m_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^waddr_reg[2]_0\(0),
      D => \^int_m0\(22),
      Q => m(22),
      R => \^ap_rst_n_inv\
    );
\int_m_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^waddr_reg[2]_0\(0),
      D => \^int_m0\(23),
      Q => m(23),
      R => \^ap_rst_n_inv\
    );
\int_m_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^waddr_reg[2]_0\(0),
      D => \^int_m0\(24),
      Q => m(24),
      R => \^ap_rst_n_inv\
    );
\int_m_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^waddr_reg[2]_0\(0),
      D => \^int_m0\(25),
      Q => m(25),
      R => \^ap_rst_n_inv\
    );
\int_m_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^waddr_reg[2]_0\(0),
      D => \^int_m0\(26),
      Q => m(26),
      R => \^ap_rst_n_inv\
    );
\int_m_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^waddr_reg[2]_0\(0),
      D => \^int_m0\(27),
      Q => m(27),
      R => \^ap_rst_n_inv\
    );
\int_m_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^waddr_reg[2]_0\(0),
      D => \^int_m0\(28),
      Q => m(28),
      R => \^ap_rst_n_inv\
    );
\int_m_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^waddr_reg[2]_0\(0),
      D => \^int_m0\(29),
      Q => m(29),
      R => \^ap_rst_n_inv\
    );
\int_m_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^waddr_reg[2]_0\(0),
      D => \^int_m0\(2),
      Q => m(2),
      R => \^ap_rst_n_inv\
    );
\int_m_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^waddr_reg[2]_0\(0),
      D => \^int_m0\(30),
      Q => m(30),
      R => \^ap_rst_n_inv\
    );
\int_m_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^waddr_reg[2]_0\(0),
      D => \^int_m0\(31),
      Q => m(31),
      R => \^ap_rst_n_inv\
    );
\int_m_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^waddr_reg[2]_0\(0),
      D => \^int_m0\(3),
      Q => m(3),
      R => \^ap_rst_n_inv\
    );
\int_m_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^waddr_reg[2]_0\(0),
      D => \^int_m0\(4),
      Q => m(4),
      R => \^ap_rst_n_inv\
    );
\int_m_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^waddr_reg[2]_0\(0),
      D => \^int_m0\(5),
      Q => m(5),
      R => \^ap_rst_n_inv\
    );
\int_m_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^waddr_reg[2]_0\(0),
      D => \^int_m0\(6),
      Q => m(6),
      R => \^ap_rst_n_inv\
    );
\int_m_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^waddr_reg[2]_0\(0),
      D => \^int_m0\(7),
      Q => m(7),
      R => \^ap_rst_n_inv\
    );
\int_m_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^waddr_reg[2]_0\(0),
      D => \^int_m0\(8),
      Q => m(8),
      R => \^ap_rst_n_inv\
    );
\int_m_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^waddr_reg[2]_0\(0),
      D => \^int_m0\(9),
      Q => m(9),
      R => \^ap_rst_n_inv\
    );
int_task_ap_done_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2E22FFFF2E222E22"
    )
        port map (
      I0 => Q(2),
      I1 => auto_restart_status_reg_n_0,
      I2 => p_7_in(2),
      I3 => ap_idle,
      I4 => int_task_ap_done_i_2_n_0,
      I5 => int_task_ap_done,
      O => int_task_ap_done_i_1_n_0
    );
int_task_ap_done_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000001000"
    )
        port map (
      I0 => s_axi_HLS_LINEAR_PERIPH_BUS_ARADDR(1),
      I1 => s_axi_HLS_LINEAR_PERIPH_BUS_ARADDR(0),
      I2 => int_task_ap_done_i_3_n_0,
      I3 => ar_hs,
      I4 => s_axi_HLS_LINEAR_PERIPH_BUS_ARADDR(2),
      I5 => s_axi_HLS_LINEAR_PERIPH_BUS_ARADDR(5),
      O => int_task_ap_done_i_2_n_0
    );
int_task_ap_done_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s_axi_HLS_LINEAR_PERIPH_BUS_ARADDR(3),
      I1 => s_axi_HLS_LINEAR_PERIPH_BUS_ARADDR(4),
      O => int_task_ap_done_i_3_n_0
    );
int_task_ap_done_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => int_task_ap_done_i_1_n_0,
      Q => int_task_ap_done,
      R => \^ap_rst_n_inv\
    );
\int_x[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => x(0),
      I1 => s_axi_HLS_LINEAR_PERIPH_BUS_WSTRB(0),
      I2 => s_axi_HLS_LINEAR_PERIPH_BUS_WDATA(0),
      O => \^int_x0\(0)
    );
\int_x[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => x(10),
      I1 => s_axi_HLS_LINEAR_PERIPH_BUS_WSTRB(1),
      I2 => s_axi_HLS_LINEAR_PERIPH_BUS_WDATA(10),
      O => \^int_x0\(10)
    );
\int_x[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => x(11),
      I1 => s_axi_HLS_LINEAR_PERIPH_BUS_WSTRB(1),
      I2 => s_axi_HLS_LINEAR_PERIPH_BUS_WDATA(11),
      O => \^int_x0\(11)
    );
\int_x[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => x(12),
      I1 => s_axi_HLS_LINEAR_PERIPH_BUS_WSTRB(1),
      I2 => s_axi_HLS_LINEAR_PERIPH_BUS_WDATA(12),
      O => \^int_x0\(12)
    );
\int_x[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => x(13),
      I1 => s_axi_HLS_LINEAR_PERIPH_BUS_WSTRB(1),
      I2 => s_axi_HLS_LINEAR_PERIPH_BUS_WDATA(13),
      O => \^int_x0\(13)
    );
\int_x[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => x(14),
      I1 => s_axi_HLS_LINEAR_PERIPH_BUS_WSTRB(1),
      I2 => s_axi_HLS_LINEAR_PERIPH_BUS_WDATA(14),
      O => \^int_x0\(14)
    );
\int_x[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => x(15),
      I1 => s_axi_HLS_LINEAR_PERIPH_BUS_WSTRB(1),
      I2 => s_axi_HLS_LINEAR_PERIPH_BUS_WDATA(15),
      O => \^int_x0\(15)
    );
\int_x[16]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => x(16),
      I1 => s_axi_HLS_LINEAR_PERIPH_BUS_WSTRB(2),
      I2 => s_axi_HLS_LINEAR_PERIPH_BUS_WDATA(16),
      O => \^int_x0\(16)
    );
\int_x[17]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => x(17),
      I1 => s_axi_HLS_LINEAR_PERIPH_BUS_WSTRB(2),
      I2 => s_axi_HLS_LINEAR_PERIPH_BUS_WDATA(17),
      O => \^int_x0\(17)
    );
\int_x[18]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => x(18),
      I1 => s_axi_HLS_LINEAR_PERIPH_BUS_WSTRB(2),
      I2 => s_axi_HLS_LINEAR_PERIPH_BUS_WDATA(18),
      O => \^int_x0\(18)
    );
\int_x[19]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => x(19),
      I1 => s_axi_HLS_LINEAR_PERIPH_BUS_WSTRB(2),
      I2 => s_axi_HLS_LINEAR_PERIPH_BUS_WDATA(19),
      O => \^int_x0\(19)
    );
\int_x[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => x(1),
      I1 => s_axi_HLS_LINEAR_PERIPH_BUS_WSTRB(0),
      I2 => s_axi_HLS_LINEAR_PERIPH_BUS_WDATA(1),
      O => \^int_x0\(1)
    );
\int_x[20]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => x(20),
      I1 => s_axi_HLS_LINEAR_PERIPH_BUS_WSTRB(2),
      I2 => s_axi_HLS_LINEAR_PERIPH_BUS_WDATA(20),
      O => \^int_x0\(20)
    );
\int_x[21]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => x(21),
      I1 => s_axi_HLS_LINEAR_PERIPH_BUS_WSTRB(2),
      I2 => s_axi_HLS_LINEAR_PERIPH_BUS_WDATA(21),
      O => \^int_x0\(21)
    );
\int_x[22]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => x(22),
      I1 => s_axi_HLS_LINEAR_PERIPH_BUS_WSTRB(2),
      I2 => s_axi_HLS_LINEAR_PERIPH_BUS_WDATA(22),
      O => \^int_x0\(22)
    );
\int_x[23]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => x(23),
      I1 => s_axi_HLS_LINEAR_PERIPH_BUS_WSTRB(2),
      I2 => s_axi_HLS_LINEAR_PERIPH_BUS_WDATA(23),
      O => \^int_x0\(23)
    );
\int_x[24]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => x(24),
      I1 => s_axi_HLS_LINEAR_PERIPH_BUS_WSTRB(3),
      I2 => s_axi_HLS_LINEAR_PERIPH_BUS_WDATA(24),
      O => \^int_x0\(24)
    );
\int_x[25]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => x(25),
      I1 => s_axi_HLS_LINEAR_PERIPH_BUS_WSTRB(3),
      I2 => s_axi_HLS_LINEAR_PERIPH_BUS_WDATA(25),
      O => \^int_x0\(25)
    );
\int_x[26]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => x(26),
      I1 => s_axi_HLS_LINEAR_PERIPH_BUS_WSTRB(3),
      I2 => s_axi_HLS_LINEAR_PERIPH_BUS_WDATA(26),
      O => \^int_x0\(26)
    );
\int_x[27]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => x(27),
      I1 => s_axi_HLS_LINEAR_PERIPH_BUS_WSTRB(3),
      I2 => s_axi_HLS_LINEAR_PERIPH_BUS_WDATA(27),
      O => \^int_x0\(27)
    );
\int_x[28]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => x(28),
      I1 => s_axi_HLS_LINEAR_PERIPH_BUS_WSTRB(3),
      I2 => s_axi_HLS_LINEAR_PERIPH_BUS_WDATA(28),
      O => \^int_x0\(28)
    );
\int_x[29]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => x(29),
      I1 => s_axi_HLS_LINEAR_PERIPH_BUS_WSTRB(3),
      I2 => s_axi_HLS_LINEAR_PERIPH_BUS_WDATA(29),
      O => \^int_x0\(29)
    );
\int_x[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => x(2),
      I1 => s_axi_HLS_LINEAR_PERIPH_BUS_WSTRB(0),
      I2 => s_axi_HLS_LINEAR_PERIPH_BUS_WDATA(2),
      O => \^int_x0\(2)
    );
\int_x[30]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => x(30),
      I1 => s_axi_HLS_LINEAR_PERIPH_BUS_WSTRB(3),
      I2 => s_axi_HLS_LINEAR_PERIPH_BUS_WDATA(30),
      O => \^int_x0\(30)
    );
\int_x[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0004000000000000"
    )
        port map (
      I0 => \waddr_reg_n_0_[2]\,
      I1 => \waddr_reg_n_0_[4]\,
      I2 => \waddr_reg_n_0_[3]\,
      I3 => \waddr_reg_n_0_[5]\,
      I4 => s_axi_HLS_LINEAR_PERIPH_BUS_WVALID,
      I5 => \^fsm_onehot_wstate_reg[2]_0\,
      O => \^e\(0)
    );
\int_x[31]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => x(31),
      I1 => s_axi_HLS_LINEAR_PERIPH_BUS_WSTRB(3),
      I2 => s_axi_HLS_LINEAR_PERIPH_BUS_WDATA(31),
      O => \^int_x0\(31)
    );
\int_x[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => x(3),
      I1 => s_axi_HLS_LINEAR_PERIPH_BUS_WSTRB(0),
      I2 => s_axi_HLS_LINEAR_PERIPH_BUS_WDATA(3),
      O => \^int_x0\(3)
    );
\int_x[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => x(4),
      I1 => s_axi_HLS_LINEAR_PERIPH_BUS_WSTRB(0),
      I2 => s_axi_HLS_LINEAR_PERIPH_BUS_WDATA(4),
      O => \^int_x0\(4)
    );
\int_x[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => x(5),
      I1 => s_axi_HLS_LINEAR_PERIPH_BUS_WSTRB(0),
      I2 => s_axi_HLS_LINEAR_PERIPH_BUS_WDATA(5),
      O => \^int_x0\(5)
    );
\int_x[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => x(6),
      I1 => s_axi_HLS_LINEAR_PERIPH_BUS_WSTRB(0),
      I2 => s_axi_HLS_LINEAR_PERIPH_BUS_WDATA(6),
      O => \^int_x0\(6)
    );
\int_x[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => x(7),
      I1 => s_axi_HLS_LINEAR_PERIPH_BUS_WSTRB(0),
      I2 => s_axi_HLS_LINEAR_PERIPH_BUS_WDATA(7),
      O => \^int_x0\(7)
    );
\int_x[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => x(8),
      I1 => s_axi_HLS_LINEAR_PERIPH_BUS_WSTRB(1),
      I2 => s_axi_HLS_LINEAR_PERIPH_BUS_WDATA(8),
      O => \^int_x0\(8)
    );
\int_x[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => x(9),
      I1 => s_axi_HLS_LINEAR_PERIPH_BUS_WSTRB(1),
      I2 => s_axi_HLS_LINEAR_PERIPH_BUS_WDATA(9),
      O => \^int_x0\(9)
    );
\int_x_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^e\(0),
      D => \^int_x0\(0),
      Q => x(0),
      R => \^ap_rst_n_inv\
    );
\int_x_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^e\(0),
      D => \^int_x0\(10),
      Q => x(10),
      R => \^ap_rst_n_inv\
    );
\int_x_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^e\(0),
      D => \^int_x0\(11),
      Q => x(11),
      R => \^ap_rst_n_inv\
    );
\int_x_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^e\(0),
      D => \^int_x0\(12),
      Q => x(12),
      R => \^ap_rst_n_inv\
    );
\int_x_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^e\(0),
      D => \^int_x0\(13),
      Q => x(13),
      R => \^ap_rst_n_inv\
    );
\int_x_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^e\(0),
      D => \^int_x0\(14),
      Q => x(14),
      R => \^ap_rst_n_inv\
    );
\int_x_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^e\(0),
      D => \^int_x0\(15),
      Q => x(15),
      R => \^ap_rst_n_inv\
    );
\int_x_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^e\(0),
      D => \^int_x0\(16),
      Q => x(16),
      R => \^ap_rst_n_inv\
    );
\int_x_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^e\(0),
      D => \^int_x0\(17),
      Q => x(17),
      R => \^ap_rst_n_inv\
    );
\int_x_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^e\(0),
      D => \^int_x0\(18),
      Q => x(18),
      R => \^ap_rst_n_inv\
    );
\int_x_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^e\(0),
      D => \^int_x0\(19),
      Q => x(19),
      R => \^ap_rst_n_inv\
    );
\int_x_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^e\(0),
      D => \^int_x0\(1),
      Q => x(1),
      R => \^ap_rst_n_inv\
    );
\int_x_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^e\(0),
      D => \^int_x0\(20),
      Q => x(20),
      R => \^ap_rst_n_inv\
    );
\int_x_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^e\(0),
      D => \^int_x0\(21),
      Q => x(21),
      R => \^ap_rst_n_inv\
    );
\int_x_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^e\(0),
      D => \^int_x0\(22),
      Q => x(22),
      R => \^ap_rst_n_inv\
    );
\int_x_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^e\(0),
      D => \^int_x0\(23),
      Q => x(23),
      R => \^ap_rst_n_inv\
    );
\int_x_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^e\(0),
      D => \^int_x0\(24),
      Q => x(24),
      R => \^ap_rst_n_inv\
    );
\int_x_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^e\(0),
      D => \^int_x0\(25),
      Q => x(25),
      R => \^ap_rst_n_inv\
    );
\int_x_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^e\(0),
      D => \^int_x0\(26),
      Q => x(26),
      R => \^ap_rst_n_inv\
    );
\int_x_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^e\(0),
      D => \^int_x0\(27),
      Q => x(27),
      R => \^ap_rst_n_inv\
    );
\int_x_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^e\(0),
      D => \^int_x0\(28),
      Q => x(28),
      R => \^ap_rst_n_inv\
    );
\int_x_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^e\(0),
      D => \^int_x0\(29),
      Q => x(29),
      R => \^ap_rst_n_inv\
    );
\int_x_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^e\(0),
      D => \^int_x0\(2),
      Q => x(2),
      R => \^ap_rst_n_inv\
    );
\int_x_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^e\(0),
      D => \^int_x0\(30),
      Q => x(30),
      R => \^ap_rst_n_inv\
    );
\int_x_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^e\(0),
      D => \^int_x0\(31),
      Q => x(31),
      R => \^ap_rst_n_inv\
    );
\int_x_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^e\(0),
      D => \^int_x0\(3),
      Q => x(3),
      R => \^ap_rst_n_inv\
    );
\int_x_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^e\(0),
      D => \^int_x0\(4),
      Q => x(4),
      R => \^ap_rst_n_inv\
    );
\int_x_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^e\(0),
      D => \^int_x0\(5),
      Q => x(5),
      R => \^ap_rst_n_inv\
    );
\int_x_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^e\(0),
      D => \^int_x0\(6),
      Q => x(6),
      R => \^ap_rst_n_inv\
    );
\int_x_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^e\(0),
      D => \^int_x0\(7),
      Q => x(7),
      R => \^ap_rst_n_inv\
    );
\int_x_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^e\(0),
      D => \^int_x0\(8),
      Q => x(8),
      R => \^ap_rst_n_inv\
    );
\int_x_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^e\(0),
      D => \^int_x0\(9),
      Q => x(9),
      R => \^ap_rst_n_inv\
    );
\int_y[11]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \int_y_reg[31]_0\(11),
      I1 => \int_y_reg[31]_1\(11),
      O => \int_y[11]_i_2_n_0\
    );
\int_y[11]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \int_y_reg[31]_0\(10),
      I1 => \int_y_reg[31]_1\(10),
      O => \int_y[11]_i_3_n_0\
    );
\int_y[11]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \int_y_reg[31]_0\(9),
      I1 => \int_y_reg[31]_1\(9),
      O => \int_y[11]_i_4_n_0\
    );
\int_y[11]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \int_y_reg[31]_0\(8),
      I1 => \int_y_reg[31]_1\(8),
      O => \int_y[11]_i_5_n_0\
    );
\int_y[15]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \int_y_reg[31]_0\(15),
      I1 => \int_y_reg[31]_1\(15),
      O => \int_y[15]_i_2_n_0\
    );
\int_y[15]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \int_y_reg[31]_0\(14),
      I1 => \int_y_reg[31]_1\(14),
      O => \int_y[15]_i_3_n_0\
    );
\int_y[15]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \int_y_reg[31]_0\(13),
      I1 => \int_y_reg[31]_1\(13),
      O => \int_y[15]_i_4_n_0\
    );
\int_y[15]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \int_y_reg[31]_0\(12),
      I1 => \int_y_reg[31]_1\(12),
      O => \int_y[15]_i_5_n_0\
    );
\int_y[19]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \int_y_reg[31]_0\(19),
      I1 => \int_y_reg[31]_1\(19),
      O => \int_y[19]_i_2_n_0\
    );
\int_y[19]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \int_y_reg[31]_0\(18),
      I1 => \int_y_reg[31]_1\(18),
      O => \int_y[19]_i_3_n_0\
    );
\int_y[19]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \int_y_reg[31]_0\(17),
      I1 => \int_y_reg[31]_1\(17),
      O => \int_y[19]_i_4_n_0\
    );
\int_y[19]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \int_y_reg[31]_0\(16),
      I1 => \int_y_reg[31]_1\(16),
      O => \int_y[19]_i_5_n_0\
    );
\int_y[23]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \int_y_reg[31]_0\(23),
      I1 => \int_y_reg[31]_1\(23),
      O => \int_y[23]_i_2_n_0\
    );
\int_y[23]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \int_y_reg[31]_0\(22),
      I1 => \int_y_reg[31]_1\(22),
      O => \int_y[23]_i_3_n_0\
    );
\int_y[23]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \int_y_reg[31]_0\(21),
      I1 => \int_y_reg[31]_1\(21),
      O => \int_y[23]_i_4_n_0\
    );
\int_y[23]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \int_y_reg[31]_0\(20),
      I1 => \int_y_reg[31]_1\(20),
      O => \int_y[23]_i_5_n_0\
    );
\int_y[27]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \int_y_reg[31]_0\(27),
      I1 => \int_y_reg[31]_1\(27),
      O => \int_y[27]_i_2_n_0\
    );
\int_y[27]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \int_y_reg[31]_0\(26),
      I1 => \int_y_reg[31]_1\(26),
      O => \int_y[27]_i_3_n_0\
    );
\int_y[27]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \int_y_reg[31]_0\(25),
      I1 => \int_y_reg[31]_1\(25),
      O => \int_y[27]_i_4_n_0\
    );
\int_y[27]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \int_y_reg[31]_0\(24),
      I1 => \int_y_reg[31]_1\(24),
      O => \int_y[27]_i_5_n_0\
    );
\int_y[31]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \int_y_reg[31]_0\(31),
      I1 => \int_y_reg[31]_1\(31),
      O => \int_y[31]_i_2_n_0\
    );
\int_y[31]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \int_y_reg[31]_0\(30),
      I1 => \int_y_reg[31]_1\(30),
      O => \int_y[31]_i_3_n_0\
    );
\int_y[31]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \int_y_reg[31]_0\(29),
      I1 => \int_y_reg[31]_1\(29),
      O => \int_y[31]_i_4_n_0\
    );
\int_y[31]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \int_y_reg[31]_0\(28),
      I1 => \int_y_reg[31]_1\(28),
      O => \int_y[31]_i_5_n_0\
    );
\int_y[3]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \int_y_reg[31]_0\(3),
      I1 => \int_y_reg[31]_1\(3),
      O => \int_y[3]_i_2_n_0\
    );
\int_y[3]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \int_y_reg[31]_0\(2),
      I1 => \int_y_reg[31]_1\(2),
      O => \int_y[3]_i_3_n_0\
    );
\int_y[3]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \int_y_reg[31]_0\(1),
      I1 => \int_y_reg[31]_1\(1),
      O => \int_y[3]_i_4_n_0\
    );
\int_y[3]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \int_y_reg[31]_0\(0),
      I1 => \int_y_reg[31]_1\(0),
      O => \int_y[3]_i_5_n_0\
    );
\int_y[7]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \int_y_reg[31]_0\(7),
      I1 => \int_y_reg[31]_1\(7),
      O => \int_y[7]_i_2_n_0\
    );
\int_y[7]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \int_y_reg[31]_0\(6),
      I1 => \int_y_reg[31]_1\(6),
      O => \int_y[7]_i_3_n_0\
    );
\int_y[7]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \int_y_reg[31]_0\(5),
      I1 => \int_y_reg[31]_1\(5),
      O => \int_y[7]_i_4_n_0\
    );
\int_y[7]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \int_y_reg[31]_0\(4),
      I1 => \int_y_reg[31]_1\(4),
      O => \int_y[7]_i_5_n_0\
    );
int_y_ap_vld_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FBF0"
    )
        port map (
      I0 => s_axi_HLS_LINEAR_PERIPH_BUS_ARADDR(4),
      I1 => int_y_ap_vld_i_2_n_0,
      I2 => Q(2),
      I3 => int_y_ap_vld,
      O => int_y_ap_vld_i_1_n_0
    );
int_y_ap_vld_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0200000000000000"
    )
        port map (
      I0 => ar_hs,
      I1 => s_axi_HLS_LINEAR_PERIPH_BUS_ARADDR(1),
      I2 => s_axi_HLS_LINEAR_PERIPH_BUS_ARADDR(0),
      I3 => s_axi_HLS_LINEAR_PERIPH_BUS_ARADDR(2),
      I4 => s_axi_HLS_LINEAR_PERIPH_BUS_ARADDR(3),
      I5 => s_axi_HLS_LINEAR_PERIPH_BUS_ARADDR(5),
      O => int_y_ap_vld_i_2_n_0
    );
int_y_ap_vld_reg: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => int_y_ap_vld_i_1_n_0,
      Q => int_y_ap_vld,
      R => \^ap_rst_n_inv\
    );
\int_y_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => Q(2),
      D => y(0),
      Q => int_y(0),
      R => \^ap_rst_n_inv\
    );
\int_y_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => Q(2),
      D => y(10),
      Q => int_y(10),
      R => \^ap_rst_n_inv\
    );
\int_y_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => Q(2),
      D => y(11),
      Q => int_y(11),
      R => \^ap_rst_n_inv\
    );
\int_y_reg[11]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \int_y_reg[7]_i_1_n_0\,
      CO(3) => \int_y_reg[11]_i_1_n_0\,
      CO(2) => \int_y_reg[11]_i_1_n_1\,
      CO(1) => \int_y_reg[11]_i_1_n_2\,
      CO(0) => \int_y_reg[11]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \int_y_reg[31]_0\(11 downto 8),
      O(3 downto 0) => y(11 downto 8),
      S(3) => \int_y[11]_i_2_n_0\,
      S(2) => \int_y[11]_i_3_n_0\,
      S(1) => \int_y[11]_i_4_n_0\,
      S(0) => \int_y[11]_i_5_n_0\
    );
\int_y_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => Q(2),
      D => y(12),
      Q => int_y(12),
      R => \^ap_rst_n_inv\
    );
\int_y_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => Q(2),
      D => y(13),
      Q => int_y(13),
      R => \^ap_rst_n_inv\
    );
\int_y_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => Q(2),
      D => y(14),
      Q => int_y(14),
      R => \^ap_rst_n_inv\
    );
\int_y_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => Q(2),
      D => y(15),
      Q => int_y(15),
      R => \^ap_rst_n_inv\
    );
\int_y_reg[15]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \int_y_reg[11]_i_1_n_0\,
      CO(3) => \int_y_reg[15]_i_1_n_0\,
      CO(2) => \int_y_reg[15]_i_1_n_1\,
      CO(1) => \int_y_reg[15]_i_1_n_2\,
      CO(0) => \int_y_reg[15]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \int_y_reg[31]_0\(15 downto 12),
      O(3 downto 0) => y(15 downto 12),
      S(3) => \int_y[15]_i_2_n_0\,
      S(2) => \int_y[15]_i_3_n_0\,
      S(1) => \int_y[15]_i_4_n_0\,
      S(0) => \int_y[15]_i_5_n_0\
    );
\int_y_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => Q(2),
      D => y(16),
      Q => int_y(16),
      R => \^ap_rst_n_inv\
    );
\int_y_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => Q(2),
      D => y(17),
      Q => int_y(17),
      R => \^ap_rst_n_inv\
    );
\int_y_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => Q(2),
      D => y(18),
      Q => int_y(18),
      R => \^ap_rst_n_inv\
    );
\int_y_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => Q(2),
      D => y(19),
      Q => int_y(19),
      R => \^ap_rst_n_inv\
    );
\int_y_reg[19]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \int_y_reg[15]_i_1_n_0\,
      CO(3) => \int_y_reg[19]_i_1_n_0\,
      CO(2) => \int_y_reg[19]_i_1_n_1\,
      CO(1) => \int_y_reg[19]_i_1_n_2\,
      CO(0) => \int_y_reg[19]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \int_y_reg[31]_0\(19 downto 16),
      O(3 downto 0) => y(19 downto 16),
      S(3) => \int_y[19]_i_2_n_0\,
      S(2) => \int_y[19]_i_3_n_0\,
      S(1) => \int_y[19]_i_4_n_0\,
      S(0) => \int_y[19]_i_5_n_0\
    );
\int_y_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => Q(2),
      D => y(1),
      Q => int_y(1),
      R => \^ap_rst_n_inv\
    );
\int_y_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => Q(2),
      D => y(20),
      Q => int_y(20),
      R => \^ap_rst_n_inv\
    );
\int_y_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => Q(2),
      D => y(21),
      Q => int_y(21),
      R => \^ap_rst_n_inv\
    );
\int_y_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => Q(2),
      D => y(22),
      Q => int_y(22),
      R => \^ap_rst_n_inv\
    );
\int_y_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => Q(2),
      D => y(23),
      Q => int_y(23),
      R => \^ap_rst_n_inv\
    );
\int_y_reg[23]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \int_y_reg[19]_i_1_n_0\,
      CO(3) => \int_y_reg[23]_i_1_n_0\,
      CO(2) => \int_y_reg[23]_i_1_n_1\,
      CO(1) => \int_y_reg[23]_i_1_n_2\,
      CO(0) => \int_y_reg[23]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \int_y_reg[31]_0\(23 downto 20),
      O(3 downto 0) => y(23 downto 20),
      S(3) => \int_y[23]_i_2_n_0\,
      S(2) => \int_y[23]_i_3_n_0\,
      S(1) => \int_y[23]_i_4_n_0\,
      S(0) => \int_y[23]_i_5_n_0\
    );
\int_y_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => Q(2),
      D => y(24),
      Q => int_y(24),
      R => \^ap_rst_n_inv\
    );
\int_y_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => Q(2),
      D => y(25),
      Q => int_y(25),
      R => \^ap_rst_n_inv\
    );
\int_y_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => Q(2),
      D => y(26),
      Q => int_y(26),
      R => \^ap_rst_n_inv\
    );
\int_y_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => Q(2),
      D => y(27),
      Q => int_y(27),
      R => \^ap_rst_n_inv\
    );
\int_y_reg[27]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \int_y_reg[23]_i_1_n_0\,
      CO(3) => \int_y_reg[27]_i_1_n_0\,
      CO(2) => \int_y_reg[27]_i_1_n_1\,
      CO(1) => \int_y_reg[27]_i_1_n_2\,
      CO(0) => \int_y_reg[27]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \int_y_reg[31]_0\(27 downto 24),
      O(3 downto 0) => y(27 downto 24),
      S(3) => \int_y[27]_i_2_n_0\,
      S(2) => \int_y[27]_i_3_n_0\,
      S(1) => \int_y[27]_i_4_n_0\,
      S(0) => \int_y[27]_i_5_n_0\
    );
\int_y_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => Q(2),
      D => y(28),
      Q => int_y(28),
      R => \^ap_rst_n_inv\
    );
\int_y_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => Q(2),
      D => y(29),
      Q => int_y(29),
      R => \^ap_rst_n_inv\
    );
\int_y_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => Q(2),
      D => y(2),
      Q => int_y(2),
      R => \^ap_rst_n_inv\
    );
\int_y_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => Q(2),
      D => y(30),
      Q => int_y(30),
      R => \^ap_rst_n_inv\
    );
\int_y_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => Q(2),
      D => y(31),
      Q => int_y(31),
      R => \^ap_rst_n_inv\
    );
\int_y_reg[31]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \int_y_reg[27]_i_1_n_0\,
      CO(3) => \NLW_int_y_reg[31]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \int_y_reg[31]_i_1_n_1\,
      CO(1) => \int_y_reg[31]_i_1_n_2\,
      CO(0) => \int_y_reg[31]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 0) => \int_y_reg[31]_0\(30 downto 28),
      O(3 downto 0) => y(31 downto 28),
      S(3) => \int_y[31]_i_2_n_0\,
      S(2) => \int_y[31]_i_3_n_0\,
      S(1) => \int_y[31]_i_4_n_0\,
      S(0) => \int_y[31]_i_5_n_0\
    );
\int_y_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => Q(2),
      D => y(3),
      Q => int_y(3),
      R => \^ap_rst_n_inv\
    );
\int_y_reg[3]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \int_y_reg[3]_i_1_n_0\,
      CO(2) => \int_y_reg[3]_i_1_n_1\,
      CO(1) => \int_y_reg[3]_i_1_n_2\,
      CO(0) => \int_y_reg[3]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \int_y_reg[31]_0\(3 downto 0),
      O(3 downto 0) => y(3 downto 0),
      S(3) => \int_y[3]_i_2_n_0\,
      S(2) => \int_y[3]_i_3_n_0\,
      S(1) => \int_y[3]_i_4_n_0\,
      S(0) => \int_y[3]_i_5_n_0\
    );
\int_y_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => Q(2),
      D => y(4),
      Q => int_y(4),
      R => \^ap_rst_n_inv\
    );
\int_y_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => Q(2),
      D => y(5),
      Q => int_y(5),
      R => \^ap_rst_n_inv\
    );
\int_y_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => Q(2),
      D => y(6),
      Q => int_y(6),
      R => \^ap_rst_n_inv\
    );
\int_y_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => Q(2),
      D => y(7),
      Q => int_y(7),
      R => \^ap_rst_n_inv\
    );
\int_y_reg[7]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \int_y_reg[3]_i_1_n_0\,
      CO(3) => \int_y_reg[7]_i_1_n_0\,
      CO(2) => \int_y_reg[7]_i_1_n_1\,
      CO(1) => \int_y_reg[7]_i_1_n_2\,
      CO(0) => \int_y_reg[7]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \int_y_reg[31]_0\(7 downto 4),
      O(3 downto 0) => y(7 downto 4),
      S(3) => \int_y[7]_i_2_n_0\,
      S(2) => \int_y[7]_i_3_n_0\,
      S(1) => \int_y[7]_i_4_n_0\,
      S(0) => \int_y[7]_i_5_n_0\
    );
\int_y_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => Q(2),
      D => y(8),
      Q => int_y(8),
      R => \^ap_rst_n_inv\
    );
\int_y_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => Q(2),
      D => y(9),
      Q => int_y(9),
      R => \^ap_rst_n_inv\
    );
\rdata[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"10FFFFFF10000000"
    )
        port map (
      I0 => s_axi_HLS_LINEAR_PERIPH_BUS_ARADDR(0),
      I1 => s_axi_HLS_LINEAR_PERIPH_BUS_ARADDR(1),
      I2 => \rdata[0]_i_2_n_0\,
      I3 => \^fsm_onehot_rstate_reg[1]_0\,
      I4 => s_axi_HLS_LINEAR_PERIPH_BUS_ARVALID,
      I5 => \^s_axi_hls_linear_periph_bus_rdata\(0),
      O => \rdata[0]_i_1_n_0\
    );
\rdata[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFC0AFC0A0"
    )
        port map (
      I0 => \rdata[0]_i_3_n_0\,
      I1 => \rdata[0]_i_4_n_0\,
      I2 => s_axi_HLS_LINEAR_PERIPH_BUS_ARADDR(3),
      I3 => s_axi_HLS_LINEAR_PERIPH_BUS_ARADDR(2),
      I4 => \rdata[0]_i_5_n_0\,
      I5 => \rdata[0]_i_6_n_0\,
      O => \rdata[0]_i_2_n_0\
    );
\rdata[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CAFFCAF0CA0FCA00"
    )
        port map (
      I0 => int_y(0),
      I1 => int_done(0),
      I2 => s_axi_HLS_LINEAR_PERIPH_BUS_ARADDR(4),
      I3 => s_axi_HLS_LINEAR_PERIPH_BUS_ARADDR(5),
      I4 => \int_ier_reg_n_0_[0]\,
      I5 => m(0),
      O => \rdata[0]_i_3_n_0\
    );
\rdata[0]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0CC00AA"
    )
        port map (
      I0 => \int_isr_reg_n_0_[0]\,
      I1 => int_y_ap_vld,
      I2 => int_done_ap_vld,
      I3 => s_axi_HLS_LINEAR_PERIPH_BUS_ARADDR(4),
      I4 => s_axi_HLS_LINEAR_PERIPH_BUS_ARADDR(5),
      O => \rdata[0]_i_4_n_0\
    );
\rdata[0]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00CCF0AA"
    )
        port map (
      I0 => ap_start,
      I1 => x(0),
      I2 => \^int_c_reg[31]_0\(0),
      I3 => s_axi_HLS_LINEAR_PERIPH_BUS_ARADDR(5),
      I4 => s_axi_HLS_LINEAR_PERIPH_BUS_ARADDR(4),
      O => \rdata[0]_i_5_n_0\
    );
\rdata[0]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000008"
    )
        port map (
      I0 => s_axi_HLS_LINEAR_PERIPH_BUS_ARADDR(2),
      I1 => int_gie_reg_n_0,
      I2 => s_axi_HLS_LINEAR_PERIPH_BUS_ARADDR(5),
      I3 => s_axi_HLS_LINEAR_PERIPH_BUS_ARADDR(4),
      I4 => s_axi_HLS_LINEAR_PERIPH_BUS_ARADDR(3),
      O => \rdata[0]_i_6_n_0\
    );
\rdata[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF0C080400"
    )
        port map (
      I0 => s_axi_HLS_LINEAR_PERIPH_BUS_ARADDR(3),
      I1 => s_axi_HLS_LINEAR_PERIPH_BUS_ARADDR(5),
      I2 => s_axi_HLS_LINEAR_PERIPH_BUS_ARADDR(4),
      I3 => \^int_c_reg[31]_0\(10),
      I4 => int_y(10),
      I5 => \rdata[10]_i_2_n_0\,
      O => \rdata[10]_i_1_n_0\
    );
\rdata[10]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0A000C00"
    )
        port map (
      I0 => m(10),
      I1 => x(10),
      I2 => s_axi_HLS_LINEAR_PERIPH_BUS_ARADDR(5),
      I3 => s_axi_HLS_LINEAR_PERIPH_BUS_ARADDR(4),
      I4 => s_axi_HLS_LINEAR_PERIPH_BUS_ARADDR(3),
      O => \rdata[10]_i_2_n_0\
    );
\rdata[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF0C080400"
    )
        port map (
      I0 => s_axi_HLS_LINEAR_PERIPH_BUS_ARADDR(3),
      I1 => s_axi_HLS_LINEAR_PERIPH_BUS_ARADDR(5),
      I2 => s_axi_HLS_LINEAR_PERIPH_BUS_ARADDR(4),
      I3 => \^int_c_reg[31]_0\(11),
      I4 => int_y(11),
      I5 => \rdata[11]_i_2_n_0\,
      O => \rdata[11]_i_1_n_0\
    );
\rdata[11]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0A000C00"
    )
        port map (
      I0 => m(11),
      I1 => x(11),
      I2 => s_axi_HLS_LINEAR_PERIPH_BUS_ARADDR(5),
      I3 => s_axi_HLS_LINEAR_PERIPH_BUS_ARADDR(4),
      I4 => s_axi_HLS_LINEAR_PERIPH_BUS_ARADDR(3),
      O => \rdata[11]_i_2_n_0\
    );
\rdata[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF0C080400"
    )
        port map (
      I0 => s_axi_HLS_LINEAR_PERIPH_BUS_ARADDR(3),
      I1 => s_axi_HLS_LINEAR_PERIPH_BUS_ARADDR(5),
      I2 => s_axi_HLS_LINEAR_PERIPH_BUS_ARADDR(4),
      I3 => \^int_c_reg[31]_0\(12),
      I4 => int_y(12),
      I5 => \rdata[12]_i_2_n_0\,
      O => \rdata[12]_i_1_n_0\
    );
\rdata[12]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0A000C00"
    )
        port map (
      I0 => m(12),
      I1 => x(12),
      I2 => s_axi_HLS_LINEAR_PERIPH_BUS_ARADDR(5),
      I3 => s_axi_HLS_LINEAR_PERIPH_BUS_ARADDR(4),
      I4 => s_axi_HLS_LINEAR_PERIPH_BUS_ARADDR(3),
      O => \rdata[12]_i_2_n_0\
    );
\rdata[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF0C080400"
    )
        port map (
      I0 => s_axi_HLS_LINEAR_PERIPH_BUS_ARADDR(3),
      I1 => s_axi_HLS_LINEAR_PERIPH_BUS_ARADDR(5),
      I2 => s_axi_HLS_LINEAR_PERIPH_BUS_ARADDR(4),
      I3 => \^int_c_reg[31]_0\(13),
      I4 => int_y(13),
      I5 => \rdata[13]_i_2_n_0\,
      O => \rdata[13]_i_1_n_0\
    );
\rdata[13]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0A000C00"
    )
        port map (
      I0 => m(13),
      I1 => x(13),
      I2 => s_axi_HLS_LINEAR_PERIPH_BUS_ARADDR(5),
      I3 => s_axi_HLS_LINEAR_PERIPH_BUS_ARADDR(4),
      I4 => s_axi_HLS_LINEAR_PERIPH_BUS_ARADDR(3),
      O => \rdata[13]_i_2_n_0\
    );
\rdata[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF0C080400"
    )
        port map (
      I0 => s_axi_HLS_LINEAR_PERIPH_BUS_ARADDR(3),
      I1 => s_axi_HLS_LINEAR_PERIPH_BUS_ARADDR(5),
      I2 => s_axi_HLS_LINEAR_PERIPH_BUS_ARADDR(4),
      I3 => \^int_c_reg[31]_0\(14),
      I4 => int_y(14),
      I5 => \rdata[14]_i_2_n_0\,
      O => \rdata[14]_i_1_n_0\
    );
\rdata[14]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0A000C00"
    )
        port map (
      I0 => m(14),
      I1 => x(14),
      I2 => s_axi_HLS_LINEAR_PERIPH_BUS_ARADDR(5),
      I3 => s_axi_HLS_LINEAR_PERIPH_BUS_ARADDR(4),
      I4 => s_axi_HLS_LINEAR_PERIPH_BUS_ARADDR(3),
      O => \rdata[14]_i_2_n_0\
    );
\rdata[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88888880"
    )
        port map (
      I0 => s_axi_HLS_LINEAR_PERIPH_BUS_ARVALID,
      I1 => \^fsm_onehot_rstate_reg[1]_0\,
      I2 => s_axi_HLS_LINEAR_PERIPH_BUS_ARADDR(0),
      I3 => s_axi_HLS_LINEAR_PERIPH_BUS_ARADDR(1),
      I4 => s_axi_HLS_LINEAR_PERIPH_BUS_ARADDR(2),
      O => \rdata[15]_i_1_n_0\
    );
\rdata[15]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF0C080400"
    )
        port map (
      I0 => s_axi_HLS_LINEAR_PERIPH_BUS_ARADDR(3),
      I1 => s_axi_HLS_LINEAR_PERIPH_BUS_ARADDR(5),
      I2 => s_axi_HLS_LINEAR_PERIPH_BUS_ARADDR(4),
      I3 => \^int_c_reg[31]_0\(15),
      I4 => int_y(15),
      I5 => \rdata[15]_i_3_n_0\,
      O => \rdata[15]_i_2_n_0\
    );
\rdata[15]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0A000C00"
    )
        port map (
      I0 => m(15),
      I1 => x(15),
      I2 => s_axi_HLS_LINEAR_PERIPH_BUS_ARADDR(5),
      I3 => s_axi_HLS_LINEAR_PERIPH_BUS_ARADDR(4),
      I4 => s_axi_HLS_LINEAR_PERIPH_BUS_ARADDR(3),
      O => \rdata[15]_i_3_n_0\
    );
\rdata[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => x(16),
      I1 => m(16),
      I2 => s_axi_HLS_LINEAR_PERIPH_BUS_ARADDR(4),
      I3 => s_axi_HLS_LINEAR_PERIPH_BUS_ARADDR(3),
      I4 => \^int_c_reg[31]_0\(16),
      I5 => int_y(16),
      O => \rdata[16]_i_1_n_0\
    );
\rdata[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => x(17),
      I1 => m(17),
      I2 => s_axi_HLS_LINEAR_PERIPH_BUS_ARADDR(4),
      I3 => s_axi_HLS_LINEAR_PERIPH_BUS_ARADDR(3),
      I4 => \^int_c_reg[31]_0\(17),
      I5 => int_y(17),
      O => \rdata[17]_i_1_n_0\
    );
\rdata[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => x(18),
      I1 => m(18),
      I2 => s_axi_HLS_LINEAR_PERIPH_BUS_ARADDR(4),
      I3 => s_axi_HLS_LINEAR_PERIPH_BUS_ARADDR(3),
      I4 => \^int_c_reg[31]_0\(18),
      I5 => int_y(18),
      O => \rdata[18]_i_1_n_0\
    );
\rdata[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => x(19),
      I1 => m(19),
      I2 => s_axi_HLS_LINEAR_PERIPH_BUS_ARADDR(4),
      I3 => s_axi_HLS_LINEAR_PERIPH_BUS_ARADDR(3),
      I4 => \^int_c_reg[31]_0\(19),
      I5 => int_y(19),
      O => \rdata[19]_i_1_n_0\
    );
\rdata[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"10FFFFFF10000000"
    )
        port map (
      I0 => s_axi_HLS_LINEAR_PERIPH_BUS_ARADDR(0),
      I1 => s_axi_HLS_LINEAR_PERIPH_BUS_ARADDR(1),
      I2 => \rdata[1]_i_2_n_0\,
      I3 => \^fsm_onehot_rstate_reg[1]_0\,
      I4 => s_axi_HLS_LINEAR_PERIPH_BUS_ARVALID,
      I5 => \^s_axi_hls_linear_periph_bus_rdata\(1),
      O => \rdata[1]_i_1_n_0\
    );
\rdata[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF3210"
    )
        port map (
      I0 => s_axi_HLS_LINEAR_PERIPH_BUS_ARADDR(3),
      I1 => s_axi_HLS_LINEAR_PERIPH_BUS_ARADDR(2),
      I2 => \rdata[1]_i_3_n_0\,
      I3 => \rdata[1]_i_4_n_0\,
      I4 => \rdata[1]_i_5_n_0\,
      O => \rdata[1]_i_2_n_0\
    );
\rdata[1]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00CCF0AA"
    )
        port map (
      I0 => int_task_ap_done,
      I1 => x(1),
      I2 => \^int_c_reg[31]_0\(1),
      I3 => s_axi_HLS_LINEAR_PERIPH_BUS_ARADDR(5),
      I4 => s_axi_HLS_LINEAR_PERIPH_BUS_ARADDR(4),
      O => \rdata[1]_i_3_n_0\
    );
\rdata[1]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00CCF0AA"
    )
        port map (
      I0 => \int_ier_reg_n_0_[1]\,
      I1 => m(1),
      I2 => int_y(1),
      I3 => s_axi_HLS_LINEAR_PERIPH_BUS_ARADDR(5),
      I4 => s_axi_HLS_LINEAR_PERIPH_BUS_ARADDR(4),
      O => \rdata[1]_i_4_n_0\
    );
\rdata[1]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00080000"
    )
        port map (
      I0 => s_axi_HLS_LINEAR_PERIPH_BUS_ARADDR(2),
      I1 => \int_isr_reg_n_0_[1]\,
      I2 => s_axi_HLS_LINEAR_PERIPH_BUS_ARADDR(5),
      I3 => s_axi_HLS_LINEAR_PERIPH_BUS_ARADDR(4),
      I4 => s_axi_HLS_LINEAR_PERIPH_BUS_ARADDR(3),
      O => \rdata[1]_i_5_n_0\
    );
\rdata[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => x(20),
      I1 => m(20),
      I2 => s_axi_HLS_LINEAR_PERIPH_BUS_ARADDR(4),
      I3 => s_axi_HLS_LINEAR_PERIPH_BUS_ARADDR(3),
      I4 => \^int_c_reg[31]_0\(20),
      I5 => int_y(20),
      O => \rdata[20]_i_1_n_0\
    );
\rdata[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => x(21),
      I1 => m(21),
      I2 => s_axi_HLS_LINEAR_PERIPH_BUS_ARADDR(4),
      I3 => s_axi_HLS_LINEAR_PERIPH_BUS_ARADDR(3),
      I4 => \^int_c_reg[31]_0\(21),
      I5 => int_y(21),
      O => \rdata[21]_i_1_n_0\
    );
\rdata[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => x(22),
      I1 => m(22),
      I2 => s_axi_HLS_LINEAR_PERIPH_BUS_ARADDR(4),
      I3 => s_axi_HLS_LINEAR_PERIPH_BUS_ARADDR(3),
      I4 => \^int_c_reg[31]_0\(22),
      I5 => int_y(22),
      O => \rdata[22]_i_1_n_0\
    );
\rdata[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => x(23),
      I1 => m(23),
      I2 => s_axi_HLS_LINEAR_PERIPH_BUS_ARADDR(4),
      I3 => s_axi_HLS_LINEAR_PERIPH_BUS_ARADDR(3),
      I4 => \^int_c_reg[31]_0\(23),
      I5 => int_y(23),
      O => \rdata[23]_i_1_n_0\
    );
\rdata[24]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => x(24),
      I1 => m(24),
      I2 => s_axi_HLS_LINEAR_PERIPH_BUS_ARADDR(4),
      I3 => s_axi_HLS_LINEAR_PERIPH_BUS_ARADDR(3),
      I4 => \^int_c_reg[31]_0\(24),
      I5 => int_y(24),
      O => \rdata[24]_i_1_n_0\
    );
\rdata[25]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => x(25),
      I1 => m(25),
      I2 => s_axi_HLS_LINEAR_PERIPH_BUS_ARADDR(4),
      I3 => s_axi_HLS_LINEAR_PERIPH_BUS_ARADDR(3),
      I4 => \^int_c_reg[31]_0\(25),
      I5 => int_y(25),
      O => \rdata[25]_i_1_n_0\
    );
\rdata[26]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => x(26),
      I1 => m(26),
      I2 => s_axi_HLS_LINEAR_PERIPH_BUS_ARADDR(4),
      I3 => s_axi_HLS_LINEAR_PERIPH_BUS_ARADDR(3),
      I4 => \^int_c_reg[31]_0\(26),
      I5 => int_y(26),
      O => \rdata[26]_i_1_n_0\
    );
\rdata[27]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => x(27),
      I1 => m(27),
      I2 => s_axi_HLS_LINEAR_PERIPH_BUS_ARADDR(4),
      I3 => s_axi_HLS_LINEAR_PERIPH_BUS_ARADDR(3),
      I4 => \^int_c_reg[31]_0\(27),
      I5 => int_y(27),
      O => \rdata[27]_i_1_n_0\
    );
\rdata[28]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => x(28),
      I1 => m(28),
      I2 => s_axi_HLS_LINEAR_PERIPH_BUS_ARADDR(4),
      I3 => s_axi_HLS_LINEAR_PERIPH_BUS_ARADDR(3),
      I4 => \^int_c_reg[31]_0\(28),
      I5 => int_y(28),
      O => \rdata[28]_i_1_n_0\
    );
\rdata[29]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => x(29),
      I1 => m(29),
      I2 => s_axi_HLS_LINEAR_PERIPH_BUS_ARADDR(4),
      I3 => s_axi_HLS_LINEAR_PERIPH_BUS_ARADDR(3),
      I4 => \^int_c_reg[31]_0\(29),
      I5 => int_y(29),
      O => \rdata[29]_i_1_n_0\
    );
\rdata[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAFAEEAAAAAAAAAA"
    )
        port map (
      I0 => \rdata[2]_i_2_n_0\,
      I1 => m(2),
      I2 => int_y(2),
      I3 => s_axi_HLS_LINEAR_PERIPH_BUS_ARADDR(4),
      I4 => s_axi_HLS_LINEAR_PERIPH_BUS_ARADDR(5),
      I5 => s_axi_HLS_LINEAR_PERIPH_BUS_ARADDR(3),
      O => \rdata[2]_i_1_n_0\
    );
\rdata[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000073516240"
    )
        port map (
      I0 => s_axi_HLS_LINEAR_PERIPH_BUS_ARADDR(4),
      I1 => s_axi_HLS_LINEAR_PERIPH_BUS_ARADDR(5),
      I2 => \^int_c_reg[31]_0\(2),
      I3 => x(2),
      I4 => p_7_in(2),
      I5 => s_axi_HLS_LINEAR_PERIPH_BUS_ARADDR(3),
      O => \rdata[2]_i_2_n_0\
    );
\rdata[30]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => x(30),
      I1 => m(30),
      I2 => s_axi_HLS_LINEAR_PERIPH_BUS_ARADDR(4),
      I3 => s_axi_HLS_LINEAR_PERIPH_BUS_ARADDR(3),
      I4 => \^int_c_reg[31]_0\(30),
      I5 => int_y(30),
      O => \rdata[30]_i_1_n_0\
    );
\rdata[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAA88A"
    )
        port map (
      I0 => ar_hs,
      I1 => s_axi_HLS_LINEAR_PERIPH_BUS_ARADDR(1),
      I2 => s_axi_HLS_LINEAR_PERIPH_BUS_ARADDR(4),
      I3 => s_axi_HLS_LINEAR_PERIPH_BUS_ARADDR(5),
      I4 => s_axi_HLS_LINEAR_PERIPH_BUS_ARADDR(0),
      I5 => s_axi_HLS_LINEAR_PERIPH_BUS_ARADDR(2),
      O => \rdata[31]_i_1_n_0\
    );
\rdata[31]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^fsm_onehot_rstate_reg[1]_0\,
      I1 => s_axi_HLS_LINEAR_PERIPH_BUS_ARVALID,
      O => ar_hs
    );
\rdata[31]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => x(31),
      I1 => m(31),
      I2 => s_axi_HLS_LINEAR_PERIPH_BUS_ARADDR(4),
      I3 => s_axi_HLS_LINEAR_PERIPH_BUS_ARADDR(3),
      I4 => \^int_c_reg[31]_0\(31),
      I5 => int_y(31),
      O => \rdata[31]_i_3_n_0\
    );
\rdata[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAFAEEAAAAAAAAAA"
    )
        port map (
      I0 => \rdata[3]_i_2_n_0\,
      I1 => m(3),
      I2 => int_y(3),
      I3 => s_axi_HLS_LINEAR_PERIPH_BUS_ARADDR(4),
      I4 => s_axi_HLS_LINEAR_PERIPH_BUS_ARADDR(5),
      I5 => s_axi_HLS_LINEAR_PERIPH_BUS_ARADDR(3),
      O => \rdata[3]_i_1_n_0\
    );
\rdata[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000073516240"
    )
        port map (
      I0 => s_axi_HLS_LINEAR_PERIPH_BUS_ARADDR(4),
      I1 => s_axi_HLS_LINEAR_PERIPH_BUS_ARADDR(5),
      I2 => \^int_c_reg[31]_0\(3),
      I3 => x(3),
      I4 => int_ap_ready,
      I5 => s_axi_HLS_LINEAR_PERIPH_BUS_ARADDR(3),
      O => \rdata[3]_i_2_n_0\
    );
\rdata[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF0C080400"
    )
        port map (
      I0 => s_axi_HLS_LINEAR_PERIPH_BUS_ARADDR(3),
      I1 => s_axi_HLS_LINEAR_PERIPH_BUS_ARADDR(5),
      I2 => s_axi_HLS_LINEAR_PERIPH_BUS_ARADDR(4),
      I3 => \^int_c_reg[31]_0\(4),
      I4 => int_y(4),
      I5 => \rdata[4]_i_2_n_0\,
      O => \rdata[4]_i_1_n_0\
    );
\rdata[4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0A000C00"
    )
        port map (
      I0 => m(4),
      I1 => x(4),
      I2 => s_axi_HLS_LINEAR_PERIPH_BUS_ARADDR(5),
      I3 => s_axi_HLS_LINEAR_PERIPH_BUS_ARADDR(4),
      I4 => s_axi_HLS_LINEAR_PERIPH_BUS_ARADDR(3),
      O => \rdata[4]_i_2_n_0\
    );
\rdata[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF0C080400"
    )
        port map (
      I0 => s_axi_HLS_LINEAR_PERIPH_BUS_ARADDR(3),
      I1 => s_axi_HLS_LINEAR_PERIPH_BUS_ARADDR(5),
      I2 => s_axi_HLS_LINEAR_PERIPH_BUS_ARADDR(4),
      I3 => \^int_c_reg[31]_0\(5),
      I4 => int_y(5),
      I5 => \rdata[5]_i_2_n_0\,
      O => \rdata[5]_i_1_n_0\
    );
\rdata[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0A000C00"
    )
        port map (
      I0 => m(5),
      I1 => x(5),
      I2 => s_axi_HLS_LINEAR_PERIPH_BUS_ARADDR(5),
      I3 => s_axi_HLS_LINEAR_PERIPH_BUS_ARADDR(4),
      I4 => s_axi_HLS_LINEAR_PERIPH_BUS_ARADDR(3),
      O => \rdata[5]_i_2_n_0\
    );
\rdata[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF0C080400"
    )
        port map (
      I0 => s_axi_HLS_LINEAR_PERIPH_BUS_ARADDR(3),
      I1 => s_axi_HLS_LINEAR_PERIPH_BUS_ARADDR(5),
      I2 => s_axi_HLS_LINEAR_PERIPH_BUS_ARADDR(4),
      I3 => \^int_c_reg[31]_0\(6),
      I4 => int_y(6),
      I5 => \rdata[6]_i_2_n_0\,
      O => \rdata[6]_i_1_n_0\
    );
\rdata[6]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0A000C00"
    )
        port map (
      I0 => m(6),
      I1 => x(6),
      I2 => s_axi_HLS_LINEAR_PERIPH_BUS_ARADDR(5),
      I3 => s_axi_HLS_LINEAR_PERIPH_BUS_ARADDR(4),
      I4 => s_axi_HLS_LINEAR_PERIPH_BUS_ARADDR(3),
      O => \rdata[6]_i_2_n_0\
    );
\rdata[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAFAEEAAAAAAAAAA"
    )
        port map (
      I0 => \rdata[7]_i_2_n_0\,
      I1 => m(7),
      I2 => int_y(7),
      I3 => s_axi_HLS_LINEAR_PERIPH_BUS_ARADDR(4),
      I4 => s_axi_HLS_LINEAR_PERIPH_BUS_ARADDR(5),
      I5 => s_axi_HLS_LINEAR_PERIPH_BUS_ARADDR(3),
      O => \rdata[7]_i_1_n_0\
    );
\rdata[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000073516240"
    )
        port map (
      I0 => s_axi_HLS_LINEAR_PERIPH_BUS_ARADDR(4),
      I1 => s_axi_HLS_LINEAR_PERIPH_BUS_ARADDR(5),
      I2 => \^int_c_reg[31]_0\(7),
      I3 => x(7),
      I4 => p_7_in(7),
      I5 => s_axi_HLS_LINEAR_PERIPH_BUS_ARADDR(3),
      O => \rdata[7]_i_2_n_0\
    );
\rdata[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF0C080400"
    )
        port map (
      I0 => s_axi_HLS_LINEAR_PERIPH_BUS_ARADDR(3),
      I1 => s_axi_HLS_LINEAR_PERIPH_BUS_ARADDR(5),
      I2 => s_axi_HLS_LINEAR_PERIPH_BUS_ARADDR(4),
      I3 => \^int_c_reg[31]_0\(8),
      I4 => int_y(8),
      I5 => \rdata[8]_i_2_n_0\,
      O => \rdata[8]_i_1_n_0\
    );
\rdata[8]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0A000C00"
    )
        port map (
      I0 => m(8),
      I1 => x(8),
      I2 => s_axi_HLS_LINEAR_PERIPH_BUS_ARADDR(5),
      I3 => s_axi_HLS_LINEAR_PERIPH_BUS_ARADDR(4),
      I4 => s_axi_HLS_LINEAR_PERIPH_BUS_ARADDR(3),
      O => \rdata[8]_i_2_n_0\
    );
\rdata[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAFAEEAAAAAAAAAA"
    )
        port map (
      I0 => \rdata[9]_i_2_n_0\,
      I1 => m(9),
      I2 => int_y(9),
      I3 => s_axi_HLS_LINEAR_PERIPH_BUS_ARADDR(4),
      I4 => s_axi_HLS_LINEAR_PERIPH_BUS_ARADDR(5),
      I5 => s_axi_HLS_LINEAR_PERIPH_BUS_ARADDR(3),
      O => \rdata[9]_i_1_n_0\
    );
\rdata[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000073516240"
    )
        port map (
      I0 => s_axi_HLS_LINEAR_PERIPH_BUS_ARADDR(4),
      I1 => s_axi_HLS_LINEAR_PERIPH_BUS_ARADDR(5),
      I2 => \^int_c_reg[31]_0\(9),
      I3 => x(9),
      I4 => \^interrupt\,
      I5 => s_axi_HLS_LINEAR_PERIPH_BUS_ARADDR(3),
      O => \rdata[9]_i_2_n_0\
    );
\rdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \rdata[0]_i_1_n_0\,
      Q => \^s_axi_hls_linear_periph_bus_rdata\(0),
      R => '0'
    );
\rdata_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => \rdata[10]_i_1_n_0\,
      Q => \^s_axi_hls_linear_periph_bus_rdata\(10),
      R => \rdata[15]_i_1_n_0\
    );
\rdata_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => \rdata[11]_i_1_n_0\,
      Q => \^s_axi_hls_linear_periph_bus_rdata\(11),
      R => \rdata[15]_i_1_n_0\
    );
\rdata_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => \rdata[12]_i_1_n_0\,
      Q => \^s_axi_hls_linear_periph_bus_rdata\(12),
      R => \rdata[15]_i_1_n_0\
    );
\rdata_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => \rdata[13]_i_1_n_0\,
      Q => \^s_axi_hls_linear_periph_bus_rdata\(13),
      R => \rdata[15]_i_1_n_0\
    );
\rdata_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => \rdata[14]_i_1_n_0\,
      Q => \^s_axi_hls_linear_periph_bus_rdata\(14),
      R => \rdata[15]_i_1_n_0\
    );
\rdata_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => \rdata[15]_i_2_n_0\,
      Q => \^s_axi_hls_linear_periph_bus_rdata\(15),
      R => \rdata[15]_i_1_n_0\
    );
\rdata_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => \rdata[16]_i_1_n_0\,
      Q => \^s_axi_hls_linear_periph_bus_rdata\(16),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => \rdata[17]_i_1_n_0\,
      Q => \^s_axi_hls_linear_periph_bus_rdata\(17),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => \rdata[18]_i_1_n_0\,
      Q => \^s_axi_hls_linear_periph_bus_rdata\(18),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => \rdata[19]_i_1_n_0\,
      Q => \^s_axi_hls_linear_periph_bus_rdata\(19),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \rdata[1]_i_1_n_0\,
      Q => \^s_axi_hls_linear_periph_bus_rdata\(1),
      R => '0'
    );
\rdata_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => \rdata[20]_i_1_n_0\,
      Q => \^s_axi_hls_linear_periph_bus_rdata\(20),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => \rdata[21]_i_1_n_0\,
      Q => \^s_axi_hls_linear_periph_bus_rdata\(21),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => \rdata[22]_i_1_n_0\,
      Q => \^s_axi_hls_linear_periph_bus_rdata\(22),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => \rdata[23]_i_1_n_0\,
      Q => \^s_axi_hls_linear_periph_bus_rdata\(23),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => \rdata[24]_i_1_n_0\,
      Q => \^s_axi_hls_linear_periph_bus_rdata\(24),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => \rdata[25]_i_1_n_0\,
      Q => \^s_axi_hls_linear_periph_bus_rdata\(25),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => \rdata[26]_i_1_n_0\,
      Q => \^s_axi_hls_linear_periph_bus_rdata\(26),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => \rdata[27]_i_1_n_0\,
      Q => \^s_axi_hls_linear_periph_bus_rdata\(27),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => \rdata[28]_i_1_n_0\,
      Q => \^s_axi_hls_linear_periph_bus_rdata\(28),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => \rdata[29]_i_1_n_0\,
      Q => \^s_axi_hls_linear_periph_bus_rdata\(29),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => \rdata[2]_i_1_n_0\,
      Q => \^s_axi_hls_linear_periph_bus_rdata\(2),
      R => \rdata[15]_i_1_n_0\
    );
\rdata_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => \rdata[30]_i_1_n_0\,
      Q => \^s_axi_hls_linear_periph_bus_rdata\(30),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => \rdata[31]_i_3_n_0\,
      Q => \^s_axi_hls_linear_periph_bus_rdata\(31),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => \rdata[3]_i_1_n_0\,
      Q => \^s_axi_hls_linear_periph_bus_rdata\(3),
      R => \rdata[15]_i_1_n_0\
    );
\rdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => \rdata[4]_i_1_n_0\,
      Q => \^s_axi_hls_linear_periph_bus_rdata\(4),
      R => \rdata[15]_i_1_n_0\
    );
\rdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => \rdata[5]_i_1_n_0\,
      Q => \^s_axi_hls_linear_periph_bus_rdata\(5),
      R => \rdata[15]_i_1_n_0\
    );
\rdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => \rdata[6]_i_1_n_0\,
      Q => \^s_axi_hls_linear_periph_bus_rdata\(6),
      R => \rdata[15]_i_1_n_0\
    );
\rdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => \rdata[7]_i_1_n_0\,
      Q => \^s_axi_hls_linear_periph_bus_rdata\(7),
      R => \rdata[15]_i_1_n_0\
    );
\rdata_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => \rdata[8]_i_1_n_0\,
      Q => \^s_axi_hls_linear_periph_bus_rdata\(8),
      R => \rdata[15]_i_1_n_0\
    );
\rdata_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => \rdata[9]_i_1_n_0\,
      Q => \^s_axi_hls_linear_periph_bus_rdata\(9),
      R => \rdata[15]_i_1_n_0\
    );
\waddr[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^fsm_onehot_wstate_reg[1]_0\,
      I1 => s_axi_HLS_LINEAR_PERIPH_BUS_AWVALID,
      O => waddr
    );
\waddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => waddr,
      D => s_axi_HLS_LINEAR_PERIPH_BUS_AWADDR(0),
      Q => \waddr_reg_n_0_[2]\,
      R => '0'
    );
\waddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => waddr,
      D => s_axi_HLS_LINEAR_PERIPH_BUS_AWADDR(1),
      Q => \waddr_reg_n_0_[3]\,
      R => '0'
    );
\waddr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => waddr,
      D => s_axi_HLS_LINEAR_PERIPH_BUS_AWADDR(2),
      Q => \waddr_reg_n_0_[4]\,
      R => '0'
    );
\waddr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => waddr,
      D => s_axi_HLS_LINEAR_PERIPH_BUS_AWADDR(3),
      Q => \waddr_reg_n_0_[5]\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_linear_model_mul_32s_32s_32_2_1 is
  port (
    D : out STD_LOGIC_VECTOR ( 31 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    tmp_product_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    ap_clk : in STD_LOGIC;
    ap_rst_n_inv : in STD_LOGIC;
    int_m0 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    int_x0 : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_linear_model_mul_32s_32s_32_2_1;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_linear_model_mul_32s_32s_32_2_1 is
  signal \buff0_reg[16]__0_n_0\ : STD_LOGIC;
  signal buff0_reg_n_100 : STD_LOGIC;
  signal buff0_reg_n_101 : STD_LOGIC;
  signal buff0_reg_n_102 : STD_LOGIC;
  signal buff0_reg_n_103 : STD_LOGIC;
  signal buff0_reg_n_104 : STD_LOGIC;
  signal buff0_reg_n_105 : STD_LOGIC;
  signal buff0_reg_n_58 : STD_LOGIC;
  signal buff0_reg_n_59 : STD_LOGIC;
  signal buff0_reg_n_60 : STD_LOGIC;
  signal buff0_reg_n_61 : STD_LOGIC;
  signal buff0_reg_n_62 : STD_LOGIC;
  signal buff0_reg_n_63 : STD_LOGIC;
  signal buff0_reg_n_64 : STD_LOGIC;
  signal buff0_reg_n_65 : STD_LOGIC;
  signal buff0_reg_n_66 : STD_LOGIC;
  signal buff0_reg_n_67 : STD_LOGIC;
  signal buff0_reg_n_68 : STD_LOGIC;
  signal buff0_reg_n_69 : STD_LOGIC;
  signal buff0_reg_n_70 : STD_LOGIC;
  signal buff0_reg_n_71 : STD_LOGIC;
  signal buff0_reg_n_72 : STD_LOGIC;
  signal buff0_reg_n_73 : STD_LOGIC;
  signal buff0_reg_n_74 : STD_LOGIC;
  signal buff0_reg_n_75 : STD_LOGIC;
  signal buff0_reg_n_76 : STD_LOGIC;
  signal buff0_reg_n_77 : STD_LOGIC;
  signal buff0_reg_n_78 : STD_LOGIC;
  signal buff0_reg_n_79 : STD_LOGIC;
  signal buff0_reg_n_80 : STD_LOGIC;
  signal buff0_reg_n_81 : STD_LOGIC;
  signal buff0_reg_n_82 : STD_LOGIC;
  signal buff0_reg_n_83 : STD_LOGIC;
  signal buff0_reg_n_84 : STD_LOGIC;
  signal buff0_reg_n_85 : STD_LOGIC;
  signal buff0_reg_n_86 : STD_LOGIC;
  signal buff0_reg_n_87 : STD_LOGIC;
  signal buff0_reg_n_88 : STD_LOGIC;
  signal buff0_reg_n_89 : STD_LOGIC;
  signal buff0_reg_n_90 : STD_LOGIC;
  signal buff0_reg_n_91 : STD_LOGIC;
  signal buff0_reg_n_92 : STD_LOGIC;
  signal buff0_reg_n_93 : STD_LOGIC;
  signal buff0_reg_n_94 : STD_LOGIC;
  signal buff0_reg_n_95 : STD_LOGIC;
  signal buff0_reg_n_96 : STD_LOGIC;
  signal buff0_reg_n_97 : STD_LOGIC;
  signal buff0_reg_n_98 : STD_LOGIC;
  signal buff0_reg_n_99 : STD_LOGIC;
  signal \mul_ln18_reg_109[19]_i_2_n_0\ : STD_LOGIC;
  signal \mul_ln18_reg_109[19]_i_3_n_0\ : STD_LOGIC;
  signal \mul_ln18_reg_109[19]_i_4_n_0\ : STD_LOGIC;
  signal \mul_ln18_reg_109[23]_i_2_n_0\ : STD_LOGIC;
  signal \mul_ln18_reg_109[23]_i_3_n_0\ : STD_LOGIC;
  signal \mul_ln18_reg_109[23]_i_4_n_0\ : STD_LOGIC;
  signal \mul_ln18_reg_109[23]_i_5_n_0\ : STD_LOGIC;
  signal \mul_ln18_reg_109[27]_i_2_n_0\ : STD_LOGIC;
  signal \mul_ln18_reg_109[27]_i_3_n_0\ : STD_LOGIC;
  signal \mul_ln18_reg_109[27]_i_4_n_0\ : STD_LOGIC;
  signal \mul_ln18_reg_109[27]_i_5_n_0\ : STD_LOGIC;
  signal \mul_ln18_reg_109[31]_i_2_n_0\ : STD_LOGIC;
  signal \mul_ln18_reg_109[31]_i_3_n_0\ : STD_LOGIC;
  signal \mul_ln18_reg_109[31]_i_4_n_0\ : STD_LOGIC;
  signal \mul_ln18_reg_109[31]_i_5_n_0\ : STD_LOGIC;
  signal \mul_ln18_reg_109_reg[19]_i_1_n_0\ : STD_LOGIC;
  signal \mul_ln18_reg_109_reg[19]_i_1_n_1\ : STD_LOGIC;
  signal \mul_ln18_reg_109_reg[19]_i_1_n_2\ : STD_LOGIC;
  signal \mul_ln18_reg_109_reg[19]_i_1_n_3\ : STD_LOGIC;
  signal \mul_ln18_reg_109_reg[23]_i_1_n_0\ : STD_LOGIC;
  signal \mul_ln18_reg_109_reg[23]_i_1_n_1\ : STD_LOGIC;
  signal \mul_ln18_reg_109_reg[23]_i_1_n_2\ : STD_LOGIC;
  signal \mul_ln18_reg_109_reg[23]_i_1_n_3\ : STD_LOGIC;
  signal \mul_ln18_reg_109_reg[27]_i_1_n_0\ : STD_LOGIC;
  signal \mul_ln18_reg_109_reg[27]_i_1_n_1\ : STD_LOGIC;
  signal \mul_ln18_reg_109_reg[27]_i_1_n_2\ : STD_LOGIC;
  signal \mul_ln18_reg_109_reg[27]_i_1_n_3\ : STD_LOGIC;
  signal \mul_ln18_reg_109_reg[31]_i_1_n_1\ : STD_LOGIC;
  signal \mul_ln18_reg_109_reg[31]_i_1_n_2\ : STD_LOGIC;
  signal \mul_ln18_reg_109_reg[31]_i_1_n_3\ : STD_LOGIC;
  signal \tmp_product__0_n_100\ : STD_LOGIC;
  signal \tmp_product__0_n_101\ : STD_LOGIC;
  signal \tmp_product__0_n_102\ : STD_LOGIC;
  signal \tmp_product__0_n_103\ : STD_LOGIC;
  signal \tmp_product__0_n_104\ : STD_LOGIC;
  signal \tmp_product__0_n_105\ : STD_LOGIC;
  signal \tmp_product__0_n_106\ : STD_LOGIC;
  signal \tmp_product__0_n_107\ : STD_LOGIC;
  signal \tmp_product__0_n_108\ : STD_LOGIC;
  signal \tmp_product__0_n_109\ : STD_LOGIC;
  signal \tmp_product__0_n_110\ : STD_LOGIC;
  signal \tmp_product__0_n_111\ : STD_LOGIC;
  signal \tmp_product__0_n_112\ : STD_LOGIC;
  signal \tmp_product__0_n_113\ : STD_LOGIC;
  signal \tmp_product__0_n_114\ : STD_LOGIC;
  signal \tmp_product__0_n_115\ : STD_LOGIC;
  signal \tmp_product__0_n_116\ : STD_LOGIC;
  signal \tmp_product__0_n_117\ : STD_LOGIC;
  signal \tmp_product__0_n_118\ : STD_LOGIC;
  signal \tmp_product__0_n_119\ : STD_LOGIC;
  signal \tmp_product__0_n_120\ : STD_LOGIC;
  signal \tmp_product__0_n_121\ : STD_LOGIC;
  signal \tmp_product__0_n_122\ : STD_LOGIC;
  signal \tmp_product__0_n_123\ : STD_LOGIC;
  signal \tmp_product__0_n_124\ : STD_LOGIC;
  signal \tmp_product__0_n_125\ : STD_LOGIC;
  signal \tmp_product__0_n_126\ : STD_LOGIC;
  signal \tmp_product__0_n_127\ : STD_LOGIC;
  signal \tmp_product__0_n_128\ : STD_LOGIC;
  signal \tmp_product__0_n_129\ : STD_LOGIC;
  signal \tmp_product__0_n_130\ : STD_LOGIC;
  signal \tmp_product__0_n_131\ : STD_LOGIC;
  signal \tmp_product__0_n_132\ : STD_LOGIC;
  signal \tmp_product__0_n_133\ : STD_LOGIC;
  signal \tmp_product__0_n_134\ : STD_LOGIC;
  signal \tmp_product__0_n_135\ : STD_LOGIC;
  signal \tmp_product__0_n_136\ : STD_LOGIC;
  signal \tmp_product__0_n_137\ : STD_LOGIC;
  signal \tmp_product__0_n_138\ : STD_LOGIC;
  signal \tmp_product__0_n_139\ : STD_LOGIC;
  signal \tmp_product__0_n_140\ : STD_LOGIC;
  signal \tmp_product__0_n_141\ : STD_LOGIC;
  signal \tmp_product__0_n_142\ : STD_LOGIC;
  signal \tmp_product__0_n_143\ : STD_LOGIC;
  signal \tmp_product__0_n_144\ : STD_LOGIC;
  signal \tmp_product__0_n_145\ : STD_LOGIC;
  signal \tmp_product__0_n_146\ : STD_LOGIC;
  signal \tmp_product__0_n_147\ : STD_LOGIC;
  signal \tmp_product__0_n_148\ : STD_LOGIC;
  signal \tmp_product__0_n_149\ : STD_LOGIC;
  signal \tmp_product__0_n_150\ : STD_LOGIC;
  signal \tmp_product__0_n_151\ : STD_LOGIC;
  signal \tmp_product__0_n_152\ : STD_LOGIC;
  signal \tmp_product__0_n_153\ : STD_LOGIC;
  signal \tmp_product__0_n_58\ : STD_LOGIC;
  signal \tmp_product__0_n_59\ : STD_LOGIC;
  signal \tmp_product__0_n_60\ : STD_LOGIC;
  signal \tmp_product__0_n_61\ : STD_LOGIC;
  signal \tmp_product__0_n_62\ : STD_LOGIC;
  signal \tmp_product__0_n_63\ : STD_LOGIC;
  signal \tmp_product__0_n_64\ : STD_LOGIC;
  signal \tmp_product__0_n_65\ : STD_LOGIC;
  signal \tmp_product__0_n_66\ : STD_LOGIC;
  signal \tmp_product__0_n_67\ : STD_LOGIC;
  signal \tmp_product__0_n_68\ : STD_LOGIC;
  signal \tmp_product__0_n_69\ : STD_LOGIC;
  signal \tmp_product__0_n_70\ : STD_LOGIC;
  signal \tmp_product__0_n_71\ : STD_LOGIC;
  signal \tmp_product__0_n_72\ : STD_LOGIC;
  signal \tmp_product__0_n_73\ : STD_LOGIC;
  signal \tmp_product__0_n_74\ : STD_LOGIC;
  signal \tmp_product__0_n_75\ : STD_LOGIC;
  signal \tmp_product__0_n_76\ : STD_LOGIC;
  signal \tmp_product__0_n_77\ : STD_LOGIC;
  signal \tmp_product__0_n_78\ : STD_LOGIC;
  signal \tmp_product__0_n_79\ : STD_LOGIC;
  signal \tmp_product__0_n_80\ : STD_LOGIC;
  signal \tmp_product__0_n_81\ : STD_LOGIC;
  signal \tmp_product__0_n_82\ : STD_LOGIC;
  signal \tmp_product__0_n_83\ : STD_LOGIC;
  signal \tmp_product__0_n_84\ : STD_LOGIC;
  signal \tmp_product__0_n_85\ : STD_LOGIC;
  signal \tmp_product__0_n_86\ : STD_LOGIC;
  signal \tmp_product__0_n_87\ : STD_LOGIC;
  signal \tmp_product__0_n_88\ : STD_LOGIC;
  signal \tmp_product__0_n_89\ : STD_LOGIC;
  signal \tmp_product__0_n_90\ : STD_LOGIC;
  signal \tmp_product__0_n_91\ : STD_LOGIC;
  signal \tmp_product__0_n_92\ : STD_LOGIC;
  signal \tmp_product__0_n_93\ : STD_LOGIC;
  signal \tmp_product__0_n_94\ : STD_LOGIC;
  signal \tmp_product__0_n_95\ : STD_LOGIC;
  signal \tmp_product__0_n_96\ : STD_LOGIC;
  signal \tmp_product__0_n_97\ : STD_LOGIC;
  signal \tmp_product__0_n_98\ : STD_LOGIC;
  signal \tmp_product__0_n_99\ : STD_LOGIC;
  signal tmp_product_n_100 : STD_LOGIC;
  signal tmp_product_n_101 : STD_LOGIC;
  signal tmp_product_n_102 : STD_LOGIC;
  signal tmp_product_n_103 : STD_LOGIC;
  signal tmp_product_n_104 : STD_LOGIC;
  signal tmp_product_n_105 : STD_LOGIC;
  signal tmp_product_n_106 : STD_LOGIC;
  signal tmp_product_n_107 : STD_LOGIC;
  signal tmp_product_n_108 : STD_LOGIC;
  signal tmp_product_n_109 : STD_LOGIC;
  signal tmp_product_n_110 : STD_LOGIC;
  signal tmp_product_n_111 : STD_LOGIC;
  signal tmp_product_n_112 : STD_LOGIC;
  signal tmp_product_n_113 : STD_LOGIC;
  signal tmp_product_n_114 : STD_LOGIC;
  signal tmp_product_n_115 : STD_LOGIC;
  signal tmp_product_n_116 : STD_LOGIC;
  signal tmp_product_n_117 : STD_LOGIC;
  signal tmp_product_n_118 : STD_LOGIC;
  signal tmp_product_n_119 : STD_LOGIC;
  signal tmp_product_n_120 : STD_LOGIC;
  signal tmp_product_n_121 : STD_LOGIC;
  signal tmp_product_n_122 : STD_LOGIC;
  signal tmp_product_n_123 : STD_LOGIC;
  signal tmp_product_n_124 : STD_LOGIC;
  signal tmp_product_n_125 : STD_LOGIC;
  signal tmp_product_n_126 : STD_LOGIC;
  signal tmp_product_n_127 : STD_LOGIC;
  signal tmp_product_n_128 : STD_LOGIC;
  signal tmp_product_n_129 : STD_LOGIC;
  signal tmp_product_n_130 : STD_LOGIC;
  signal tmp_product_n_131 : STD_LOGIC;
  signal tmp_product_n_132 : STD_LOGIC;
  signal tmp_product_n_133 : STD_LOGIC;
  signal tmp_product_n_134 : STD_LOGIC;
  signal tmp_product_n_135 : STD_LOGIC;
  signal tmp_product_n_136 : STD_LOGIC;
  signal tmp_product_n_137 : STD_LOGIC;
  signal tmp_product_n_138 : STD_LOGIC;
  signal tmp_product_n_139 : STD_LOGIC;
  signal tmp_product_n_140 : STD_LOGIC;
  signal tmp_product_n_141 : STD_LOGIC;
  signal tmp_product_n_142 : STD_LOGIC;
  signal tmp_product_n_143 : STD_LOGIC;
  signal tmp_product_n_144 : STD_LOGIC;
  signal tmp_product_n_145 : STD_LOGIC;
  signal tmp_product_n_146 : STD_LOGIC;
  signal tmp_product_n_147 : STD_LOGIC;
  signal tmp_product_n_148 : STD_LOGIC;
  signal tmp_product_n_149 : STD_LOGIC;
  signal tmp_product_n_150 : STD_LOGIC;
  signal tmp_product_n_151 : STD_LOGIC;
  signal tmp_product_n_152 : STD_LOGIC;
  signal tmp_product_n_153 : STD_LOGIC;
  signal tmp_product_n_58 : STD_LOGIC;
  signal tmp_product_n_59 : STD_LOGIC;
  signal tmp_product_n_60 : STD_LOGIC;
  signal tmp_product_n_61 : STD_LOGIC;
  signal tmp_product_n_62 : STD_LOGIC;
  signal tmp_product_n_63 : STD_LOGIC;
  signal tmp_product_n_64 : STD_LOGIC;
  signal tmp_product_n_65 : STD_LOGIC;
  signal tmp_product_n_66 : STD_LOGIC;
  signal tmp_product_n_67 : STD_LOGIC;
  signal tmp_product_n_68 : STD_LOGIC;
  signal tmp_product_n_69 : STD_LOGIC;
  signal tmp_product_n_70 : STD_LOGIC;
  signal tmp_product_n_71 : STD_LOGIC;
  signal tmp_product_n_72 : STD_LOGIC;
  signal tmp_product_n_73 : STD_LOGIC;
  signal tmp_product_n_74 : STD_LOGIC;
  signal tmp_product_n_75 : STD_LOGIC;
  signal tmp_product_n_76 : STD_LOGIC;
  signal tmp_product_n_77 : STD_LOGIC;
  signal tmp_product_n_78 : STD_LOGIC;
  signal tmp_product_n_79 : STD_LOGIC;
  signal tmp_product_n_80 : STD_LOGIC;
  signal tmp_product_n_81 : STD_LOGIC;
  signal tmp_product_n_82 : STD_LOGIC;
  signal tmp_product_n_83 : STD_LOGIC;
  signal tmp_product_n_84 : STD_LOGIC;
  signal tmp_product_n_85 : STD_LOGIC;
  signal tmp_product_n_86 : STD_LOGIC;
  signal tmp_product_n_87 : STD_LOGIC;
  signal tmp_product_n_88 : STD_LOGIC;
  signal tmp_product_n_89 : STD_LOGIC;
  signal tmp_product_n_90 : STD_LOGIC;
  signal tmp_product_n_91 : STD_LOGIC;
  signal tmp_product_n_92 : STD_LOGIC;
  signal tmp_product_n_93 : STD_LOGIC;
  signal tmp_product_n_94 : STD_LOGIC;
  signal tmp_product_n_95 : STD_LOGIC;
  signal tmp_product_n_96 : STD_LOGIC;
  signal tmp_product_n_97 : STD_LOGIC;
  signal tmp_product_n_98 : STD_LOGIC;
  signal tmp_product_n_99 : STD_LOGIC;
  signal NLW_buff0_reg_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_buff0_reg_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_buff0_reg_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_buff0_reg_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_buff0_reg_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_buff0_reg_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_buff0_reg_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_buff0_reg_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_buff0_reg_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_buff0_reg_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal \NLW_mul_ln18_reg_109_reg[31]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_tmp_product_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_tmp_product_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_tmp_product_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_tmp_product_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_tmp_product_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_tmp_product_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_tmp_product_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_tmp_product_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_tmp_product_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_tmp_product__0_CARRYCASCOUT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_tmp_product__0_MULTSIGNOUT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_tmp_product__0_OVERFLOW_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_tmp_product__0_PATTERNBDETECT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_tmp_product__0_PATTERNDETECT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_tmp_product__0_UNDERFLOW_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_tmp_product__0_ACOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal \NLW_tmp_product__0_BCOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal \NLW_tmp_product__0_CARRYOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of buff0_reg : label is "{SYNTH-10 {cell *THIS*} {string 18x15 4}}";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \mul_ln18_reg_109_reg[19]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \mul_ln18_reg_109_reg[23]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \mul_ln18_reg_109_reg[27]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \mul_ln18_reg_109_reg[31]_i_1\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of tmp_product : label is "{SYNTH-10 {cell *THIS*} {string 15x18 4}}";
  attribute METHODOLOGY_DRC_VIOS of \tmp_product__0\ : label is "{SYNTH-10 {cell *THIS*} {string 18x18 4}}";
begin
buff0_reg: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 1,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 1,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 1,
      BREG => 1,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 1,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 0,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREG => 1,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29 downto 17) => B"0000000000000",
      A(16 downto 0) => int_m0(16 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_buff0_reg_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17) => int_x0(31),
      B(16) => int_x0(31),
      B(15) => int_x0(31),
      B(14 downto 0) => int_x0(31 downto 17),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_buff0_reg_BCOUT_UNCONNECTED(17 downto 0),
      C(47 downto 0) => B"111111111111111111111111111111111111111111111111",
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_buff0_reg_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_buff0_reg_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => '0',
      CEA2 => tmp_product_0(0),
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => E(0),
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '0',
      CEP => '1',
      CLK => ap_clk,
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_buff0_reg_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 0) => B"1010101",
      OVERFLOW => NLW_buff0_reg_OVERFLOW_UNCONNECTED,
      P(47) => buff0_reg_n_58,
      P(46) => buff0_reg_n_59,
      P(45) => buff0_reg_n_60,
      P(44) => buff0_reg_n_61,
      P(43) => buff0_reg_n_62,
      P(42) => buff0_reg_n_63,
      P(41) => buff0_reg_n_64,
      P(40) => buff0_reg_n_65,
      P(39) => buff0_reg_n_66,
      P(38) => buff0_reg_n_67,
      P(37) => buff0_reg_n_68,
      P(36) => buff0_reg_n_69,
      P(35) => buff0_reg_n_70,
      P(34) => buff0_reg_n_71,
      P(33) => buff0_reg_n_72,
      P(32) => buff0_reg_n_73,
      P(31) => buff0_reg_n_74,
      P(30) => buff0_reg_n_75,
      P(29) => buff0_reg_n_76,
      P(28) => buff0_reg_n_77,
      P(27) => buff0_reg_n_78,
      P(26) => buff0_reg_n_79,
      P(25) => buff0_reg_n_80,
      P(24) => buff0_reg_n_81,
      P(23) => buff0_reg_n_82,
      P(22) => buff0_reg_n_83,
      P(21) => buff0_reg_n_84,
      P(20) => buff0_reg_n_85,
      P(19) => buff0_reg_n_86,
      P(18) => buff0_reg_n_87,
      P(17) => buff0_reg_n_88,
      P(16) => buff0_reg_n_89,
      P(15) => buff0_reg_n_90,
      P(14) => buff0_reg_n_91,
      P(13) => buff0_reg_n_92,
      P(12) => buff0_reg_n_93,
      P(11) => buff0_reg_n_94,
      P(10) => buff0_reg_n_95,
      P(9) => buff0_reg_n_96,
      P(8) => buff0_reg_n_97,
      P(7) => buff0_reg_n_98,
      P(6) => buff0_reg_n_99,
      P(5) => buff0_reg_n_100,
      P(4) => buff0_reg_n_101,
      P(3) => buff0_reg_n_102,
      P(2) => buff0_reg_n_103,
      P(1) => buff0_reg_n_104,
      P(0) => buff0_reg_n_105,
      PATTERNBDETECT => NLW_buff0_reg_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_buff0_reg_PATTERNDETECT_UNCONNECTED,
      PCIN(47) => \tmp_product__0_n_106\,
      PCIN(46) => \tmp_product__0_n_107\,
      PCIN(45) => \tmp_product__0_n_108\,
      PCIN(44) => \tmp_product__0_n_109\,
      PCIN(43) => \tmp_product__0_n_110\,
      PCIN(42) => \tmp_product__0_n_111\,
      PCIN(41) => \tmp_product__0_n_112\,
      PCIN(40) => \tmp_product__0_n_113\,
      PCIN(39) => \tmp_product__0_n_114\,
      PCIN(38) => \tmp_product__0_n_115\,
      PCIN(37) => \tmp_product__0_n_116\,
      PCIN(36) => \tmp_product__0_n_117\,
      PCIN(35) => \tmp_product__0_n_118\,
      PCIN(34) => \tmp_product__0_n_119\,
      PCIN(33) => \tmp_product__0_n_120\,
      PCIN(32) => \tmp_product__0_n_121\,
      PCIN(31) => \tmp_product__0_n_122\,
      PCIN(30) => \tmp_product__0_n_123\,
      PCIN(29) => \tmp_product__0_n_124\,
      PCIN(28) => \tmp_product__0_n_125\,
      PCIN(27) => \tmp_product__0_n_126\,
      PCIN(26) => \tmp_product__0_n_127\,
      PCIN(25) => \tmp_product__0_n_128\,
      PCIN(24) => \tmp_product__0_n_129\,
      PCIN(23) => \tmp_product__0_n_130\,
      PCIN(22) => \tmp_product__0_n_131\,
      PCIN(21) => \tmp_product__0_n_132\,
      PCIN(20) => \tmp_product__0_n_133\,
      PCIN(19) => \tmp_product__0_n_134\,
      PCIN(18) => \tmp_product__0_n_135\,
      PCIN(17) => \tmp_product__0_n_136\,
      PCIN(16) => \tmp_product__0_n_137\,
      PCIN(15) => \tmp_product__0_n_138\,
      PCIN(14) => \tmp_product__0_n_139\,
      PCIN(13) => \tmp_product__0_n_140\,
      PCIN(12) => \tmp_product__0_n_141\,
      PCIN(11) => \tmp_product__0_n_142\,
      PCIN(10) => \tmp_product__0_n_143\,
      PCIN(9) => \tmp_product__0_n_144\,
      PCIN(8) => \tmp_product__0_n_145\,
      PCIN(7) => \tmp_product__0_n_146\,
      PCIN(6) => \tmp_product__0_n_147\,
      PCIN(5) => \tmp_product__0_n_148\,
      PCIN(4) => \tmp_product__0_n_149\,
      PCIN(3) => \tmp_product__0_n_150\,
      PCIN(2) => \tmp_product__0_n_151\,
      PCIN(1) => \tmp_product__0_n_152\,
      PCIN(0) => \tmp_product__0_n_153\,
      PCOUT(47 downto 0) => NLW_buff0_reg_PCOUT_UNCONNECTED(47 downto 0),
      RSTA => ap_rst_n_inv,
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => ap_rst_n_inv,
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => '0',
      UNDERFLOW => NLW_buff0_reg_UNDERFLOW_UNCONNECTED
    );
\buff0_reg[0]__0\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \tmp_product__0_n_105\,
      Q => D(0),
      R => '0'
    );
\buff0_reg[10]__0\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \tmp_product__0_n_95\,
      Q => D(10),
      R => '0'
    );
\buff0_reg[11]__0\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \tmp_product__0_n_94\,
      Q => D(11),
      R => '0'
    );
\buff0_reg[12]__0\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \tmp_product__0_n_93\,
      Q => D(12),
      R => '0'
    );
\buff0_reg[13]__0\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \tmp_product__0_n_92\,
      Q => D(13),
      R => '0'
    );
\buff0_reg[14]__0\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \tmp_product__0_n_91\,
      Q => D(14),
      R => '0'
    );
\buff0_reg[15]__0\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \tmp_product__0_n_90\,
      Q => D(15),
      R => '0'
    );
\buff0_reg[16]__0\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \tmp_product__0_n_89\,
      Q => \buff0_reg[16]__0_n_0\,
      R => '0'
    );
\buff0_reg[1]__0\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \tmp_product__0_n_104\,
      Q => D(1),
      R => '0'
    );
\buff0_reg[2]__0\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \tmp_product__0_n_103\,
      Q => D(2),
      R => '0'
    );
\buff0_reg[3]__0\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \tmp_product__0_n_102\,
      Q => D(3),
      R => '0'
    );
\buff0_reg[4]__0\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \tmp_product__0_n_101\,
      Q => D(4),
      R => '0'
    );
\buff0_reg[5]__0\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \tmp_product__0_n_100\,
      Q => D(5),
      R => '0'
    );
\buff0_reg[6]__0\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \tmp_product__0_n_99\,
      Q => D(6),
      R => '0'
    );
\buff0_reg[7]__0\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \tmp_product__0_n_98\,
      Q => D(7),
      R => '0'
    );
\buff0_reg[8]__0\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \tmp_product__0_n_97\,
      Q => D(8),
      R => '0'
    );
\buff0_reg[9]__0\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \tmp_product__0_n_96\,
      Q => D(9),
      R => '0'
    );
\mul_ln18_reg_109[19]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => buff0_reg_n_103,
      I1 => tmp_product_n_103,
      O => \mul_ln18_reg_109[19]_i_2_n_0\
    );
\mul_ln18_reg_109[19]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => buff0_reg_n_104,
      I1 => tmp_product_n_104,
      O => \mul_ln18_reg_109[19]_i_3_n_0\
    );
\mul_ln18_reg_109[19]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => buff0_reg_n_105,
      I1 => tmp_product_n_105,
      O => \mul_ln18_reg_109[19]_i_4_n_0\
    );
\mul_ln18_reg_109[23]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => buff0_reg_n_99,
      I1 => tmp_product_n_99,
      O => \mul_ln18_reg_109[23]_i_2_n_0\
    );
\mul_ln18_reg_109[23]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => buff0_reg_n_100,
      I1 => tmp_product_n_100,
      O => \mul_ln18_reg_109[23]_i_3_n_0\
    );
\mul_ln18_reg_109[23]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => buff0_reg_n_101,
      I1 => tmp_product_n_101,
      O => \mul_ln18_reg_109[23]_i_4_n_0\
    );
\mul_ln18_reg_109[23]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => buff0_reg_n_102,
      I1 => tmp_product_n_102,
      O => \mul_ln18_reg_109[23]_i_5_n_0\
    );
\mul_ln18_reg_109[27]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => buff0_reg_n_95,
      I1 => tmp_product_n_95,
      O => \mul_ln18_reg_109[27]_i_2_n_0\
    );
\mul_ln18_reg_109[27]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => buff0_reg_n_96,
      I1 => tmp_product_n_96,
      O => \mul_ln18_reg_109[27]_i_3_n_0\
    );
\mul_ln18_reg_109[27]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => buff0_reg_n_97,
      I1 => tmp_product_n_97,
      O => \mul_ln18_reg_109[27]_i_4_n_0\
    );
\mul_ln18_reg_109[27]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => buff0_reg_n_98,
      I1 => tmp_product_n_98,
      O => \mul_ln18_reg_109[27]_i_5_n_0\
    );
\mul_ln18_reg_109[31]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => buff0_reg_n_91,
      I1 => tmp_product_n_91,
      O => \mul_ln18_reg_109[31]_i_2_n_0\
    );
\mul_ln18_reg_109[31]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => buff0_reg_n_92,
      I1 => tmp_product_n_92,
      O => \mul_ln18_reg_109[31]_i_3_n_0\
    );
\mul_ln18_reg_109[31]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => buff0_reg_n_93,
      I1 => tmp_product_n_93,
      O => \mul_ln18_reg_109[31]_i_4_n_0\
    );
\mul_ln18_reg_109[31]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => buff0_reg_n_94,
      I1 => tmp_product_n_94,
      O => \mul_ln18_reg_109[31]_i_5_n_0\
    );
\mul_ln18_reg_109_reg[19]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \mul_ln18_reg_109_reg[19]_i_1_n_0\,
      CO(2) => \mul_ln18_reg_109_reg[19]_i_1_n_1\,
      CO(1) => \mul_ln18_reg_109_reg[19]_i_1_n_2\,
      CO(0) => \mul_ln18_reg_109_reg[19]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => buff0_reg_n_103,
      DI(2) => buff0_reg_n_104,
      DI(1) => buff0_reg_n_105,
      DI(0) => '0',
      O(3 downto 0) => D(19 downto 16),
      S(3) => \mul_ln18_reg_109[19]_i_2_n_0\,
      S(2) => \mul_ln18_reg_109[19]_i_3_n_0\,
      S(1) => \mul_ln18_reg_109[19]_i_4_n_0\,
      S(0) => \buff0_reg[16]__0_n_0\
    );
\mul_ln18_reg_109_reg[23]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \mul_ln18_reg_109_reg[19]_i_1_n_0\,
      CO(3) => \mul_ln18_reg_109_reg[23]_i_1_n_0\,
      CO(2) => \mul_ln18_reg_109_reg[23]_i_1_n_1\,
      CO(1) => \mul_ln18_reg_109_reg[23]_i_1_n_2\,
      CO(0) => \mul_ln18_reg_109_reg[23]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => buff0_reg_n_99,
      DI(2) => buff0_reg_n_100,
      DI(1) => buff0_reg_n_101,
      DI(0) => buff0_reg_n_102,
      O(3 downto 0) => D(23 downto 20),
      S(3) => \mul_ln18_reg_109[23]_i_2_n_0\,
      S(2) => \mul_ln18_reg_109[23]_i_3_n_0\,
      S(1) => \mul_ln18_reg_109[23]_i_4_n_0\,
      S(0) => \mul_ln18_reg_109[23]_i_5_n_0\
    );
\mul_ln18_reg_109_reg[27]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \mul_ln18_reg_109_reg[23]_i_1_n_0\,
      CO(3) => \mul_ln18_reg_109_reg[27]_i_1_n_0\,
      CO(2) => \mul_ln18_reg_109_reg[27]_i_1_n_1\,
      CO(1) => \mul_ln18_reg_109_reg[27]_i_1_n_2\,
      CO(0) => \mul_ln18_reg_109_reg[27]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => buff0_reg_n_95,
      DI(2) => buff0_reg_n_96,
      DI(1) => buff0_reg_n_97,
      DI(0) => buff0_reg_n_98,
      O(3 downto 0) => D(27 downto 24),
      S(3) => \mul_ln18_reg_109[27]_i_2_n_0\,
      S(2) => \mul_ln18_reg_109[27]_i_3_n_0\,
      S(1) => \mul_ln18_reg_109[27]_i_4_n_0\,
      S(0) => \mul_ln18_reg_109[27]_i_5_n_0\
    );
\mul_ln18_reg_109_reg[31]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \mul_ln18_reg_109_reg[27]_i_1_n_0\,
      CO(3) => \NLW_mul_ln18_reg_109_reg[31]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \mul_ln18_reg_109_reg[31]_i_1_n_1\,
      CO(1) => \mul_ln18_reg_109_reg[31]_i_1_n_2\,
      CO(0) => \mul_ln18_reg_109_reg[31]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => buff0_reg_n_92,
      DI(1) => buff0_reg_n_93,
      DI(0) => buff0_reg_n_94,
      O(3 downto 0) => D(31 downto 28),
      S(3) => \mul_ln18_reg_109[31]_i_2_n_0\,
      S(2) => \mul_ln18_reg_109[31]_i_3_n_0\,
      S(1) => \mul_ln18_reg_109[31]_i_4_n_0\,
      S(0) => \mul_ln18_reg_109[31]_i_5_n_0\
    );
tmp_product: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 1,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 1,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 1,
      BREG => 1,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 1,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 0,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREG => 1,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29 downto 17) => B"0000000000000",
      A(16 downto 0) => int_x0(16 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_tmp_product_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17) => int_m0(31),
      B(16) => int_m0(31),
      B(15) => int_m0(31),
      B(14 downto 0) => int_m0(31 downto 17),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_tmp_product_BCOUT_UNCONNECTED(17 downto 0),
      C(47 downto 0) => B"111111111111111111111111111111111111111111111111",
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_tmp_product_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_tmp_product_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => '0',
      CEA2 => E(0),
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => tmp_product_0(0),
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '0',
      CEP => '1',
      CLK => ap_clk,
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_tmp_product_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 0) => B"0000101",
      OVERFLOW => NLW_tmp_product_OVERFLOW_UNCONNECTED,
      P(47) => tmp_product_n_58,
      P(46) => tmp_product_n_59,
      P(45) => tmp_product_n_60,
      P(44) => tmp_product_n_61,
      P(43) => tmp_product_n_62,
      P(42) => tmp_product_n_63,
      P(41) => tmp_product_n_64,
      P(40) => tmp_product_n_65,
      P(39) => tmp_product_n_66,
      P(38) => tmp_product_n_67,
      P(37) => tmp_product_n_68,
      P(36) => tmp_product_n_69,
      P(35) => tmp_product_n_70,
      P(34) => tmp_product_n_71,
      P(33) => tmp_product_n_72,
      P(32) => tmp_product_n_73,
      P(31) => tmp_product_n_74,
      P(30) => tmp_product_n_75,
      P(29) => tmp_product_n_76,
      P(28) => tmp_product_n_77,
      P(27) => tmp_product_n_78,
      P(26) => tmp_product_n_79,
      P(25) => tmp_product_n_80,
      P(24) => tmp_product_n_81,
      P(23) => tmp_product_n_82,
      P(22) => tmp_product_n_83,
      P(21) => tmp_product_n_84,
      P(20) => tmp_product_n_85,
      P(19) => tmp_product_n_86,
      P(18) => tmp_product_n_87,
      P(17) => tmp_product_n_88,
      P(16) => tmp_product_n_89,
      P(15) => tmp_product_n_90,
      P(14) => tmp_product_n_91,
      P(13) => tmp_product_n_92,
      P(12) => tmp_product_n_93,
      P(11) => tmp_product_n_94,
      P(10) => tmp_product_n_95,
      P(9) => tmp_product_n_96,
      P(8) => tmp_product_n_97,
      P(7) => tmp_product_n_98,
      P(6) => tmp_product_n_99,
      P(5) => tmp_product_n_100,
      P(4) => tmp_product_n_101,
      P(3) => tmp_product_n_102,
      P(2) => tmp_product_n_103,
      P(1) => tmp_product_n_104,
      P(0) => tmp_product_n_105,
      PATTERNBDETECT => NLW_tmp_product_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_tmp_product_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47) => tmp_product_n_106,
      PCOUT(46) => tmp_product_n_107,
      PCOUT(45) => tmp_product_n_108,
      PCOUT(44) => tmp_product_n_109,
      PCOUT(43) => tmp_product_n_110,
      PCOUT(42) => tmp_product_n_111,
      PCOUT(41) => tmp_product_n_112,
      PCOUT(40) => tmp_product_n_113,
      PCOUT(39) => tmp_product_n_114,
      PCOUT(38) => tmp_product_n_115,
      PCOUT(37) => tmp_product_n_116,
      PCOUT(36) => tmp_product_n_117,
      PCOUT(35) => tmp_product_n_118,
      PCOUT(34) => tmp_product_n_119,
      PCOUT(33) => tmp_product_n_120,
      PCOUT(32) => tmp_product_n_121,
      PCOUT(31) => tmp_product_n_122,
      PCOUT(30) => tmp_product_n_123,
      PCOUT(29) => tmp_product_n_124,
      PCOUT(28) => tmp_product_n_125,
      PCOUT(27) => tmp_product_n_126,
      PCOUT(26) => tmp_product_n_127,
      PCOUT(25) => tmp_product_n_128,
      PCOUT(24) => tmp_product_n_129,
      PCOUT(23) => tmp_product_n_130,
      PCOUT(22) => tmp_product_n_131,
      PCOUT(21) => tmp_product_n_132,
      PCOUT(20) => tmp_product_n_133,
      PCOUT(19) => tmp_product_n_134,
      PCOUT(18) => tmp_product_n_135,
      PCOUT(17) => tmp_product_n_136,
      PCOUT(16) => tmp_product_n_137,
      PCOUT(15) => tmp_product_n_138,
      PCOUT(14) => tmp_product_n_139,
      PCOUT(13) => tmp_product_n_140,
      PCOUT(12) => tmp_product_n_141,
      PCOUT(11) => tmp_product_n_142,
      PCOUT(10) => tmp_product_n_143,
      PCOUT(9) => tmp_product_n_144,
      PCOUT(8) => tmp_product_n_145,
      PCOUT(7) => tmp_product_n_146,
      PCOUT(6) => tmp_product_n_147,
      PCOUT(5) => tmp_product_n_148,
      PCOUT(4) => tmp_product_n_149,
      PCOUT(3) => tmp_product_n_150,
      PCOUT(2) => tmp_product_n_151,
      PCOUT(1) => tmp_product_n_152,
      PCOUT(0) => tmp_product_n_153,
      RSTA => ap_rst_n_inv,
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => ap_rst_n_inv,
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => '0',
      UNDERFLOW => NLW_tmp_product_UNDERFLOW_UNCONNECTED
    );
\tmp_product__0\: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 1,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 1,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 1,
      BREG => 1,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 1,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 0,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREG => 0,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29 downto 17) => B"0000000000000",
      A(16 downto 0) => int_m0(16 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => \NLW_tmp_product__0_ACOUT_UNCONNECTED\(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17) => '0',
      B(16 downto 0) => int_x0(16 downto 0),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => \NLW_tmp_product__0_BCOUT_UNCONNECTED\(17 downto 0),
      C(47 downto 0) => B"111111111111111111111111111111111111111111111111",
      CARRYCASCIN => '0',
      CARRYCASCOUT => \NLW_tmp_product__0_CARRYCASCOUT_UNCONNECTED\,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => \NLW_tmp_product__0_CARRYOUT_UNCONNECTED\(3 downto 0),
      CEA1 => '0',
      CEA2 => tmp_product_0(0),
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => E(0),
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '0',
      CEP => '0',
      CLK => ap_clk,
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => \NLW_tmp_product__0_MULTSIGNOUT_UNCONNECTED\,
      OPMODE(6 downto 0) => B"0000101",
      OVERFLOW => \NLW_tmp_product__0_OVERFLOW_UNCONNECTED\,
      P(47) => \tmp_product__0_n_58\,
      P(46) => \tmp_product__0_n_59\,
      P(45) => \tmp_product__0_n_60\,
      P(44) => \tmp_product__0_n_61\,
      P(43) => \tmp_product__0_n_62\,
      P(42) => \tmp_product__0_n_63\,
      P(41) => \tmp_product__0_n_64\,
      P(40) => \tmp_product__0_n_65\,
      P(39) => \tmp_product__0_n_66\,
      P(38) => \tmp_product__0_n_67\,
      P(37) => \tmp_product__0_n_68\,
      P(36) => \tmp_product__0_n_69\,
      P(35) => \tmp_product__0_n_70\,
      P(34) => \tmp_product__0_n_71\,
      P(33) => \tmp_product__0_n_72\,
      P(32) => \tmp_product__0_n_73\,
      P(31) => \tmp_product__0_n_74\,
      P(30) => \tmp_product__0_n_75\,
      P(29) => \tmp_product__0_n_76\,
      P(28) => \tmp_product__0_n_77\,
      P(27) => \tmp_product__0_n_78\,
      P(26) => \tmp_product__0_n_79\,
      P(25) => \tmp_product__0_n_80\,
      P(24) => \tmp_product__0_n_81\,
      P(23) => \tmp_product__0_n_82\,
      P(22) => \tmp_product__0_n_83\,
      P(21) => \tmp_product__0_n_84\,
      P(20) => \tmp_product__0_n_85\,
      P(19) => \tmp_product__0_n_86\,
      P(18) => \tmp_product__0_n_87\,
      P(17) => \tmp_product__0_n_88\,
      P(16) => \tmp_product__0_n_89\,
      P(15) => \tmp_product__0_n_90\,
      P(14) => \tmp_product__0_n_91\,
      P(13) => \tmp_product__0_n_92\,
      P(12) => \tmp_product__0_n_93\,
      P(11) => \tmp_product__0_n_94\,
      P(10) => \tmp_product__0_n_95\,
      P(9) => \tmp_product__0_n_96\,
      P(8) => \tmp_product__0_n_97\,
      P(7) => \tmp_product__0_n_98\,
      P(6) => \tmp_product__0_n_99\,
      P(5) => \tmp_product__0_n_100\,
      P(4) => \tmp_product__0_n_101\,
      P(3) => \tmp_product__0_n_102\,
      P(2) => \tmp_product__0_n_103\,
      P(1) => \tmp_product__0_n_104\,
      P(0) => \tmp_product__0_n_105\,
      PATTERNBDETECT => \NLW_tmp_product__0_PATTERNBDETECT_UNCONNECTED\,
      PATTERNDETECT => \NLW_tmp_product__0_PATTERNDETECT_UNCONNECTED\,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47) => \tmp_product__0_n_106\,
      PCOUT(46) => \tmp_product__0_n_107\,
      PCOUT(45) => \tmp_product__0_n_108\,
      PCOUT(44) => \tmp_product__0_n_109\,
      PCOUT(43) => \tmp_product__0_n_110\,
      PCOUT(42) => \tmp_product__0_n_111\,
      PCOUT(41) => \tmp_product__0_n_112\,
      PCOUT(40) => \tmp_product__0_n_113\,
      PCOUT(39) => \tmp_product__0_n_114\,
      PCOUT(38) => \tmp_product__0_n_115\,
      PCOUT(37) => \tmp_product__0_n_116\,
      PCOUT(36) => \tmp_product__0_n_117\,
      PCOUT(35) => \tmp_product__0_n_118\,
      PCOUT(34) => \tmp_product__0_n_119\,
      PCOUT(33) => \tmp_product__0_n_120\,
      PCOUT(32) => \tmp_product__0_n_121\,
      PCOUT(31) => \tmp_product__0_n_122\,
      PCOUT(30) => \tmp_product__0_n_123\,
      PCOUT(29) => \tmp_product__0_n_124\,
      PCOUT(28) => \tmp_product__0_n_125\,
      PCOUT(27) => \tmp_product__0_n_126\,
      PCOUT(26) => \tmp_product__0_n_127\,
      PCOUT(25) => \tmp_product__0_n_128\,
      PCOUT(24) => \tmp_product__0_n_129\,
      PCOUT(23) => \tmp_product__0_n_130\,
      PCOUT(22) => \tmp_product__0_n_131\,
      PCOUT(21) => \tmp_product__0_n_132\,
      PCOUT(20) => \tmp_product__0_n_133\,
      PCOUT(19) => \tmp_product__0_n_134\,
      PCOUT(18) => \tmp_product__0_n_135\,
      PCOUT(17) => \tmp_product__0_n_136\,
      PCOUT(16) => \tmp_product__0_n_137\,
      PCOUT(15) => \tmp_product__0_n_138\,
      PCOUT(14) => \tmp_product__0_n_139\,
      PCOUT(13) => \tmp_product__0_n_140\,
      PCOUT(12) => \tmp_product__0_n_141\,
      PCOUT(11) => \tmp_product__0_n_142\,
      PCOUT(10) => \tmp_product__0_n_143\,
      PCOUT(9) => \tmp_product__0_n_144\,
      PCOUT(8) => \tmp_product__0_n_145\,
      PCOUT(7) => \tmp_product__0_n_146\,
      PCOUT(6) => \tmp_product__0_n_147\,
      PCOUT(5) => \tmp_product__0_n_148\,
      PCOUT(4) => \tmp_product__0_n_149\,
      PCOUT(3) => \tmp_product__0_n_150\,
      PCOUT(2) => \tmp_product__0_n_151\,
      PCOUT(1) => \tmp_product__0_n_152\,
      PCOUT(0) => \tmp_product__0_n_153\,
      RSTA => ap_rst_n_inv,
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => ap_rst_n_inv,
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => '0',
      UNDERFLOW => \NLW_tmp_product__0_UNDERFLOW_UNCONNECTED\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_linear_model is
  port (
    ap_clk : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    s_axi_HLS_LINEAR_PERIPH_BUS_AWVALID : in STD_LOGIC;
    s_axi_HLS_LINEAR_PERIPH_BUS_AWREADY : out STD_LOGIC;
    s_axi_HLS_LINEAR_PERIPH_BUS_AWADDR : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_HLS_LINEAR_PERIPH_BUS_WVALID : in STD_LOGIC;
    s_axi_HLS_LINEAR_PERIPH_BUS_WREADY : out STD_LOGIC;
    s_axi_HLS_LINEAR_PERIPH_BUS_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_HLS_LINEAR_PERIPH_BUS_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_HLS_LINEAR_PERIPH_BUS_ARVALID : in STD_LOGIC;
    s_axi_HLS_LINEAR_PERIPH_BUS_ARREADY : out STD_LOGIC;
    s_axi_HLS_LINEAR_PERIPH_BUS_ARADDR : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_HLS_LINEAR_PERIPH_BUS_RVALID : out STD_LOGIC;
    s_axi_HLS_LINEAR_PERIPH_BUS_RREADY : in STD_LOGIC;
    s_axi_HLS_LINEAR_PERIPH_BUS_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_HLS_LINEAR_PERIPH_BUS_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_HLS_LINEAR_PERIPH_BUS_BVALID : out STD_LOGIC;
    s_axi_HLS_LINEAR_PERIPH_BUS_BREADY : in STD_LOGIC;
    s_axi_HLS_LINEAR_PERIPH_BUS_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    interrupt : out STD_LOGIC
  );
  attribute C_S_AXI_DATA_WIDTH : integer;
  attribute C_S_AXI_DATA_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_linear_model : entity is 32;
  attribute C_S_AXI_HLS_LINEAR_PERIPH_BUS_ADDR_WIDTH : integer;
  attribute C_S_AXI_HLS_LINEAR_PERIPH_BUS_ADDR_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_linear_model : entity is 6;
  attribute C_S_AXI_HLS_LINEAR_PERIPH_BUS_DATA_WIDTH : integer;
  attribute C_S_AXI_HLS_LINEAR_PERIPH_BUS_DATA_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_linear_model : entity is 32;
  attribute C_S_AXI_HLS_LINEAR_PERIPH_BUS_WSTRB_WIDTH : integer;
  attribute C_S_AXI_HLS_LINEAR_PERIPH_BUS_WSTRB_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_linear_model : entity is 4;
  attribute C_S_AXI_WSTRB_WIDTH : integer;
  attribute C_S_AXI_WSTRB_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_linear_model : entity is 4;
  attribute ap_ST_fsm_state1 : string;
  attribute ap_ST_fsm_state1 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_linear_model : entity is "3'b001";
  attribute ap_ST_fsm_state2 : string;
  attribute ap_ST_fsm_state2 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_linear_model : entity is "3'b010";
  attribute ap_ST_fsm_state3 : string;
  attribute ap_ST_fsm_state3 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_linear_model : entity is "3'b100";
  attribute hls_module : string;
  attribute hls_module of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_linear_model : entity is "yes";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_linear_model;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_linear_model is
  signal \<const0>\ : STD_LOGIC;
  signal HLS_LINEAR_PERIPH_BUS_s_axi_U_n_40 : STD_LOGIC;
  signal HLS_LINEAR_PERIPH_BUS_s_axi_U_n_7 : STD_LOGIC;
  signal ap_CS_fsm_state1 : STD_LOGIC;
  signal ap_CS_fsm_state2 : STD_LOGIC;
  signal ap_CS_fsm_state3 : STD_LOGIC;
  signal ap_NS_fsm : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ap_rst_n_inv : STD_LOGIC;
  signal \buff0_reg__1\ : STD_LOGIC_VECTOR ( 31 downto 16 );
  signal c : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal c_read_reg_94 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal int_m0 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal int_x0 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mul_32s_32s_32_2_1_U1_n_16 : STD_LOGIC;
  signal mul_32s_32s_32_2_1_U1_n_17 : STD_LOGIC;
  signal mul_32s_32s_32_2_1_U1_n_18 : STD_LOGIC;
  signal mul_32s_32s_32_2_1_U1_n_19 : STD_LOGIC;
  signal mul_32s_32s_32_2_1_U1_n_20 : STD_LOGIC;
  signal mul_32s_32s_32_2_1_U1_n_21 : STD_LOGIC;
  signal mul_32s_32s_32_2_1_U1_n_22 : STD_LOGIC;
  signal mul_32s_32s_32_2_1_U1_n_23 : STD_LOGIC;
  signal mul_32s_32s_32_2_1_U1_n_24 : STD_LOGIC;
  signal mul_32s_32s_32_2_1_U1_n_25 : STD_LOGIC;
  signal mul_32s_32s_32_2_1_U1_n_26 : STD_LOGIC;
  signal mul_32s_32s_32_2_1_U1_n_27 : STD_LOGIC;
  signal mul_32s_32s_32_2_1_U1_n_28 : STD_LOGIC;
  signal mul_32s_32s_32_2_1_U1_n_29 : STD_LOGIC;
  signal mul_32s_32s_32_2_1_U1_n_30 : STD_LOGIC;
  signal mul_32s_32s_32_2_1_U1_n_31 : STD_LOGIC;
  signal mul_ln18_reg_109 : STD_LOGIC_VECTOR ( 31 downto 0 );
  attribute FSM_ENCODING : string;
  attribute FSM_ENCODING of \ap_CS_fsm_reg[0]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[1]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[2]\ : label is "none";
begin
  s_axi_HLS_LINEAR_PERIPH_BUS_BRESP(1) <= \<const0>\;
  s_axi_HLS_LINEAR_PERIPH_BUS_BRESP(0) <= \<const0>\;
  s_axi_HLS_LINEAR_PERIPH_BUS_RRESP(1) <= \<const0>\;
  s_axi_HLS_LINEAR_PERIPH_BUS_RRESP(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
HLS_LINEAR_PERIPH_BUS_s_axi_U: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_linear_model_HLS_LINEAR_PERIPH_BUS_s_axi
     port map (
      D(1 downto 0) => ap_NS_fsm(1 downto 0),
      E(0) => HLS_LINEAR_PERIPH_BUS_s_axi_U_n_7,
      \FSM_onehot_rstate_reg[1]_0\ => s_axi_HLS_LINEAR_PERIPH_BUS_ARREADY,
      \FSM_onehot_wstate_reg[1]_0\ => s_axi_HLS_LINEAR_PERIPH_BUS_AWREADY,
      \FSM_onehot_wstate_reg[2]_0\ => s_axi_HLS_LINEAR_PERIPH_BUS_WREADY,
      Q(2) => ap_CS_fsm_state3,
      Q(1) => ap_CS_fsm_state2,
      Q(0) => ap_CS_fsm_state1,
      ap_clk => ap_clk,
      ap_rst_n => ap_rst_n,
      ap_rst_n_inv => ap_rst_n_inv,
      \int_c_reg[31]_0\(31 downto 0) => c(31 downto 0),
      int_m0(31 downto 0) => int_m0(31 downto 0),
      int_x0(31 downto 0) => int_x0(31 downto 0),
      \int_y_reg[31]_0\(31 downto 0) => mul_ln18_reg_109(31 downto 0),
      \int_y_reg[31]_1\(31 downto 0) => c_read_reg_94(31 downto 0),
      interrupt => interrupt,
      s_axi_HLS_LINEAR_PERIPH_BUS_ARADDR(5 downto 0) => s_axi_HLS_LINEAR_PERIPH_BUS_ARADDR(5 downto 0),
      s_axi_HLS_LINEAR_PERIPH_BUS_ARVALID => s_axi_HLS_LINEAR_PERIPH_BUS_ARVALID,
      s_axi_HLS_LINEAR_PERIPH_BUS_AWADDR(3 downto 0) => s_axi_HLS_LINEAR_PERIPH_BUS_AWADDR(5 downto 2),
      s_axi_HLS_LINEAR_PERIPH_BUS_AWVALID => s_axi_HLS_LINEAR_PERIPH_BUS_AWVALID,
      s_axi_HLS_LINEAR_PERIPH_BUS_BREADY => s_axi_HLS_LINEAR_PERIPH_BUS_BREADY,
      s_axi_HLS_LINEAR_PERIPH_BUS_BVALID => s_axi_HLS_LINEAR_PERIPH_BUS_BVALID,
      s_axi_HLS_LINEAR_PERIPH_BUS_RDATA(31 downto 0) => s_axi_HLS_LINEAR_PERIPH_BUS_RDATA(31 downto 0),
      s_axi_HLS_LINEAR_PERIPH_BUS_RREADY => s_axi_HLS_LINEAR_PERIPH_BUS_RREADY,
      s_axi_HLS_LINEAR_PERIPH_BUS_RVALID => s_axi_HLS_LINEAR_PERIPH_BUS_RVALID,
      s_axi_HLS_LINEAR_PERIPH_BUS_WDATA(31 downto 0) => s_axi_HLS_LINEAR_PERIPH_BUS_WDATA(31 downto 0),
      s_axi_HLS_LINEAR_PERIPH_BUS_WSTRB(3 downto 0) => s_axi_HLS_LINEAR_PERIPH_BUS_WSTRB(3 downto 0),
      s_axi_HLS_LINEAR_PERIPH_BUS_WVALID => s_axi_HLS_LINEAR_PERIPH_BUS_WVALID,
      \waddr_reg[2]_0\(0) => HLS_LINEAR_PERIPH_BUS_s_axi_U_n_40
    );
\ap_CS_fsm_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_NS_fsm(0),
      Q => ap_CS_fsm_state1,
      S => ap_rst_n_inv
    );
\ap_CS_fsm_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_NS_fsm(1),
      Q => ap_CS_fsm_state2,
      R => ap_rst_n_inv
    );
\ap_CS_fsm_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_CS_fsm_state2,
      Q => ap_CS_fsm_state3,
      R => ap_rst_n_inv
    );
\c_read_reg_94_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state1,
      D => c(0),
      Q => c_read_reg_94(0),
      R => '0'
    );
\c_read_reg_94_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state1,
      D => c(10),
      Q => c_read_reg_94(10),
      R => '0'
    );
\c_read_reg_94_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state1,
      D => c(11),
      Q => c_read_reg_94(11),
      R => '0'
    );
\c_read_reg_94_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state1,
      D => c(12),
      Q => c_read_reg_94(12),
      R => '0'
    );
\c_read_reg_94_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state1,
      D => c(13),
      Q => c_read_reg_94(13),
      R => '0'
    );
\c_read_reg_94_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state1,
      D => c(14),
      Q => c_read_reg_94(14),
      R => '0'
    );
\c_read_reg_94_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state1,
      D => c(15),
      Q => c_read_reg_94(15),
      R => '0'
    );
\c_read_reg_94_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state1,
      D => c(16),
      Q => c_read_reg_94(16),
      R => '0'
    );
\c_read_reg_94_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state1,
      D => c(17),
      Q => c_read_reg_94(17),
      R => '0'
    );
\c_read_reg_94_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state1,
      D => c(18),
      Q => c_read_reg_94(18),
      R => '0'
    );
\c_read_reg_94_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state1,
      D => c(19),
      Q => c_read_reg_94(19),
      R => '0'
    );
\c_read_reg_94_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state1,
      D => c(1),
      Q => c_read_reg_94(1),
      R => '0'
    );
\c_read_reg_94_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state1,
      D => c(20),
      Q => c_read_reg_94(20),
      R => '0'
    );
\c_read_reg_94_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state1,
      D => c(21),
      Q => c_read_reg_94(21),
      R => '0'
    );
\c_read_reg_94_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state1,
      D => c(22),
      Q => c_read_reg_94(22),
      R => '0'
    );
\c_read_reg_94_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state1,
      D => c(23),
      Q => c_read_reg_94(23),
      R => '0'
    );
\c_read_reg_94_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state1,
      D => c(24),
      Q => c_read_reg_94(24),
      R => '0'
    );
\c_read_reg_94_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state1,
      D => c(25),
      Q => c_read_reg_94(25),
      R => '0'
    );
\c_read_reg_94_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state1,
      D => c(26),
      Q => c_read_reg_94(26),
      R => '0'
    );
\c_read_reg_94_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state1,
      D => c(27),
      Q => c_read_reg_94(27),
      R => '0'
    );
\c_read_reg_94_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state1,
      D => c(28),
      Q => c_read_reg_94(28),
      R => '0'
    );
\c_read_reg_94_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state1,
      D => c(29),
      Q => c_read_reg_94(29),
      R => '0'
    );
\c_read_reg_94_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state1,
      D => c(2),
      Q => c_read_reg_94(2),
      R => '0'
    );
\c_read_reg_94_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state1,
      D => c(30),
      Q => c_read_reg_94(30),
      R => '0'
    );
\c_read_reg_94_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state1,
      D => c(31),
      Q => c_read_reg_94(31),
      R => '0'
    );
\c_read_reg_94_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state1,
      D => c(3),
      Q => c_read_reg_94(3),
      R => '0'
    );
\c_read_reg_94_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state1,
      D => c(4),
      Q => c_read_reg_94(4),
      R => '0'
    );
\c_read_reg_94_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state1,
      D => c(5),
      Q => c_read_reg_94(5),
      R => '0'
    );
\c_read_reg_94_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state1,
      D => c(6),
      Q => c_read_reg_94(6),
      R => '0'
    );
\c_read_reg_94_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state1,
      D => c(7),
      Q => c_read_reg_94(7),
      R => '0'
    );
\c_read_reg_94_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state1,
      D => c(8),
      Q => c_read_reg_94(8),
      R => '0'
    );
\c_read_reg_94_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state1,
      D => c(9),
      Q => c_read_reg_94(9),
      R => '0'
    );
mul_32s_32s_32_2_1_U1: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_linear_model_mul_32s_32s_32_2_1
     port map (
      D(31 downto 16) => \buff0_reg__1\(31 downto 16),
      D(15) => mul_32s_32s_32_2_1_U1_n_16,
      D(14) => mul_32s_32s_32_2_1_U1_n_17,
      D(13) => mul_32s_32s_32_2_1_U1_n_18,
      D(12) => mul_32s_32s_32_2_1_U1_n_19,
      D(11) => mul_32s_32s_32_2_1_U1_n_20,
      D(10) => mul_32s_32s_32_2_1_U1_n_21,
      D(9) => mul_32s_32s_32_2_1_U1_n_22,
      D(8) => mul_32s_32s_32_2_1_U1_n_23,
      D(7) => mul_32s_32s_32_2_1_U1_n_24,
      D(6) => mul_32s_32s_32_2_1_U1_n_25,
      D(5) => mul_32s_32s_32_2_1_U1_n_26,
      D(4) => mul_32s_32s_32_2_1_U1_n_27,
      D(3) => mul_32s_32s_32_2_1_U1_n_28,
      D(2) => mul_32s_32s_32_2_1_U1_n_29,
      D(1) => mul_32s_32s_32_2_1_U1_n_30,
      D(0) => mul_32s_32s_32_2_1_U1_n_31,
      E(0) => HLS_LINEAR_PERIPH_BUS_s_axi_U_n_7,
      ap_clk => ap_clk,
      ap_rst_n_inv => ap_rst_n_inv,
      int_m0(31 downto 0) => int_m0(31 downto 0),
      int_x0(31 downto 0) => int_x0(31 downto 0),
      tmp_product_0(0) => HLS_LINEAR_PERIPH_BUS_s_axi_U_n_40
    );
\mul_ln18_reg_109_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state2,
      D => mul_32s_32s_32_2_1_U1_n_31,
      Q => mul_ln18_reg_109(0),
      R => '0'
    );
\mul_ln18_reg_109_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state2,
      D => mul_32s_32s_32_2_1_U1_n_21,
      Q => mul_ln18_reg_109(10),
      R => '0'
    );
\mul_ln18_reg_109_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state2,
      D => mul_32s_32s_32_2_1_U1_n_20,
      Q => mul_ln18_reg_109(11),
      R => '0'
    );
\mul_ln18_reg_109_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state2,
      D => mul_32s_32s_32_2_1_U1_n_19,
      Q => mul_ln18_reg_109(12),
      R => '0'
    );
\mul_ln18_reg_109_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state2,
      D => mul_32s_32s_32_2_1_U1_n_18,
      Q => mul_ln18_reg_109(13),
      R => '0'
    );
\mul_ln18_reg_109_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state2,
      D => mul_32s_32s_32_2_1_U1_n_17,
      Q => mul_ln18_reg_109(14),
      R => '0'
    );
\mul_ln18_reg_109_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state2,
      D => mul_32s_32s_32_2_1_U1_n_16,
      Q => mul_ln18_reg_109(15),
      R => '0'
    );
\mul_ln18_reg_109_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state2,
      D => \buff0_reg__1\(16),
      Q => mul_ln18_reg_109(16),
      R => '0'
    );
\mul_ln18_reg_109_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state2,
      D => \buff0_reg__1\(17),
      Q => mul_ln18_reg_109(17),
      R => '0'
    );
\mul_ln18_reg_109_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state2,
      D => \buff0_reg__1\(18),
      Q => mul_ln18_reg_109(18),
      R => '0'
    );
\mul_ln18_reg_109_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state2,
      D => \buff0_reg__1\(19),
      Q => mul_ln18_reg_109(19),
      R => '0'
    );
\mul_ln18_reg_109_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state2,
      D => mul_32s_32s_32_2_1_U1_n_30,
      Q => mul_ln18_reg_109(1),
      R => '0'
    );
\mul_ln18_reg_109_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state2,
      D => \buff0_reg__1\(20),
      Q => mul_ln18_reg_109(20),
      R => '0'
    );
\mul_ln18_reg_109_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state2,
      D => \buff0_reg__1\(21),
      Q => mul_ln18_reg_109(21),
      R => '0'
    );
\mul_ln18_reg_109_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state2,
      D => \buff0_reg__1\(22),
      Q => mul_ln18_reg_109(22),
      R => '0'
    );
\mul_ln18_reg_109_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state2,
      D => \buff0_reg__1\(23),
      Q => mul_ln18_reg_109(23),
      R => '0'
    );
\mul_ln18_reg_109_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state2,
      D => \buff0_reg__1\(24),
      Q => mul_ln18_reg_109(24),
      R => '0'
    );
\mul_ln18_reg_109_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state2,
      D => \buff0_reg__1\(25),
      Q => mul_ln18_reg_109(25),
      R => '0'
    );
\mul_ln18_reg_109_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state2,
      D => \buff0_reg__1\(26),
      Q => mul_ln18_reg_109(26),
      R => '0'
    );
\mul_ln18_reg_109_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state2,
      D => \buff0_reg__1\(27),
      Q => mul_ln18_reg_109(27),
      R => '0'
    );
\mul_ln18_reg_109_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state2,
      D => \buff0_reg__1\(28),
      Q => mul_ln18_reg_109(28),
      R => '0'
    );
\mul_ln18_reg_109_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state2,
      D => \buff0_reg__1\(29),
      Q => mul_ln18_reg_109(29),
      R => '0'
    );
\mul_ln18_reg_109_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state2,
      D => mul_32s_32s_32_2_1_U1_n_29,
      Q => mul_ln18_reg_109(2),
      R => '0'
    );
\mul_ln18_reg_109_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state2,
      D => \buff0_reg__1\(30),
      Q => mul_ln18_reg_109(30),
      R => '0'
    );
\mul_ln18_reg_109_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state2,
      D => \buff0_reg__1\(31),
      Q => mul_ln18_reg_109(31),
      R => '0'
    );
\mul_ln18_reg_109_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state2,
      D => mul_32s_32s_32_2_1_U1_n_28,
      Q => mul_ln18_reg_109(3),
      R => '0'
    );
\mul_ln18_reg_109_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state2,
      D => mul_32s_32s_32_2_1_U1_n_27,
      Q => mul_ln18_reg_109(4),
      R => '0'
    );
\mul_ln18_reg_109_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state2,
      D => mul_32s_32s_32_2_1_U1_n_26,
      Q => mul_ln18_reg_109(5),
      R => '0'
    );
\mul_ln18_reg_109_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state2,
      D => mul_32s_32s_32_2_1_U1_n_25,
      Q => mul_ln18_reg_109(6),
      R => '0'
    );
\mul_ln18_reg_109_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state2,
      D => mul_32s_32s_32_2_1_U1_n_24,
      Q => mul_ln18_reg_109(7),
      R => '0'
    );
\mul_ln18_reg_109_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state2,
      D => mul_32s_32s_32_2_1_U1_n_23,
      Q => mul_ln18_reg_109(8),
      R => '0'
    );
\mul_ln18_reg_109_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state2,
      D => mul_32s_32s_32_2_1_U1_n_22,
      Q => mul_ln18_reg_109(9),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    s_axi_HLS_LINEAR_PERIPH_BUS_ARADDR : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_HLS_LINEAR_PERIPH_BUS_ARREADY : out STD_LOGIC;
    s_axi_HLS_LINEAR_PERIPH_BUS_ARVALID : in STD_LOGIC;
    s_axi_HLS_LINEAR_PERIPH_BUS_AWADDR : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_HLS_LINEAR_PERIPH_BUS_AWREADY : out STD_LOGIC;
    s_axi_HLS_LINEAR_PERIPH_BUS_AWVALID : in STD_LOGIC;
    s_axi_HLS_LINEAR_PERIPH_BUS_BREADY : in STD_LOGIC;
    s_axi_HLS_LINEAR_PERIPH_BUS_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_HLS_LINEAR_PERIPH_BUS_BVALID : out STD_LOGIC;
    s_axi_HLS_LINEAR_PERIPH_BUS_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_HLS_LINEAR_PERIPH_BUS_RREADY : in STD_LOGIC;
    s_axi_HLS_LINEAR_PERIPH_BUS_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_HLS_LINEAR_PERIPH_BUS_RVALID : out STD_LOGIC;
    s_axi_HLS_LINEAR_PERIPH_BUS_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_HLS_LINEAR_PERIPH_BUS_WREADY : out STD_LOGIC;
    s_axi_HLS_LINEAR_PERIPH_BUS_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_HLS_LINEAR_PERIPH_BUS_WVALID : in STD_LOGIC;
    ap_clk : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    interrupt : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "design_1_linear_model_0_0,linear_model,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "HLS";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "linear_model,Vivado 2025.1";
  attribute hls_module : string;
  attribute hls_module of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  signal \<const0>\ : STD_LOGIC;
  signal NLW_inst_s_axi_HLS_LINEAR_PERIPH_BUS_BRESP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_s_axi_HLS_LINEAR_PERIPH_BUS_RRESP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute C_S_AXI_DATA_WIDTH : integer;
  attribute C_S_AXI_DATA_WIDTH of inst : label is 32;
  attribute C_S_AXI_HLS_LINEAR_PERIPH_BUS_ADDR_WIDTH : integer;
  attribute C_S_AXI_HLS_LINEAR_PERIPH_BUS_ADDR_WIDTH of inst : label is 6;
  attribute C_S_AXI_HLS_LINEAR_PERIPH_BUS_DATA_WIDTH : integer;
  attribute C_S_AXI_HLS_LINEAR_PERIPH_BUS_DATA_WIDTH of inst : label is 32;
  attribute C_S_AXI_HLS_LINEAR_PERIPH_BUS_WSTRB_WIDTH : integer;
  attribute C_S_AXI_HLS_LINEAR_PERIPH_BUS_WSTRB_WIDTH of inst : label is 4;
  attribute C_S_AXI_WSTRB_WIDTH : integer;
  attribute C_S_AXI_WSTRB_WIDTH of inst : label is 4;
  attribute SDX_KERNEL : string;
  attribute SDX_KERNEL of inst : label is "true";
  attribute SDX_KERNEL_SYNTH_INST : string;
  attribute SDX_KERNEL_SYNTH_INST of inst : label is "inst";
  attribute SDX_KERNEL_TYPE : string;
  attribute SDX_KERNEL_TYPE of inst : label is "hls";
  attribute ap_ST_fsm_state1 : string;
  attribute ap_ST_fsm_state1 of inst : label is "3'b001";
  attribute ap_ST_fsm_state2 : string;
  attribute ap_ST_fsm_state2 of inst : label is "3'b010";
  attribute ap_ST_fsm_state3 : string;
  attribute ap_ST_fsm_state3 of inst : label is "3'b100";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of ap_clk : signal is "xilinx.com:signal:clock:1.0 ap_clk CLK";
  attribute X_INTERFACE_MODE : string;
  attribute X_INTERFACE_MODE of ap_clk : signal is "slave";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of ap_clk : signal is "XIL_INTERFACENAME ap_clk, ASSOCIATED_BUSIF s_axi_HLS_LINEAR_PERIPH_BUS, ASSOCIATED_RESET ap_rst_n, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of ap_rst_n : signal is "xilinx.com:signal:reset:1.0 ap_rst_n RST";
  attribute X_INTERFACE_MODE of ap_rst_n : signal is "slave";
  attribute X_INTERFACE_PARAMETER of ap_rst_n : signal is "XIL_INTERFACENAME ap_rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of interrupt : signal is "xilinx.com:signal:interrupt:1.0 interrupt INTERRUPT";
  attribute X_INTERFACE_MODE of interrupt : signal is "master";
  attribute X_INTERFACE_PARAMETER of interrupt : signal is "XIL_INTERFACENAME interrupt, SENSITIVITY LEVEL_HIGH, PortWidth 1";
  attribute X_INTERFACE_INFO of s_axi_HLS_LINEAR_PERIPH_BUS_ARREADY : signal is "xilinx.com:interface:aximm:1.0 s_axi_HLS_LINEAR_PERIPH_BUS ARREADY";
  attribute X_INTERFACE_INFO of s_axi_HLS_LINEAR_PERIPH_BUS_ARVALID : signal is "xilinx.com:interface:aximm:1.0 s_axi_HLS_LINEAR_PERIPH_BUS ARVALID";
  attribute X_INTERFACE_INFO of s_axi_HLS_LINEAR_PERIPH_BUS_AWREADY : signal is "xilinx.com:interface:aximm:1.0 s_axi_HLS_LINEAR_PERIPH_BUS AWREADY";
  attribute X_INTERFACE_INFO of s_axi_HLS_LINEAR_PERIPH_BUS_AWVALID : signal is "xilinx.com:interface:aximm:1.0 s_axi_HLS_LINEAR_PERIPH_BUS AWVALID";
  attribute X_INTERFACE_INFO of s_axi_HLS_LINEAR_PERIPH_BUS_BREADY : signal is "xilinx.com:interface:aximm:1.0 s_axi_HLS_LINEAR_PERIPH_BUS BREADY";
  attribute X_INTERFACE_INFO of s_axi_HLS_LINEAR_PERIPH_BUS_BVALID : signal is "xilinx.com:interface:aximm:1.0 s_axi_HLS_LINEAR_PERIPH_BUS BVALID";
  attribute X_INTERFACE_INFO of s_axi_HLS_LINEAR_PERIPH_BUS_RREADY : signal is "xilinx.com:interface:aximm:1.0 s_axi_HLS_LINEAR_PERIPH_BUS RREADY";
  attribute X_INTERFACE_INFO of s_axi_HLS_LINEAR_PERIPH_BUS_RVALID : signal is "xilinx.com:interface:aximm:1.0 s_axi_HLS_LINEAR_PERIPH_BUS RVALID";
  attribute X_INTERFACE_INFO of s_axi_HLS_LINEAR_PERIPH_BUS_WREADY : signal is "xilinx.com:interface:aximm:1.0 s_axi_HLS_LINEAR_PERIPH_BUS WREADY";
  attribute X_INTERFACE_INFO of s_axi_HLS_LINEAR_PERIPH_BUS_WVALID : signal is "xilinx.com:interface:aximm:1.0 s_axi_HLS_LINEAR_PERIPH_BUS WVALID";
  attribute X_INTERFACE_INFO of s_axi_HLS_LINEAR_PERIPH_BUS_ARADDR : signal is "xilinx.com:interface:aximm:1.0 s_axi_HLS_LINEAR_PERIPH_BUS ARADDR";
  attribute X_INTERFACE_MODE of s_axi_HLS_LINEAR_PERIPH_BUS_ARADDR : signal is "slave";
  attribute X_INTERFACE_PARAMETER of s_axi_HLS_LINEAR_PERIPH_BUS_ARADDR : signal is "XIL_INTERFACENAME s_axi_HLS_LINEAR_PERIPH_BUS, ADDR_WIDTH 6, DATA_WIDTH 32, PROTOCOL AXI4LITE, READ_WRITE_MODE READ_WRITE, FREQ_HZ 50000000, ID_WIDTH 0, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axi_HLS_LINEAR_PERIPH_BUS_AWADDR : signal is "xilinx.com:interface:aximm:1.0 s_axi_HLS_LINEAR_PERIPH_BUS AWADDR";
  attribute X_INTERFACE_INFO of s_axi_HLS_LINEAR_PERIPH_BUS_BRESP : signal is "xilinx.com:interface:aximm:1.0 s_axi_HLS_LINEAR_PERIPH_BUS BRESP";
  attribute X_INTERFACE_INFO of s_axi_HLS_LINEAR_PERIPH_BUS_RDATA : signal is "xilinx.com:interface:aximm:1.0 s_axi_HLS_LINEAR_PERIPH_BUS RDATA";
  attribute X_INTERFACE_INFO of s_axi_HLS_LINEAR_PERIPH_BUS_RRESP : signal is "xilinx.com:interface:aximm:1.0 s_axi_HLS_LINEAR_PERIPH_BUS RRESP";
  attribute X_INTERFACE_INFO of s_axi_HLS_LINEAR_PERIPH_BUS_WDATA : signal is "xilinx.com:interface:aximm:1.0 s_axi_HLS_LINEAR_PERIPH_BUS WDATA";
  attribute X_INTERFACE_INFO of s_axi_HLS_LINEAR_PERIPH_BUS_WSTRB : signal is "xilinx.com:interface:aximm:1.0 s_axi_HLS_LINEAR_PERIPH_BUS WSTRB";
begin
  s_axi_HLS_LINEAR_PERIPH_BUS_BRESP(1) <= \<const0>\;
  s_axi_HLS_LINEAR_PERIPH_BUS_BRESP(0) <= \<const0>\;
  s_axi_HLS_LINEAR_PERIPH_BUS_RRESP(1) <= \<const0>\;
  s_axi_HLS_LINEAR_PERIPH_BUS_RRESP(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_linear_model
     port map (
      ap_clk => ap_clk,
      ap_rst_n => ap_rst_n,
      interrupt => interrupt,
      s_axi_HLS_LINEAR_PERIPH_BUS_ARADDR(5 downto 0) => s_axi_HLS_LINEAR_PERIPH_BUS_ARADDR(5 downto 0),
      s_axi_HLS_LINEAR_PERIPH_BUS_ARREADY => s_axi_HLS_LINEAR_PERIPH_BUS_ARREADY,
      s_axi_HLS_LINEAR_PERIPH_BUS_ARVALID => s_axi_HLS_LINEAR_PERIPH_BUS_ARVALID,
      s_axi_HLS_LINEAR_PERIPH_BUS_AWADDR(5 downto 2) => s_axi_HLS_LINEAR_PERIPH_BUS_AWADDR(5 downto 2),
      s_axi_HLS_LINEAR_PERIPH_BUS_AWADDR(1 downto 0) => B"00",
      s_axi_HLS_LINEAR_PERIPH_BUS_AWREADY => s_axi_HLS_LINEAR_PERIPH_BUS_AWREADY,
      s_axi_HLS_LINEAR_PERIPH_BUS_AWVALID => s_axi_HLS_LINEAR_PERIPH_BUS_AWVALID,
      s_axi_HLS_LINEAR_PERIPH_BUS_BREADY => s_axi_HLS_LINEAR_PERIPH_BUS_BREADY,
      s_axi_HLS_LINEAR_PERIPH_BUS_BRESP(1 downto 0) => NLW_inst_s_axi_HLS_LINEAR_PERIPH_BUS_BRESP_UNCONNECTED(1 downto 0),
      s_axi_HLS_LINEAR_PERIPH_BUS_BVALID => s_axi_HLS_LINEAR_PERIPH_BUS_BVALID,
      s_axi_HLS_LINEAR_PERIPH_BUS_RDATA(31 downto 0) => s_axi_HLS_LINEAR_PERIPH_BUS_RDATA(31 downto 0),
      s_axi_HLS_LINEAR_PERIPH_BUS_RREADY => s_axi_HLS_LINEAR_PERIPH_BUS_RREADY,
      s_axi_HLS_LINEAR_PERIPH_BUS_RRESP(1 downto 0) => NLW_inst_s_axi_HLS_LINEAR_PERIPH_BUS_RRESP_UNCONNECTED(1 downto 0),
      s_axi_HLS_LINEAR_PERIPH_BUS_RVALID => s_axi_HLS_LINEAR_PERIPH_BUS_RVALID,
      s_axi_HLS_LINEAR_PERIPH_BUS_WDATA(31 downto 0) => s_axi_HLS_LINEAR_PERIPH_BUS_WDATA(31 downto 0),
      s_axi_HLS_LINEAR_PERIPH_BUS_WREADY => s_axi_HLS_LINEAR_PERIPH_BUS_WREADY,
      s_axi_HLS_LINEAR_PERIPH_BUS_WSTRB(3 downto 0) => s_axi_HLS_LINEAR_PERIPH_BUS_WSTRB(3 downto 0),
      s_axi_HLS_LINEAR_PERIPH_BUS_WVALID => s_axi_HLS_LINEAR_PERIPH_BUS_WVALID
    );
end STRUCTURE;
