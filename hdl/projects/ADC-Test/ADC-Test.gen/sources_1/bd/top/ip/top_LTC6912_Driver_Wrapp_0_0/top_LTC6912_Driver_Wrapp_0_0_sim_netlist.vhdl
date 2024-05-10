-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
-- Date        : Thu May  9 19:21:06 2024
-- Host        : tartanauv-ws-1 running 64-bit Ubuntu 20.04.6 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/tartanauv/TAUV-Acoustics/hdl/projects/ADC-Test/ADC-Test.gen/sources_1/bd/top/ip/top_LTC6912_Driver_Wrapp_0_0/top_LTC6912_Driver_Wrapp_0_0_sim_netlist.vhdl
-- Design      : top_LTC6912_Driver_Wrapp_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity top_LTC6912_Driver_Wrapp_0_0_LTC6912_Driver is
  port (
    sck : out STD_LOGIC;
    ready : out STD_LOGIC;
    cs : out STD_LOGIC;
    \state_reg[0]\ : out STD_LOGIC;
    mosi : out STD_LOGIC;
    clk : in STD_LOGIC;
    state : in STD_LOGIC_VECTOR ( 0 to 0 );
    reset_n : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of top_LTC6912_Driver_Wrapp_0_0_LTC6912_Driver : entity is "LTC6912_Driver";
end top_LTC6912_Driver_Wrapp_0_0_LTC6912_Driver;

architecture STRUCTURE of top_LTC6912_Driver_Wrapp_0_0_LTC6912_Driver is
  signal \FSM_onehot_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[2]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[0]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[1]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[2]\ : STD_LOGIC;
  signal \clk_div[0]_i_1_n_0\ : STD_LOGIC;
  signal \clk_div[0]_i_3_n_0\ : STD_LOGIC;
  signal \clk_div[0]_i_4_n_0\ : STD_LOGIC;
  signal clk_div_reg : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \clk_div_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \clk_div_reg[0]_i_2_n_1\ : STD_LOGIC;
  signal \clk_div_reg[0]_i_2_n_2\ : STD_LOGIC;
  signal \clk_div_reg[0]_i_2_n_3\ : STD_LOGIC;
  signal \clk_div_reg[0]_i_2_n_4\ : STD_LOGIC;
  signal \clk_div_reg[0]_i_2_n_5\ : STD_LOGIC;
  signal \clk_div_reg[0]_i_2_n_6\ : STD_LOGIC;
  signal \clk_div_reg[0]_i_2_n_7\ : STD_LOGIC;
  signal \clk_div_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \clk_div_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \clk_div_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \clk_div_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \clk_div_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \clk_div_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \clk_div_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \clk_div_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \clk_div_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \clk_div_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \clk_div_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \^cs\ : STD_LOGIC;
  signal data_ready_ff : STD_LOGIC;
  signal data_ready_ff_i_1_n_0 : STD_LOGIC;
  signal data_reg : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \data_reg[1]_i_1_n_0\ : STD_LOGIC;
  signal \data_reg[2]_i_1_n_0\ : STD_LOGIC;
  signal \data_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \data_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \data_reg[5]_i_1_n_0\ : STD_LOGIC;
  signal \data_reg[6]_i_1_n_0\ : STD_LOGIC;
  signal \data_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \data_reg[7]_i_2_n_0\ : STD_LOGIC;
  signal \data_reg[7]_i_3_n_0\ : STD_LOGIC;
  signal p_2_in : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^sck\ : STD_LOGIC;
  signal sck_1 : STD_LOGIC;
  signal sck_delayed_pulse_i_1_n_0 : STD_LOGIC;
  signal sck_delayed_pulse_reg_n_0 : STD_LOGIC;
  signal sck_i_1_n_0 : STD_LOGIC;
  signal sck_offset_cntr : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal sck_offset_cntr0 : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal \sck_offset_cntr[0]_i_10_n_0\ : STD_LOGIC;
  signal \sck_offset_cntr[0]_i_11_n_0\ : STD_LOGIC;
  signal \sck_offset_cntr[0]_i_2_n_0\ : STD_LOGIC;
  signal \sck_offset_cntr[0]_i_3_n_0\ : STD_LOGIC;
  signal \sck_offset_cntr[0]_i_4_n_0\ : STD_LOGIC;
  signal \sck_offset_cntr[0]_i_5_n_0\ : STD_LOGIC;
  signal \sck_offset_cntr[0]_i_6_n_0\ : STD_LOGIC;
  signal \sck_offset_cntr[0]_i_7_n_0\ : STD_LOGIC;
  signal \sck_offset_cntr[0]_i_8_n_0\ : STD_LOGIC;
  signal \sck_offset_cntr[0]_i_9_n_0\ : STD_LOGIC;
  signal \sck_offset_cntr[10]_i_1_n_0\ : STD_LOGIC;
  signal \sck_offset_cntr[11]_i_1_n_0\ : STD_LOGIC;
  signal \sck_offset_cntr[12]_i_1_n_0\ : STD_LOGIC;
  signal \sck_offset_cntr[13]_i_1_n_0\ : STD_LOGIC;
  signal \sck_offset_cntr[14]_i_1_n_0\ : STD_LOGIC;
  signal \sck_offset_cntr[15]_i_1_n_0\ : STD_LOGIC;
  signal \sck_offset_cntr[16]_i_1_n_0\ : STD_LOGIC;
  signal \sck_offset_cntr[17]_i_1_n_0\ : STD_LOGIC;
  signal \sck_offset_cntr[18]_i_1_n_0\ : STD_LOGIC;
  signal \sck_offset_cntr[19]_i_1_n_0\ : STD_LOGIC;
  signal \sck_offset_cntr[1]_i_1_n_0\ : STD_LOGIC;
  signal \sck_offset_cntr[20]_i_1_n_0\ : STD_LOGIC;
  signal \sck_offset_cntr[21]_i_1_n_0\ : STD_LOGIC;
  signal \sck_offset_cntr[22]_i_1_n_0\ : STD_LOGIC;
  signal \sck_offset_cntr[23]_i_1_n_0\ : STD_LOGIC;
  signal \sck_offset_cntr[24]_i_1_n_0\ : STD_LOGIC;
  signal \sck_offset_cntr[25]_i_1_n_0\ : STD_LOGIC;
  signal \sck_offset_cntr[26]_i_1_n_0\ : STD_LOGIC;
  signal \sck_offset_cntr[27]_i_1_n_0\ : STD_LOGIC;
  signal \sck_offset_cntr[28]_i_1_n_0\ : STD_LOGIC;
  signal \sck_offset_cntr[29]_i_1_n_0\ : STD_LOGIC;
  signal \sck_offset_cntr[2]_i_1_n_0\ : STD_LOGIC;
  signal \sck_offset_cntr[30]_i_1_n_0\ : STD_LOGIC;
  signal \sck_offset_cntr[31]_i_1_n_0\ : STD_LOGIC;
  signal \sck_offset_cntr[3]_i_1_n_0\ : STD_LOGIC;
  signal \sck_offset_cntr[4]_i_1_n_0\ : STD_LOGIC;
  signal \sck_offset_cntr[5]_i_1_n_0\ : STD_LOGIC;
  signal \sck_offset_cntr[6]_i_1_n_0\ : STD_LOGIC;
  signal \sck_offset_cntr[7]_i_1_n_0\ : STD_LOGIC;
  signal \sck_offset_cntr[8]_i_1_n_0\ : STD_LOGIC;
  signal \sck_offset_cntr[9]_i_1_n_0\ : STD_LOGIC;
  signal sck_offset_cntr_0 : STD_LOGIC;
  signal sck_offset_cntr_en : STD_LOGIC;
  signal sck_offset_cntr_en_i_1_n_0 : STD_LOGIC;
  signal sck_offset_cntr_en_reg_n_0 : STD_LOGIC;
  signal \sck_offset_cntr_reg[12]_i_2_n_0\ : STD_LOGIC;
  signal \sck_offset_cntr_reg[12]_i_2_n_1\ : STD_LOGIC;
  signal \sck_offset_cntr_reg[12]_i_2_n_2\ : STD_LOGIC;
  signal \sck_offset_cntr_reg[12]_i_2_n_3\ : STD_LOGIC;
  signal \sck_offset_cntr_reg[16]_i_2_n_0\ : STD_LOGIC;
  signal \sck_offset_cntr_reg[16]_i_2_n_1\ : STD_LOGIC;
  signal \sck_offset_cntr_reg[16]_i_2_n_2\ : STD_LOGIC;
  signal \sck_offset_cntr_reg[16]_i_2_n_3\ : STD_LOGIC;
  signal \sck_offset_cntr_reg[20]_i_2_n_0\ : STD_LOGIC;
  signal \sck_offset_cntr_reg[20]_i_2_n_1\ : STD_LOGIC;
  signal \sck_offset_cntr_reg[20]_i_2_n_2\ : STD_LOGIC;
  signal \sck_offset_cntr_reg[20]_i_2_n_3\ : STD_LOGIC;
  signal \sck_offset_cntr_reg[24]_i_2_n_0\ : STD_LOGIC;
  signal \sck_offset_cntr_reg[24]_i_2_n_1\ : STD_LOGIC;
  signal \sck_offset_cntr_reg[24]_i_2_n_2\ : STD_LOGIC;
  signal \sck_offset_cntr_reg[24]_i_2_n_3\ : STD_LOGIC;
  signal \sck_offset_cntr_reg[28]_i_2_n_0\ : STD_LOGIC;
  signal \sck_offset_cntr_reg[28]_i_2_n_1\ : STD_LOGIC;
  signal \sck_offset_cntr_reg[28]_i_2_n_2\ : STD_LOGIC;
  signal \sck_offset_cntr_reg[28]_i_2_n_3\ : STD_LOGIC;
  signal \sck_offset_cntr_reg[31]_i_2_n_2\ : STD_LOGIC;
  signal \sck_offset_cntr_reg[31]_i_2_n_3\ : STD_LOGIC;
  signal \sck_offset_cntr_reg[4]_i_2_n_0\ : STD_LOGIC;
  signal \sck_offset_cntr_reg[4]_i_2_n_1\ : STD_LOGIC;
  signal \sck_offset_cntr_reg[4]_i_2_n_2\ : STD_LOGIC;
  signal \sck_offset_cntr_reg[4]_i_2_n_3\ : STD_LOGIC;
  signal \sck_offset_cntr_reg[8]_i_2_n_0\ : STD_LOGIC;
  signal \sck_offset_cntr_reg[8]_i_2_n_1\ : STD_LOGIC;
  signal \sck_offset_cntr_reg[8]_i_2_n_2\ : STD_LOGIC;
  signal \sck_offset_cntr_reg[8]_i_2_n_3\ : STD_LOGIC;
  signal shift_cntr : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal shift_cntr0 : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal \shift_cntr0_carry__0_n_0\ : STD_LOGIC;
  signal \shift_cntr0_carry__0_n_1\ : STD_LOGIC;
  signal \shift_cntr0_carry__0_n_2\ : STD_LOGIC;
  signal \shift_cntr0_carry__0_n_3\ : STD_LOGIC;
  signal \shift_cntr0_carry__1_n_0\ : STD_LOGIC;
  signal \shift_cntr0_carry__1_n_1\ : STD_LOGIC;
  signal \shift_cntr0_carry__1_n_2\ : STD_LOGIC;
  signal \shift_cntr0_carry__1_n_3\ : STD_LOGIC;
  signal \shift_cntr0_carry__2_n_0\ : STD_LOGIC;
  signal \shift_cntr0_carry__2_n_1\ : STD_LOGIC;
  signal \shift_cntr0_carry__2_n_2\ : STD_LOGIC;
  signal \shift_cntr0_carry__2_n_3\ : STD_LOGIC;
  signal \shift_cntr0_carry__3_n_0\ : STD_LOGIC;
  signal \shift_cntr0_carry__3_n_1\ : STD_LOGIC;
  signal \shift_cntr0_carry__3_n_2\ : STD_LOGIC;
  signal \shift_cntr0_carry__3_n_3\ : STD_LOGIC;
  signal \shift_cntr0_carry__4_n_0\ : STD_LOGIC;
  signal \shift_cntr0_carry__4_n_1\ : STD_LOGIC;
  signal \shift_cntr0_carry__4_n_2\ : STD_LOGIC;
  signal \shift_cntr0_carry__4_n_3\ : STD_LOGIC;
  signal \shift_cntr0_carry__5_n_0\ : STD_LOGIC;
  signal \shift_cntr0_carry__5_n_1\ : STD_LOGIC;
  signal \shift_cntr0_carry__5_n_2\ : STD_LOGIC;
  signal \shift_cntr0_carry__5_n_3\ : STD_LOGIC;
  signal \shift_cntr0_carry__6_n_2\ : STD_LOGIC;
  signal \shift_cntr0_carry__6_n_3\ : STD_LOGIC;
  signal shift_cntr0_carry_n_0 : STD_LOGIC;
  signal shift_cntr0_carry_n_1 : STD_LOGIC;
  signal shift_cntr0_carry_n_2 : STD_LOGIC;
  signal shift_cntr0_carry_n_3 : STD_LOGIC;
  signal shift_cntr1 : STD_LOGIC;
  signal \shift_cntr[31]_i_1_n_0\ : STD_LOGIC;
  signal shift_done : STD_LOGIC;
  signal \shift_done_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \shift_done_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \shift_done_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \shift_done_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \shift_done_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \shift_done_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \shift_done_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \shift_done_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \shift_done_carry__0_n_0\ : STD_LOGIC;
  signal \shift_done_carry__0_n_1\ : STD_LOGIC;
  signal \shift_done_carry__0_n_2\ : STD_LOGIC;
  signal \shift_done_carry__0_n_3\ : STD_LOGIC;
  signal \shift_done_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \shift_done_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \shift_done_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \shift_done_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \shift_done_carry__1_i_5_n_0\ : STD_LOGIC;
  signal \shift_done_carry__1_i_6_n_0\ : STD_LOGIC;
  signal \shift_done_carry__1_i_7_n_0\ : STD_LOGIC;
  signal \shift_done_carry__1_i_8_n_0\ : STD_LOGIC;
  signal \shift_done_carry__1_n_0\ : STD_LOGIC;
  signal \shift_done_carry__1_n_1\ : STD_LOGIC;
  signal \shift_done_carry__1_n_2\ : STD_LOGIC;
  signal \shift_done_carry__1_n_3\ : STD_LOGIC;
  signal \shift_done_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \shift_done_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \shift_done_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \shift_done_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \shift_done_carry__2_i_5_n_0\ : STD_LOGIC;
  signal \shift_done_carry__2_i_6_n_0\ : STD_LOGIC;
  signal \shift_done_carry__2_n_2\ : STD_LOGIC;
  signal \shift_done_carry__2_n_3\ : STD_LOGIC;
  signal shift_done_carry_i_1_n_0 : STD_LOGIC;
  signal shift_done_carry_i_2_n_0 : STD_LOGIC;
  signal shift_done_carry_i_3_n_0 : STD_LOGIC;
  signal shift_done_carry_i_4_n_0 : STD_LOGIC;
  signal shift_done_carry_i_5_n_0 : STD_LOGIC;
  signal shift_done_carry_i_6_n_0 : STD_LOGIC;
  signal shift_done_carry_i_7_n_0 : STD_LOGIC;
  signal shift_done_carry_i_8_n_0 : STD_LOGIC;
  signal shift_done_carry_n_0 : STD_LOGIC;
  signal shift_done_carry_n_1 : STD_LOGIC;
  signal shift_done_carry_n_2 : STD_LOGIC;
  signal shift_done_carry_n_3 : STD_LOGIC;
  signal \NLW_clk_div_reg[8]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_clk_div_reg[8]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_sck_offset_cntr_reg[31]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_sck_offset_cntr_reg[31]_i_2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_shift_cntr0_carry__6_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_shift_cntr0_carry__6_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_shift_done_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_shift_done_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_shift_done_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_shift_done_carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_shift_done_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_state[0]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \FSM_onehot_state[1]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \FSM_onehot_state[2]_i_1\ : label is "soft_lutpair1";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[0]\ : label is "IDLE:001,SCK_WAIT:010,TXN0:100,";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[1]\ : label is "IDLE:001,SCK_WAIT:010,TXN0:100,";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[2]\ : label is "IDLE:001,SCK_WAIT:010,TXN0:100,";
  attribute SOFT_HLUTNM of data_ready_ff_i_1 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \data_reg[2]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \data_reg[3]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \data_reg[4]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \data_reg[5]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \data_reg[6]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \data_reg[7]_i_3\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of ready_INST_0 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of sck_delayed_pulse_i_1 : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \sck_offset_cntr[10]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \sck_offset_cntr[11]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \sck_offset_cntr[12]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \sck_offset_cntr[13]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \sck_offset_cntr[14]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \sck_offset_cntr[15]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \sck_offset_cntr[16]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \sck_offset_cntr[17]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \sck_offset_cntr[18]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \sck_offset_cntr[19]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \sck_offset_cntr[1]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \sck_offset_cntr[20]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \sck_offset_cntr[21]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \sck_offset_cntr[22]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \sck_offset_cntr[23]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \sck_offset_cntr[24]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \sck_offset_cntr[25]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \sck_offset_cntr[26]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \sck_offset_cntr[27]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \sck_offset_cntr[28]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \sck_offset_cntr[29]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \sck_offset_cntr[2]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \sck_offset_cntr[30]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \sck_offset_cntr[3]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \sck_offset_cntr[4]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \sck_offset_cntr[5]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \sck_offset_cntr[6]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \sck_offset_cntr[7]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \sck_offset_cntr[8]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \sck_offset_cntr[9]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of sck_offset_cntr_en_i_1 : label is "soft_lutpair22";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \sck_offset_cntr_reg[12]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \sck_offset_cntr_reg[16]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \sck_offset_cntr_reg[20]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \sck_offset_cntr_reg[24]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \sck_offset_cntr_reg[28]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \sck_offset_cntr_reg[31]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \sck_offset_cntr_reg[4]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \sck_offset_cntr_reg[8]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of shift_cntr0_carry : label is 35;
  attribute ADDER_THRESHOLD of \shift_cntr0_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \shift_cntr0_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \shift_cntr0_carry__2\ : label is 35;
  attribute ADDER_THRESHOLD of \shift_cntr0_carry__3\ : label is 35;
  attribute ADDER_THRESHOLD of \shift_cntr0_carry__4\ : label is 35;
  attribute ADDER_THRESHOLD of \shift_cntr0_carry__5\ : label is 35;
  attribute ADDER_THRESHOLD of \shift_cntr0_carry__6\ : label is 35;
  attribute SOFT_HLUTNM of \shift_cntr[0]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \shift_cntr[10]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \shift_cntr[11]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \shift_cntr[12]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \shift_cntr[13]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \shift_cntr[14]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \shift_cntr[15]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \shift_cntr[16]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \shift_cntr[17]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \shift_cntr[18]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \shift_cntr[19]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \shift_cntr[1]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \shift_cntr[20]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \shift_cntr[21]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \shift_cntr[22]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \shift_cntr[23]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \shift_cntr[24]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \shift_cntr[25]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \shift_cntr[26]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \shift_cntr[27]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \shift_cntr[28]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \shift_cntr[29]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \shift_cntr[2]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \shift_cntr[30]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \shift_cntr[31]_i_2\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \shift_cntr[3]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \shift_cntr[4]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \shift_cntr[5]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \shift_cntr[6]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \shift_cntr[7]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \shift_cntr[8]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \shift_cntr[9]_i_1\ : label is "soft_lutpair17";
  attribute COMPARATOR_THRESHOLD : integer;
  attribute COMPARATOR_THRESHOLD of shift_done_carry : label is 11;
  attribute COMPARATOR_THRESHOLD of \shift_done_carry__0\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \shift_done_carry__1\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \shift_done_carry__2\ : label is 11;
  attribute SOFT_HLUTNM of \state[0]_i_1\ : label is "soft_lutpair0";
begin
  cs <= \^cs\;
  sck <= \^sck\;
\FSM_onehot_state[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E2FF"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => \FSM_onehot_state[2]_i_2_n_0\,
      I2 => \FSM_onehot_state_reg_n_0_[2]\,
      I3 => reset_n,
      O => \FSM_onehot_state[0]_i_1_n_0\
    );
\FSM_onehot_state[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E200"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => \FSM_onehot_state[2]_i_2_n_0\,
      I2 => \FSM_onehot_state_reg_n_0_[0]\,
      I3 => reset_n,
      O => \FSM_onehot_state[1]_i_1_n_0\
    );
\FSM_onehot_state[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E200"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => \FSM_onehot_state[2]_i_2_n_0\,
      I2 => \FSM_onehot_state_reg_n_0_[1]\,
      I3 => reset_n,
      O => \FSM_onehot_state[2]_i_1_n_0\
    );
\FSM_onehot_state[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF88FF88F8888888"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => data_ready_ff,
      I2 => shift_done,
      I3 => sck_delayed_pulse_reg_n_0,
      I4 => \FSM_onehot_state_reg_n_0_[2]\,
      I5 => \FSM_onehot_state_reg_n_0_[1]\,
      O => \FSM_onehot_state[2]_i_2_n_0\
    );
\FSM_onehot_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_onehot_state[0]_i_1_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[0]\,
      R => '0'
    );
\FSM_onehot_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_onehot_state[1]_i_1_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[1]\,
      R => '0'
    );
\FSM_onehot_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_onehot_state[2]_i_1_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[2]\,
      R => '0'
    );
\clk_div[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00800000FFFFFFFF"
    )
        port map (
      I0 => \clk_div[0]_i_3_n_0\,
      I1 => clk_div_reg(1),
      I2 => clk_div_reg(0),
      I3 => clk_div_reg(3),
      I4 => clk_div_reg(2),
      I5 => reset_n,
      O => \clk_div[0]_i_1_n_0\
    );
\clk_div[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0080000000000000"
    )
        port map (
      I0 => clk_div_reg(6),
      I1 => clk_div_reg(7),
      I2 => clk_div_reg(5),
      I3 => clk_div_reg(4),
      I4 => clk_div_reg(9),
      I5 => clk_div_reg(8),
      O => \clk_div[0]_i_3_n_0\
    );
\clk_div[0]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => clk_div_reg(0),
      O => \clk_div[0]_i_4_n_0\
    );
\clk_div_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \clk_div_reg[0]_i_2_n_7\,
      Q => clk_div_reg(0),
      R => \clk_div[0]_i_1_n_0\
    );
\clk_div_reg[0]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \clk_div_reg[0]_i_2_n_0\,
      CO(2) => \clk_div_reg[0]_i_2_n_1\,
      CO(1) => \clk_div_reg[0]_i_2_n_2\,
      CO(0) => \clk_div_reg[0]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \clk_div_reg[0]_i_2_n_4\,
      O(2) => \clk_div_reg[0]_i_2_n_5\,
      O(1) => \clk_div_reg[0]_i_2_n_6\,
      O(0) => \clk_div_reg[0]_i_2_n_7\,
      S(3 downto 1) => clk_div_reg(3 downto 1),
      S(0) => \clk_div[0]_i_4_n_0\
    );
\clk_div_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \clk_div_reg[0]_i_2_n_6\,
      Q => clk_div_reg(1),
      R => \clk_div[0]_i_1_n_0\
    );
\clk_div_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \clk_div_reg[0]_i_2_n_5\,
      Q => clk_div_reg(2),
      R => \clk_div[0]_i_1_n_0\
    );
\clk_div_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \clk_div_reg[0]_i_2_n_4\,
      Q => clk_div_reg(3),
      R => \clk_div[0]_i_1_n_0\
    );
\clk_div_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \clk_div_reg[4]_i_1_n_7\,
      Q => clk_div_reg(4),
      R => \clk_div[0]_i_1_n_0\
    );
\clk_div_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \clk_div_reg[0]_i_2_n_0\,
      CO(3) => \clk_div_reg[4]_i_1_n_0\,
      CO(2) => \clk_div_reg[4]_i_1_n_1\,
      CO(1) => \clk_div_reg[4]_i_1_n_2\,
      CO(0) => \clk_div_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \clk_div_reg[4]_i_1_n_4\,
      O(2) => \clk_div_reg[4]_i_1_n_5\,
      O(1) => \clk_div_reg[4]_i_1_n_6\,
      O(0) => \clk_div_reg[4]_i_1_n_7\,
      S(3 downto 0) => clk_div_reg(7 downto 4)
    );
\clk_div_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \clk_div_reg[4]_i_1_n_6\,
      Q => clk_div_reg(5),
      R => \clk_div[0]_i_1_n_0\
    );
\clk_div_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \clk_div_reg[4]_i_1_n_5\,
      Q => clk_div_reg(6),
      R => \clk_div[0]_i_1_n_0\
    );
\clk_div_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \clk_div_reg[4]_i_1_n_4\,
      Q => clk_div_reg(7),
      R => \clk_div[0]_i_1_n_0\
    );
\clk_div_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \clk_div_reg[8]_i_1_n_7\,
      Q => clk_div_reg(8),
      R => \clk_div[0]_i_1_n_0\
    );
\clk_div_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \clk_div_reg[4]_i_1_n_0\,
      CO(3 downto 1) => \NLW_clk_div_reg[8]_i_1_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \clk_div_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 2) => \NLW_clk_div_reg[8]_i_1_O_UNCONNECTED\(3 downto 2),
      O(1) => \clk_div_reg[8]_i_1_n_6\,
      O(0) => \clk_div_reg[8]_i_1_n_7\,
      S(3 downto 2) => B"00",
      S(1 downto 0) => clk_div_reg(9 downto 8)
    );
\clk_div_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \clk_div_reg[8]_i_1_n_6\,
      Q => clk_div_reg(9),
      R => \clk_div[0]_i_1_n_0\
    );
cs_INST_0: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EAFFEAAA"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => shift_done,
      I3 => sck_delayed_pulse_reg_n_0,
      I4 => \FSM_onehot_state_reg_n_0_[1]\,
      O => \^cs\
    );
data_ready_ff_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"D8880000"
    )
        port map (
      I0 => data_ready_ff,
      I1 => \^cs\,
      I2 => \FSM_onehot_state_reg_n_0_[0]\,
      I3 => state(0),
      I4 => reset_n,
      O => data_ready_ff_i_1_n_0
    );
data_ready_ff_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => data_ready_ff_i_1_n_0,
      Q => data_ready_ff,
      R => '0'
    );
\data_reg[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => data_ready_ff,
      I1 => \FSM_onehot_state_reg_n_0_[0]\,
      I2 => state(0),
      O => shift_cntr1
    );
\data_reg[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AA2A"
    )
        port map (
      I0 => data_reg(0),
      I1 => state(0),
      I2 => \FSM_onehot_state_reg_n_0_[0]\,
      I3 => data_ready_ff,
      O => \data_reg[1]_i_1_n_0\
    );
\data_reg[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AA2A"
    )
        port map (
      I0 => data_reg(1),
      I1 => state(0),
      I2 => \FSM_onehot_state_reg_n_0_[0]\,
      I3 => data_ready_ff,
      O => \data_reg[2]_i_1_n_0\
    );
\data_reg[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AA2A"
    )
        port map (
      I0 => data_reg(2),
      I1 => state(0),
      I2 => \FSM_onehot_state_reg_n_0_[0]\,
      I3 => data_ready_ff,
      O => \data_reg[3]_i_1_n_0\
    );
\data_reg[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF08"
    )
        port map (
      I0 => state(0),
      I1 => \FSM_onehot_state_reg_n_0_[0]\,
      I2 => data_ready_ff,
      I3 => data_reg(3),
      O => \data_reg[4]_i_1_n_0\
    );
\data_reg[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AA2A"
    )
        port map (
      I0 => data_reg(4),
      I1 => state(0),
      I2 => \FSM_onehot_state_reg_n_0_[0]\,
      I3 => data_ready_ff,
      O => \data_reg[5]_i_1_n_0\
    );
\data_reg[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AA2A"
    )
        port map (
      I0 => data_reg(5),
      I1 => state(0),
      I2 => \FSM_onehot_state_reg_n_0_[0]\,
      I3 => data_ready_ff,
      O => \data_reg[6]_i_1_n_0\
    );
\data_reg[7]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => reset_n,
      O => \data_reg[7]_i_1_n_0\
    );
\data_reg[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"08FF080808080808"
    )
        port map (
      I0 => state(0),
      I1 => \FSM_onehot_state_reg_n_0_[0]\,
      I2 => data_ready_ff,
      I3 => shift_done,
      I4 => sck_delayed_pulse_reg_n_0,
      I5 => \FSM_onehot_state_reg_n_0_[2]\,
      O => \data_reg[7]_i_2_n_0\
    );
\data_reg[7]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AA2A"
    )
        port map (
      I0 => data_reg(6),
      I1 => state(0),
      I2 => \FSM_onehot_state_reg_n_0_[0]\,
      I3 => data_ready_ff,
      O => \data_reg[7]_i_3_n_0\
    );
\data_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_reg[7]_i_2_n_0\,
      D => shift_cntr1,
      Q => data_reg(0),
      R => \data_reg[7]_i_1_n_0\
    );
\data_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_reg[7]_i_2_n_0\,
      D => \data_reg[1]_i_1_n_0\,
      Q => data_reg(1),
      R => \data_reg[7]_i_1_n_0\
    );
\data_reg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_reg[7]_i_2_n_0\,
      D => \data_reg[2]_i_1_n_0\,
      Q => data_reg(2),
      R => \data_reg[7]_i_1_n_0\
    );
\data_reg_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_reg[7]_i_2_n_0\,
      D => \data_reg[3]_i_1_n_0\,
      Q => data_reg(3),
      R => \data_reg[7]_i_1_n_0\
    );
\data_reg_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_reg[7]_i_2_n_0\,
      D => \data_reg[4]_i_1_n_0\,
      Q => data_reg(4),
      R => \data_reg[7]_i_1_n_0\
    );
\data_reg_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_reg[7]_i_2_n_0\,
      D => \data_reg[5]_i_1_n_0\,
      Q => data_reg(5),
      R => \data_reg[7]_i_1_n_0\
    );
\data_reg_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_reg[7]_i_2_n_0\,
      D => \data_reg[6]_i_1_n_0\,
      Q => data_reg(6),
      R => \data_reg[7]_i_1_n_0\
    );
\data_reg_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_reg[7]_i_2_n_0\,
      D => \data_reg[7]_i_3_n_0\,
      Q => mosi,
      R => \data_reg[7]_i_1_n_0\
    );
ready_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => data_ready_ff,
      O => ready
    );
sck_delayed_pulse_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \sck_offset_cntr[0]_i_3_n_0\,
      O => sck_delayed_pulse_i_1_n_0
    );
sck_delayed_pulse_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => sck_delayed_pulse_i_1_n_0,
      Q => sck_delayed_pulse_reg_n_0,
      R => '0'
    );
sck_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"60"
    )
        port map (
      I0 => \^sck\,
      I1 => sck_1,
      I2 => reset_n,
      O => sck_i_1_n_0
    );
sck_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20000000"
    )
        port map (
      I0 => clk_div_reg(2),
      I1 => clk_div_reg(3),
      I2 => clk_div_reg(0),
      I3 => clk_div_reg(1),
      I4 => \clk_div[0]_i_3_n_0\,
      O => sck_1
    );
\sck_offset_cntr[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DF"
    )
        port map (
      I0 => reset_n,
      I1 => sck_offset_cntr_en_reg_n_0,
      I2 => \sck_offset_cntr[0]_i_3_n_0\,
      O => sck_offset_cntr_0
    );
\sck_offset_cntr[0]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFD"
    )
        port map (
      I0 => sck_offset_cntr(6),
      I1 => sck_offset_cntr(7),
      I2 => sck_offset_cntr(9),
      I3 => sck_offset_cntr(8),
      O => \sck_offset_cntr[0]_i_10_n_0\
    );
\sck_offset_cntr[0]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => sck_offset_cntr(15),
      I1 => sck_offset_cntr(14),
      I2 => sck_offset_cntr(17),
      I3 => sck_offset_cntr(16),
      O => \sck_offset_cntr[0]_i_11_n_0\
    );
\sck_offset_cntr[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00FEFFFF0000FF00"
    )
        port map (
      I0 => \sck_offset_cntr[0]_i_4_n_0\,
      I1 => \sck_offset_cntr[0]_i_5_n_0\,
      I2 => \sck_offset_cntr[0]_i_6_n_0\,
      I3 => sck_offset_cntr_en_reg_n_0,
      I4 => sck_offset_cntr(0),
      I5 => reset_n,
      O => \sck_offset_cntr[0]_i_2_n_0\
    );
\sck_offset_cntr[0]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FEFF"
    )
        port map (
      I0 => \sck_offset_cntr[0]_i_4_n_0\,
      I1 => \sck_offset_cntr[0]_i_5_n_0\,
      I2 => \sck_offset_cntr[0]_i_6_n_0\,
      I3 => sck_offset_cntr(0),
      O => \sck_offset_cntr[0]_i_3_n_0\
    );
\sck_offset_cntr[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFEFFFF"
    )
        port map (
      I0 => \sck_offset_cntr[0]_i_7_n_0\,
      I1 => \sck_offset_cntr[0]_i_8_n_0\,
      I2 => sck_offset_cntr(31),
      I3 => sck_offset_cntr(30),
      I4 => sck_offset_cntr(1),
      I5 => \sck_offset_cntr[0]_i_9_n_0\,
      O => \sck_offset_cntr[0]_i_4_n_0\
    );
\sck_offset_cntr[0]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFB"
    )
        port map (
      I0 => sck_offset_cntr(4),
      I1 => sck_offset_cntr(5),
      I2 => sck_offset_cntr(2),
      I3 => sck_offset_cntr(3),
      I4 => \sck_offset_cntr[0]_i_10_n_0\,
      O => \sck_offset_cntr[0]_i_5_n_0\
    );
\sck_offset_cntr[0]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => sck_offset_cntr(12),
      I1 => sck_offset_cntr(13),
      I2 => sck_offset_cntr(10),
      I3 => sck_offset_cntr(11),
      I4 => \sck_offset_cntr[0]_i_11_n_0\,
      O => \sck_offset_cntr[0]_i_6_n_0\
    );
\sck_offset_cntr[0]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => sck_offset_cntr(23),
      I1 => sck_offset_cntr(22),
      I2 => sck_offset_cntr(25),
      I3 => sck_offset_cntr(24),
      O => \sck_offset_cntr[0]_i_7_n_0\
    );
\sck_offset_cntr[0]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => sck_offset_cntr(19),
      I1 => sck_offset_cntr(18),
      I2 => sck_offset_cntr(21),
      I3 => sck_offset_cntr(20),
      O => \sck_offset_cntr[0]_i_8_n_0\
    );
\sck_offset_cntr[0]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => sck_offset_cntr(27),
      I1 => sck_offset_cntr(26),
      I2 => sck_offset_cntr(29),
      I3 => sck_offset_cntr(28),
      O => \sck_offset_cntr[0]_i_9_n_0\
    );
\sck_offset_cntr[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => sck_offset_cntr_en_reg_n_0,
      I1 => \sck_offset_cntr[0]_i_3_n_0\,
      I2 => sck_offset_cntr0(10),
      O => \sck_offset_cntr[10]_i_1_n_0\
    );
\sck_offset_cntr[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => sck_offset_cntr_en_reg_n_0,
      I1 => \sck_offset_cntr[0]_i_3_n_0\,
      I2 => sck_offset_cntr0(11),
      O => \sck_offset_cntr[11]_i_1_n_0\
    );
\sck_offset_cntr[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => sck_offset_cntr_en_reg_n_0,
      I1 => \sck_offset_cntr[0]_i_3_n_0\,
      I2 => sck_offset_cntr0(12),
      O => \sck_offset_cntr[12]_i_1_n_0\
    );
\sck_offset_cntr[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => sck_offset_cntr_en_reg_n_0,
      I1 => \sck_offset_cntr[0]_i_3_n_0\,
      I2 => sck_offset_cntr0(13),
      O => \sck_offset_cntr[13]_i_1_n_0\
    );
\sck_offset_cntr[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => sck_offset_cntr_en_reg_n_0,
      I1 => \sck_offset_cntr[0]_i_3_n_0\,
      I2 => sck_offset_cntr0(14),
      O => \sck_offset_cntr[14]_i_1_n_0\
    );
\sck_offset_cntr[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => sck_offset_cntr_en_reg_n_0,
      I1 => \sck_offset_cntr[0]_i_3_n_0\,
      I2 => sck_offset_cntr0(15),
      O => \sck_offset_cntr[15]_i_1_n_0\
    );
\sck_offset_cntr[16]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => sck_offset_cntr_en_reg_n_0,
      I1 => \sck_offset_cntr[0]_i_3_n_0\,
      I2 => sck_offset_cntr0(16),
      O => \sck_offset_cntr[16]_i_1_n_0\
    );
\sck_offset_cntr[17]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => sck_offset_cntr_en_reg_n_0,
      I1 => \sck_offset_cntr[0]_i_3_n_0\,
      I2 => sck_offset_cntr0(17),
      O => \sck_offset_cntr[17]_i_1_n_0\
    );
\sck_offset_cntr[18]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => sck_offset_cntr_en_reg_n_0,
      I1 => \sck_offset_cntr[0]_i_3_n_0\,
      I2 => sck_offset_cntr0(18),
      O => \sck_offset_cntr[18]_i_1_n_0\
    );
\sck_offset_cntr[19]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => sck_offset_cntr_en_reg_n_0,
      I1 => \sck_offset_cntr[0]_i_3_n_0\,
      I2 => sck_offset_cntr0(19),
      O => \sck_offset_cntr[19]_i_1_n_0\
    );
\sck_offset_cntr[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => sck_offset_cntr_en_reg_n_0,
      I1 => \sck_offset_cntr[0]_i_3_n_0\,
      I2 => sck_offset_cntr0(1),
      O => \sck_offset_cntr[1]_i_1_n_0\
    );
\sck_offset_cntr[20]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => sck_offset_cntr_en_reg_n_0,
      I1 => \sck_offset_cntr[0]_i_3_n_0\,
      I2 => sck_offset_cntr0(20),
      O => \sck_offset_cntr[20]_i_1_n_0\
    );
\sck_offset_cntr[21]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => sck_offset_cntr_en_reg_n_0,
      I1 => \sck_offset_cntr[0]_i_3_n_0\,
      I2 => sck_offset_cntr0(21),
      O => \sck_offset_cntr[21]_i_1_n_0\
    );
\sck_offset_cntr[22]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => sck_offset_cntr_en_reg_n_0,
      I1 => \sck_offset_cntr[0]_i_3_n_0\,
      I2 => sck_offset_cntr0(22),
      O => \sck_offset_cntr[22]_i_1_n_0\
    );
\sck_offset_cntr[23]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => sck_offset_cntr_en_reg_n_0,
      I1 => \sck_offset_cntr[0]_i_3_n_0\,
      I2 => sck_offset_cntr0(23),
      O => \sck_offset_cntr[23]_i_1_n_0\
    );
\sck_offset_cntr[24]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => sck_offset_cntr_en_reg_n_0,
      I1 => \sck_offset_cntr[0]_i_3_n_0\,
      I2 => sck_offset_cntr0(24),
      O => \sck_offset_cntr[24]_i_1_n_0\
    );
\sck_offset_cntr[25]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => sck_offset_cntr_en_reg_n_0,
      I1 => \sck_offset_cntr[0]_i_3_n_0\,
      I2 => sck_offset_cntr0(25),
      O => \sck_offset_cntr[25]_i_1_n_0\
    );
\sck_offset_cntr[26]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => sck_offset_cntr_en_reg_n_0,
      I1 => \sck_offset_cntr[0]_i_3_n_0\,
      I2 => sck_offset_cntr0(26),
      O => \sck_offset_cntr[26]_i_1_n_0\
    );
\sck_offset_cntr[27]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => sck_offset_cntr_en_reg_n_0,
      I1 => \sck_offset_cntr[0]_i_3_n_0\,
      I2 => sck_offset_cntr0(27),
      O => \sck_offset_cntr[27]_i_1_n_0\
    );
\sck_offset_cntr[28]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => sck_offset_cntr_en_reg_n_0,
      I1 => \sck_offset_cntr[0]_i_3_n_0\,
      I2 => sck_offset_cntr0(28),
      O => \sck_offset_cntr[28]_i_1_n_0\
    );
\sck_offset_cntr[29]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => sck_offset_cntr_en_reg_n_0,
      I1 => \sck_offset_cntr[0]_i_3_n_0\,
      I2 => sck_offset_cntr0(29),
      O => \sck_offset_cntr[29]_i_1_n_0\
    );
\sck_offset_cntr[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => sck_offset_cntr_en_reg_n_0,
      I1 => \sck_offset_cntr[0]_i_3_n_0\,
      I2 => sck_offset_cntr0(2),
      O => \sck_offset_cntr[2]_i_1_n_0\
    );
\sck_offset_cntr[30]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => sck_offset_cntr_en_reg_n_0,
      I1 => \sck_offset_cntr[0]_i_3_n_0\,
      I2 => sck_offset_cntr0(30),
      O => \sck_offset_cntr[30]_i_1_n_0\
    );
\sck_offset_cntr[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => sck_offset_cntr_en_reg_n_0,
      I1 => \sck_offset_cntr[0]_i_3_n_0\,
      I2 => sck_offset_cntr0(31),
      O => \sck_offset_cntr[31]_i_1_n_0\
    );
\sck_offset_cntr[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => sck_offset_cntr_en_reg_n_0,
      I1 => \sck_offset_cntr[0]_i_3_n_0\,
      I2 => sck_offset_cntr0(3),
      O => \sck_offset_cntr[3]_i_1_n_0\
    );
\sck_offset_cntr[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => sck_offset_cntr_en_reg_n_0,
      I1 => \sck_offset_cntr[0]_i_3_n_0\,
      I2 => sck_offset_cntr0(4),
      O => \sck_offset_cntr[4]_i_1_n_0\
    );
\sck_offset_cntr[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => sck_offset_cntr_en_reg_n_0,
      I1 => \sck_offset_cntr[0]_i_3_n_0\,
      I2 => sck_offset_cntr0(5),
      O => \sck_offset_cntr[5]_i_1_n_0\
    );
\sck_offset_cntr[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => sck_offset_cntr_en_reg_n_0,
      I1 => \sck_offset_cntr[0]_i_3_n_0\,
      I2 => sck_offset_cntr0(6),
      O => \sck_offset_cntr[6]_i_1_n_0\
    );
\sck_offset_cntr[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => sck_offset_cntr_en_reg_n_0,
      I1 => \sck_offset_cntr[0]_i_3_n_0\,
      I2 => sck_offset_cntr0(7),
      O => \sck_offset_cntr[7]_i_1_n_0\
    );
\sck_offset_cntr[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => sck_offset_cntr_en_reg_n_0,
      I1 => \sck_offset_cntr[0]_i_3_n_0\,
      I2 => sck_offset_cntr0(8),
      O => \sck_offset_cntr[8]_i_1_n_0\
    );
\sck_offset_cntr[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => sck_offset_cntr_en_reg_n_0,
      I1 => \sck_offset_cntr[0]_i_3_n_0\,
      I2 => sck_offset_cntr0(9),
      O => \sck_offset_cntr[9]_i_1_n_0\
    );
sck_offset_cntr_en_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A800"
    )
        port map (
      I0 => reset_n,
      I1 => sck_offset_cntr_en,
      I2 => sck_offset_cntr_en_reg_n_0,
      I3 => \sck_offset_cntr[0]_i_3_n_0\,
      O => sck_offset_cntr_en_i_1_n_0
    );
sck_offset_cntr_en_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000200000000000"
    )
        port map (
      I0 => clk_div_reg(2),
      I1 => clk_div_reg(3),
      I2 => clk_div_reg(1),
      I3 => clk_div_reg(0),
      I4 => \^sck\,
      I5 => \clk_div[0]_i_3_n_0\,
      O => sck_offset_cntr_en
    );
sck_offset_cntr_en_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => sck_offset_cntr_en_i_1_n_0,
      Q => sck_offset_cntr_en_reg_n_0,
      R => '0'
    );
\sck_offset_cntr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => sck_offset_cntr_0,
      D => \sck_offset_cntr[0]_i_2_n_0\,
      Q => sck_offset_cntr(0),
      R => '0'
    );
\sck_offset_cntr_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => sck_offset_cntr_0,
      D => \sck_offset_cntr[10]_i_1_n_0\,
      Q => sck_offset_cntr(10),
      R => '0'
    );
\sck_offset_cntr_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => sck_offset_cntr_0,
      D => \sck_offset_cntr[11]_i_1_n_0\,
      Q => sck_offset_cntr(11),
      R => '0'
    );
\sck_offset_cntr_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => sck_offset_cntr_0,
      D => \sck_offset_cntr[12]_i_1_n_0\,
      Q => sck_offset_cntr(12),
      R => '0'
    );
\sck_offset_cntr_reg[12]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \sck_offset_cntr_reg[8]_i_2_n_0\,
      CO(3) => \sck_offset_cntr_reg[12]_i_2_n_0\,
      CO(2) => \sck_offset_cntr_reg[12]_i_2_n_1\,
      CO(1) => \sck_offset_cntr_reg[12]_i_2_n_2\,
      CO(0) => \sck_offset_cntr_reg[12]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => sck_offset_cntr0(12 downto 9),
      S(3 downto 0) => sck_offset_cntr(12 downto 9)
    );
\sck_offset_cntr_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => sck_offset_cntr_0,
      D => \sck_offset_cntr[13]_i_1_n_0\,
      Q => sck_offset_cntr(13),
      R => '0'
    );
\sck_offset_cntr_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => sck_offset_cntr_0,
      D => \sck_offset_cntr[14]_i_1_n_0\,
      Q => sck_offset_cntr(14),
      R => '0'
    );
\sck_offset_cntr_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => sck_offset_cntr_0,
      D => \sck_offset_cntr[15]_i_1_n_0\,
      Q => sck_offset_cntr(15),
      R => '0'
    );
\sck_offset_cntr_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => sck_offset_cntr_0,
      D => \sck_offset_cntr[16]_i_1_n_0\,
      Q => sck_offset_cntr(16),
      R => '0'
    );
\sck_offset_cntr_reg[16]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \sck_offset_cntr_reg[12]_i_2_n_0\,
      CO(3) => \sck_offset_cntr_reg[16]_i_2_n_0\,
      CO(2) => \sck_offset_cntr_reg[16]_i_2_n_1\,
      CO(1) => \sck_offset_cntr_reg[16]_i_2_n_2\,
      CO(0) => \sck_offset_cntr_reg[16]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => sck_offset_cntr0(16 downto 13),
      S(3 downto 0) => sck_offset_cntr(16 downto 13)
    );
\sck_offset_cntr_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => sck_offset_cntr_0,
      D => \sck_offset_cntr[17]_i_1_n_0\,
      Q => sck_offset_cntr(17),
      R => '0'
    );
\sck_offset_cntr_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => sck_offset_cntr_0,
      D => \sck_offset_cntr[18]_i_1_n_0\,
      Q => sck_offset_cntr(18),
      R => '0'
    );
\sck_offset_cntr_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => sck_offset_cntr_0,
      D => \sck_offset_cntr[19]_i_1_n_0\,
      Q => sck_offset_cntr(19),
      R => '0'
    );
\sck_offset_cntr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => sck_offset_cntr_0,
      D => \sck_offset_cntr[1]_i_1_n_0\,
      Q => sck_offset_cntr(1),
      R => '0'
    );
\sck_offset_cntr_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => sck_offset_cntr_0,
      D => \sck_offset_cntr[20]_i_1_n_0\,
      Q => sck_offset_cntr(20),
      R => '0'
    );
\sck_offset_cntr_reg[20]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \sck_offset_cntr_reg[16]_i_2_n_0\,
      CO(3) => \sck_offset_cntr_reg[20]_i_2_n_0\,
      CO(2) => \sck_offset_cntr_reg[20]_i_2_n_1\,
      CO(1) => \sck_offset_cntr_reg[20]_i_2_n_2\,
      CO(0) => \sck_offset_cntr_reg[20]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => sck_offset_cntr0(20 downto 17),
      S(3 downto 0) => sck_offset_cntr(20 downto 17)
    );
\sck_offset_cntr_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => sck_offset_cntr_0,
      D => \sck_offset_cntr[21]_i_1_n_0\,
      Q => sck_offset_cntr(21),
      R => '0'
    );
\sck_offset_cntr_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => sck_offset_cntr_0,
      D => \sck_offset_cntr[22]_i_1_n_0\,
      Q => sck_offset_cntr(22),
      R => '0'
    );
\sck_offset_cntr_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => sck_offset_cntr_0,
      D => \sck_offset_cntr[23]_i_1_n_0\,
      Q => sck_offset_cntr(23),
      R => '0'
    );
\sck_offset_cntr_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => sck_offset_cntr_0,
      D => \sck_offset_cntr[24]_i_1_n_0\,
      Q => sck_offset_cntr(24),
      R => '0'
    );
\sck_offset_cntr_reg[24]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \sck_offset_cntr_reg[20]_i_2_n_0\,
      CO(3) => \sck_offset_cntr_reg[24]_i_2_n_0\,
      CO(2) => \sck_offset_cntr_reg[24]_i_2_n_1\,
      CO(1) => \sck_offset_cntr_reg[24]_i_2_n_2\,
      CO(0) => \sck_offset_cntr_reg[24]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => sck_offset_cntr0(24 downto 21),
      S(3 downto 0) => sck_offset_cntr(24 downto 21)
    );
\sck_offset_cntr_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => sck_offset_cntr_0,
      D => \sck_offset_cntr[25]_i_1_n_0\,
      Q => sck_offset_cntr(25),
      R => '0'
    );
\sck_offset_cntr_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => sck_offset_cntr_0,
      D => \sck_offset_cntr[26]_i_1_n_0\,
      Q => sck_offset_cntr(26),
      R => '0'
    );
\sck_offset_cntr_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => sck_offset_cntr_0,
      D => \sck_offset_cntr[27]_i_1_n_0\,
      Q => sck_offset_cntr(27),
      R => '0'
    );
\sck_offset_cntr_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => sck_offset_cntr_0,
      D => \sck_offset_cntr[28]_i_1_n_0\,
      Q => sck_offset_cntr(28),
      R => '0'
    );
\sck_offset_cntr_reg[28]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \sck_offset_cntr_reg[24]_i_2_n_0\,
      CO(3) => \sck_offset_cntr_reg[28]_i_2_n_0\,
      CO(2) => \sck_offset_cntr_reg[28]_i_2_n_1\,
      CO(1) => \sck_offset_cntr_reg[28]_i_2_n_2\,
      CO(0) => \sck_offset_cntr_reg[28]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => sck_offset_cntr0(28 downto 25),
      S(3 downto 0) => sck_offset_cntr(28 downto 25)
    );
\sck_offset_cntr_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => sck_offset_cntr_0,
      D => \sck_offset_cntr[29]_i_1_n_0\,
      Q => sck_offset_cntr(29),
      R => '0'
    );
\sck_offset_cntr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => sck_offset_cntr_0,
      D => \sck_offset_cntr[2]_i_1_n_0\,
      Q => sck_offset_cntr(2),
      R => '0'
    );
\sck_offset_cntr_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => sck_offset_cntr_0,
      D => \sck_offset_cntr[30]_i_1_n_0\,
      Q => sck_offset_cntr(30),
      R => '0'
    );
\sck_offset_cntr_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => sck_offset_cntr_0,
      D => \sck_offset_cntr[31]_i_1_n_0\,
      Q => sck_offset_cntr(31),
      R => '0'
    );
\sck_offset_cntr_reg[31]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \sck_offset_cntr_reg[28]_i_2_n_0\,
      CO(3 downto 2) => \NLW_sck_offset_cntr_reg[31]_i_2_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \sck_offset_cntr_reg[31]_i_2_n_2\,
      CO(0) => \sck_offset_cntr_reg[31]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_sck_offset_cntr_reg[31]_i_2_O_UNCONNECTED\(3),
      O(2 downto 0) => sck_offset_cntr0(31 downto 29),
      S(3) => '0',
      S(2 downto 0) => sck_offset_cntr(31 downto 29)
    );
\sck_offset_cntr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => sck_offset_cntr_0,
      D => \sck_offset_cntr[3]_i_1_n_0\,
      Q => sck_offset_cntr(3),
      R => '0'
    );
\sck_offset_cntr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => sck_offset_cntr_0,
      D => \sck_offset_cntr[4]_i_1_n_0\,
      Q => sck_offset_cntr(4),
      R => '0'
    );
\sck_offset_cntr_reg[4]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \sck_offset_cntr_reg[4]_i_2_n_0\,
      CO(2) => \sck_offset_cntr_reg[4]_i_2_n_1\,
      CO(1) => \sck_offset_cntr_reg[4]_i_2_n_2\,
      CO(0) => \sck_offset_cntr_reg[4]_i_2_n_3\,
      CYINIT => sck_offset_cntr(0),
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => sck_offset_cntr0(4 downto 1),
      S(3 downto 0) => sck_offset_cntr(4 downto 1)
    );
\sck_offset_cntr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => sck_offset_cntr_0,
      D => \sck_offset_cntr[5]_i_1_n_0\,
      Q => sck_offset_cntr(5),
      R => '0'
    );
\sck_offset_cntr_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => sck_offset_cntr_0,
      D => \sck_offset_cntr[6]_i_1_n_0\,
      Q => sck_offset_cntr(6),
      R => '0'
    );
\sck_offset_cntr_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => sck_offset_cntr_0,
      D => \sck_offset_cntr[7]_i_1_n_0\,
      Q => sck_offset_cntr(7),
      R => '0'
    );
\sck_offset_cntr_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => sck_offset_cntr_0,
      D => \sck_offset_cntr[8]_i_1_n_0\,
      Q => sck_offset_cntr(8),
      R => '0'
    );
\sck_offset_cntr_reg[8]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \sck_offset_cntr_reg[4]_i_2_n_0\,
      CO(3) => \sck_offset_cntr_reg[8]_i_2_n_0\,
      CO(2) => \sck_offset_cntr_reg[8]_i_2_n_1\,
      CO(1) => \sck_offset_cntr_reg[8]_i_2_n_2\,
      CO(0) => \sck_offset_cntr_reg[8]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => sck_offset_cntr0(8 downto 5),
      S(3 downto 0) => sck_offset_cntr(8 downto 5)
    );
\sck_offset_cntr_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => sck_offset_cntr_0,
      D => \sck_offset_cntr[9]_i_1_n_0\,
      Q => sck_offset_cntr(9),
      R => '0'
    );
sck_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => sck_i_1_n_0,
      Q => \^sck\,
      R => '0'
    );
shift_cntr0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => shift_cntr0_carry_n_0,
      CO(2) => shift_cntr0_carry_n_1,
      CO(1) => shift_cntr0_carry_n_2,
      CO(0) => shift_cntr0_carry_n_3,
      CYINIT => shift_cntr(0),
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => shift_cntr0(4 downto 1),
      S(3 downto 0) => shift_cntr(4 downto 1)
    );
\shift_cntr0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => shift_cntr0_carry_n_0,
      CO(3) => \shift_cntr0_carry__0_n_0\,
      CO(2) => \shift_cntr0_carry__0_n_1\,
      CO(1) => \shift_cntr0_carry__0_n_2\,
      CO(0) => \shift_cntr0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => shift_cntr0(8 downto 5),
      S(3 downto 0) => shift_cntr(8 downto 5)
    );
\shift_cntr0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \shift_cntr0_carry__0_n_0\,
      CO(3) => \shift_cntr0_carry__1_n_0\,
      CO(2) => \shift_cntr0_carry__1_n_1\,
      CO(1) => \shift_cntr0_carry__1_n_2\,
      CO(0) => \shift_cntr0_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => shift_cntr0(12 downto 9),
      S(3 downto 0) => shift_cntr(12 downto 9)
    );
\shift_cntr0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \shift_cntr0_carry__1_n_0\,
      CO(3) => \shift_cntr0_carry__2_n_0\,
      CO(2) => \shift_cntr0_carry__2_n_1\,
      CO(1) => \shift_cntr0_carry__2_n_2\,
      CO(0) => \shift_cntr0_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => shift_cntr0(16 downto 13),
      S(3 downto 0) => shift_cntr(16 downto 13)
    );
\shift_cntr0_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \shift_cntr0_carry__2_n_0\,
      CO(3) => \shift_cntr0_carry__3_n_0\,
      CO(2) => \shift_cntr0_carry__3_n_1\,
      CO(1) => \shift_cntr0_carry__3_n_2\,
      CO(0) => \shift_cntr0_carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => shift_cntr0(20 downto 17),
      S(3 downto 0) => shift_cntr(20 downto 17)
    );
\shift_cntr0_carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \shift_cntr0_carry__3_n_0\,
      CO(3) => \shift_cntr0_carry__4_n_0\,
      CO(2) => \shift_cntr0_carry__4_n_1\,
      CO(1) => \shift_cntr0_carry__4_n_2\,
      CO(0) => \shift_cntr0_carry__4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => shift_cntr0(24 downto 21),
      S(3 downto 0) => shift_cntr(24 downto 21)
    );
\shift_cntr0_carry__5\: unisim.vcomponents.CARRY4
     port map (
      CI => \shift_cntr0_carry__4_n_0\,
      CO(3) => \shift_cntr0_carry__5_n_0\,
      CO(2) => \shift_cntr0_carry__5_n_1\,
      CO(1) => \shift_cntr0_carry__5_n_2\,
      CO(0) => \shift_cntr0_carry__5_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => shift_cntr0(28 downto 25),
      S(3 downto 0) => shift_cntr(28 downto 25)
    );
\shift_cntr0_carry__6\: unisim.vcomponents.CARRY4
     port map (
      CI => \shift_cntr0_carry__5_n_0\,
      CO(3 downto 2) => \NLW_shift_cntr0_carry__6_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \shift_cntr0_carry__6_n_2\,
      CO(0) => \shift_cntr0_carry__6_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_shift_cntr0_carry__6_O_UNCONNECTED\(3),
      O(2 downto 0) => shift_cntr0(31 downto 29),
      S(3) => '0',
      S(2 downto 0) => shift_cntr(31 downto 29)
    );
\shift_cntr[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => shift_cntr(0),
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => shift_done,
      I3 => shift_cntr1,
      O => p_2_in(0)
    );
\shift_cntr[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => shift_cntr0(10),
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => shift_done,
      I3 => shift_cntr1,
      O => p_2_in(10)
    );
\shift_cntr[11]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => shift_cntr0(11),
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => shift_done,
      I3 => shift_cntr1,
      O => p_2_in(11)
    );
\shift_cntr[12]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => shift_cntr0(12),
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => shift_done,
      I3 => shift_cntr1,
      O => p_2_in(12)
    );
\shift_cntr[13]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => shift_cntr0(13),
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => shift_done,
      I3 => shift_cntr1,
      O => p_2_in(13)
    );
\shift_cntr[14]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => shift_cntr0(14),
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => shift_done,
      I3 => shift_cntr1,
      O => p_2_in(14)
    );
\shift_cntr[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => shift_cntr0(15),
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => shift_done,
      I3 => shift_cntr1,
      O => p_2_in(15)
    );
\shift_cntr[16]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => shift_cntr0(16),
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => shift_done,
      I3 => shift_cntr1,
      O => p_2_in(16)
    );
\shift_cntr[17]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => shift_cntr0(17),
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => shift_done,
      I3 => shift_cntr1,
      O => p_2_in(17)
    );
\shift_cntr[18]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => shift_cntr0(18),
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => shift_done,
      I3 => shift_cntr1,
      O => p_2_in(18)
    );
\shift_cntr[19]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => shift_cntr0(19),
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => shift_done,
      I3 => shift_cntr1,
      O => p_2_in(19)
    );
\shift_cntr[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => shift_cntr0(1),
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => shift_done,
      I3 => shift_cntr1,
      O => p_2_in(1)
    );
\shift_cntr[20]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => shift_cntr0(20),
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => shift_done,
      I3 => shift_cntr1,
      O => p_2_in(20)
    );
\shift_cntr[21]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => shift_cntr0(21),
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => shift_done,
      I3 => shift_cntr1,
      O => p_2_in(21)
    );
\shift_cntr[22]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => shift_cntr0(22),
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => shift_done,
      I3 => shift_cntr1,
      O => p_2_in(22)
    );
\shift_cntr[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => shift_cntr0(23),
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => shift_done,
      I3 => shift_cntr1,
      O => p_2_in(23)
    );
\shift_cntr[24]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => shift_cntr0(24),
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => shift_done,
      I3 => shift_cntr1,
      O => p_2_in(24)
    );
\shift_cntr[25]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => shift_cntr0(25),
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => shift_done,
      I3 => shift_cntr1,
      O => p_2_in(25)
    );
\shift_cntr[26]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => shift_cntr0(26),
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => shift_done,
      I3 => shift_cntr1,
      O => p_2_in(26)
    );
\shift_cntr[27]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => shift_cntr0(27),
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => shift_done,
      I3 => shift_cntr1,
      O => p_2_in(27)
    );
\shift_cntr[28]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => shift_cntr0(28),
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => shift_done,
      I3 => shift_cntr1,
      O => p_2_in(28)
    );
\shift_cntr[29]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => shift_cntr0(29),
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => shift_done,
      I3 => shift_cntr1,
      O => p_2_in(29)
    );
\shift_cntr[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => shift_cntr0(2),
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => shift_done,
      I3 => shift_cntr1,
      O => p_2_in(2)
    );
\shift_cntr[30]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => shift_cntr0(30),
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => shift_done,
      I3 => shift_cntr1,
      O => p_2_in(30)
    );
\shift_cntr[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF001000"
    )
        port map (
      I0 => shift_cntr1,
      I1 => shift_done,
      I2 => \FSM_onehot_state_reg_n_0_[2]\,
      I3 => sck_delayed_pulse_reg_n_0,
      I4 => \FSM_onehot_state_reg_n_0_[1]\,
      O => \shift_cntr[31]_i_1_n_0\
    );
\shift_cntr[31]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => shift_cntr0(31),
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => shift_done,
      I3 => shift_cntr1,
      O => p_2_in(31)
    );
\shift_cntr[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => shift_cntr0(3),
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => shift_done,
      I3 => shift_cntr1,
      O => p_2_in(3)
    );
\shift_cntr[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => shift_cntr0(4),
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => shift_done,
      I3 => shift_cntr1,
      O => p_2_in(4)
    );
\shift_cntr[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => shift_cntr0(5),
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => shift_done,
      I3 => shift_cntr1,
      O => p_2_in(5)
    );
\shift_cntr[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => shift_cntr0(6),
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => shift_done,
      I3 => shift_cntr1,
      O => p_2_in(6)
    );
\shift_cntr[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => shift_cntr0(7),
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => shift_done,
      I3 => shift_cntr1,
      O => p_2_in(7)
    );
\shift_cntr[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => shift_cntr0(8),
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => shift_done,
      I3 => shift_cntr1,
      O => p_2_in(8)
    );
\shift_cntr[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => shift_cntr0(9),
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => shift_done,
      I3 => shift_cntr1,
      O => p_2_in(9)
    );
\shift_cntr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \shift_cntr[31]_i_1_n_0\,
      D => p_2_in(0),
      Q => shift_cntr(0),
      R => \data_reg[7]_i_1_n_0\
    );
\shift_cntr_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \shift_cntr[31]_i_1_n_0\,
      D => p_2_in(10),
      Q => shift_cntr(10),
      R => \data_reg[7]_i_1_n_0\
    );
\shift_cntr_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \shift_cntr[31]_i_1_n_0\,
      D => p_2_in(11),
      Q => shift_cntr(11),
      R => \data_reg[7]_i_1_n_0\
    );
\shift_cntr_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \shift_cntr[31]_i_1_n_0\,
      D => p_2_in(12),
      Q => shift_cntr(12),
      R => \data_reg[7]_i_1_n_0\
    );
\shift_cntr_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \shift_cntr[31]_i_1_n_0\,
      D => p_2_in(13),
      Q => shift_cntr(13),
      R => \data_reg[7]_i_1_n_0\
    );
\shift_cntr_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \shift_cntr[31]_i_1_n_0\,
      D => p_2_in(14),
      Q => shift_cntr(14),
      R => \data_reg[7]_i_1_n_0\
    );
\shift_cntr_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \shift_cntr[31]_i_1_n_0\,
      D => p_2_in(15),
      Q => shift_cntr(15),
      R => \data_reg[7]_i_1_n_0\
    );
\shift_cntr_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \shift_cntr[31]_i_1_n_0\,
      D => p_2_in(16),
      Q => shift_cntr(16),
      R => \data_reg[7]_i_1_n_0\
    );
\shift_cntr_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \shift_cntr[31]_i_1_n_0\,
      D => p_2_in(17),
      Q => shift_cntr(17),
      R => \data_reg[7]_i_1_n_0\
    );
\shift_cntr_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \shift_cntr[31]_i_1_n_0\,
      D => p_2_in(18),
      Q => shift_cntr(18),
      R => \data_reg[7]_i_1_n_0\
    );
\shift_cntr_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \shift_cntr[31]_i_1_n_0\,
      D => p_2_in(19),
      Q => shift_cntr(19),
      R => \data_reg[7]_i_1_n_0\
    );
\shift_cntr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \shift_cntr[31]_i_1_n_0\,
      D => p_2_in(1),
      Q => shift_cntr(1),
      R => \data_reg[7]_i_1_n_0\
    );
\shift_cntr_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \shift_cntr[31]_i_1_n_0\,
      D => p_2_in(20),
      Q => shift_cntr(20),
      R => \data_reg[7]_i_1_n_0\
    );
\shift_cntr_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \shift_cntr[31]_i_1_n_0\,
      D => p_2_in(21),
      Q => shift_cntr(21),
      R => \data_reg[7]_i_1_n_0\
    );
\shift_cntr_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \shift_cntr[31]_i_1_n_0\,
      D => p_2_in(22),
      Q => shift_cntr(22),
      R => \data_reg[7]_i_1_n_0\
    );
\shift_cntr_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \shift_cntr[31]_i_1_n_0\,
      D => p_2_in(23),
      Q => shift_cntr(23),
      R => \data_reg[7]_i_1_n_0\
    );
\shift_cntr_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \shift_cntr[31]_i_1_n_0\,
      D => p_2_in(24),
      Q => shift_cntr(24),
      R => \data_reg[7]_i_1_n_0\
    );
\shift_cntr_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \shift_cntr[31]_i_1_n_0\,
      D => p_2_in(25),
      Q => shift_cntr(25),
      R => \data_reg[7]_i_1_n_0\
    );
\shift_cntr_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \shift_cntr[31]_i_1_n_0\,
      D => p_2_in(26),
      Q => shift_cntr(26),
      R => \data_reg[7]_i_1_n_0\
    );
\shift_cntr_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \shift_cntr[31]_i_1_n_0\,
      D => p_2_in(27),
      Q => shift_cntr(27),
      R => \data_reg[7]_i_1_n_0\
    );
\shift_cntr_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \shift_cntr[31]_i_1_n_0\,
      D => p_2_in(28),
      Q => shift_cntr(28),
      R => \data_reg[7]_i_1_n_0\
    );
\shift_cntr_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \shift_cntr[31]_i_1_n_0\,
      D => p_2_in(29),
      Q => shift_cntr(29),
      R => \data_reg[7]_i_1_n_0\
    );
\shift_cntr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \shift_cntr[31]_i_1_n_0\,
      D => p_2_in(2),
      Q => shift_cntr(2),
      R => \data_reg[7]_i_1_n_0\
    );
\shift_cntr_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \shift_cntr[31]_i_1_n_0\,
      D => p_2_in(30),
      Q => shift_cntr(30),
      R => \data_reg[7]_i_1_n_0\
    );
\shift_cntr_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \shift_cntr[31]_i_1_n_0\,
      D => p_2_in(31),
      Q => shift_cntr(31),
      R => \data_reg[7]_i_1_n_0\
    );
\shift_cntr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \shift_cntr[31]_i_1_n_0\,
      D => p_2_in(3),
      Q => shift_cntr(3),
      R => \data_reg[7]_i_1_n_0\
    );
\shift_cntr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \shift_cntr[31]_i_1_n_0\,
      D => p_2_in(4),
      Q => shift_cntr(4),
      R => \data_reg[7]_i_1_n_0\
    );
\shift_cntr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \shift_cntr[31]_i_1_n_0\,
      D => p_2_in(5),
      Q => shift_cntr(5),
      R => \data_reg[7]_i_1_n_0\
    );
\shift_cntr_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \shift_cntr[31]_i_1_n_0\,
      D => p_2_in(6),
      Q => shift_cntr(6),
      R => \data_reg[7]_i_1_n_0\
    );
\shift_cntr_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \shift_cntr[31]_i_1_n_0\,
      D => p_2_in(7),
      Q => shift_cntr(7),
      R => \data_reg[7]_i_1_n_0\
    );
\shift_cntr_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \shift_cntr[31]_i_1_n_0\,
      D => p_2_in(8),
      Q => shift_cntr(8),
      R => \data_reg[7]_i_1_n_0\
    );
\shift_cntr_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \shift_cntr[31]_i_1_n_0\,
      D => p_2_in(9),
      Q => shift_cntr(9),
      R => \data_reg[7]_i_1_n_0\
    );
shift_done_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => shift_done_carry_n_0,
      CO(2) => shift_done_carry_n_1,
      CO(1) => shift_done_carry_n_2,
      CO(0) => shift_done_carry_n_3,
      CYINIT => shift_done_carry_i_1_n_0,
      DI(3) => shift_done_carry_i_2_n_0,
      DI(2) => shift_done_carry_i_3_n_0,
      DI(1) => shift_done_carry_i_4_n_0,
      DI(0) => shift_cntr(3),
      O(3 downto 0) => NLW_shift_done_carry_O_UNCONNECTED(3 downto 0),
      S(3) => shift_done_carry_i_5_n_0,
      S(2) => shift_done_carry_i_6_n_0,
      S(1) => shift_done_carry_i_7_n_0,
      S(0) => shift_done_carry_i_8_n_0
    );
\shift_done_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => shift_done_carry_n_0,
      CO(3) => \shift_done_carry__0_n_0\,
      CO(2) => \shift_done_carry__0_n_1\,
      CO(1) => \shift_done_carry__0_n_2\,
      CO(0) => \shift_done_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \shift_done_carry__0_i_1_n_0\,
      DI(2) => \shift_done_carry__0_i_2_n_0\,
      DI(1) => \shift_done_carry__0_i_3_n_0\,
      DI(0) => \shift_done_carry__0_i_4_n_0\,
      O(3 downto 0) => \NLW_shift_done_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \shift_done_carry__0_i_5_n_0\,
      S(2) => \shift_done_carry__0_i_6_n_0\,
      S(1) => \shift_done_carry__0_i_7_n_0\,
      S(0) => \shift_done_carry__0_i_8_n_0\
    );
\shift_done_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => shift_cntr(16),
      I1 => shift_cntr(17),
      O => \shift_done_carry__0_i_1_n_0\
    );
\shift_done_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => shift_cntr(14),
      I1 => shift_cntr(15),
      O => \shift_done_carry__0_i_2_n_0\
    );
\shift_done_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => shift_cntr(12),
      I1 => shift_cntr(13),
      O => \shift_done_carry__0_i_3_n_0\
    );
\shift_done_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => shift_cntr(10),
      I1 => shift_cntr(11),
      O => \shift_done_carry__0_i_4_n_0\
    );
\shift_done_carry__0_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => shift_cntr(16),
      I1 => shift_cntr(17),
      O => \shift_done_carry__0_i_5_n_0\
    );
\shift_done_carry__0_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => shift_cntr(14),
      I1 => shift_cntr(15),
      O => \shift_done_carry__0_i_6_n_0\
    );
\shift_done_carry__0_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => shift_cntr(12),
      I1 => shift_cntr(13),
      O => \shift_done_carry__0_i_7_n_0\
    );
\shift_done_carry__0_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => shift_cntr(10),
      I1 => shift_cntr(11),
      O => \shift_done_carry__0_i_8_n_0\
    );
\shift_done_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \shift_done_carry__0_n_0\,
      CO(3) => \shift_done_carry__1_n_0\,
      CO(2) => \shift_done_carry__1_n_1\,
      CO(1) => \shift_done_carry__1_n_2\,
      CO(0) => \shift_done_carry__1_n_3\,
      CYINIT => '0',
      DI(3) => \shift_done_carry__1_i_1_n_0\,
      DI(2) => \shift_done_carry__1_i_2_n_0\,
      DI(1) => \shift_done_carry__1_i_3_n_0\,
      DI(0) => \shift_done_carry__1_i_4_n_0\,
      O(3 downto 0) => \NLW_shift_done_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => \shift_done_carry__1_i_5_n_0\,
      S(2) => \shift_done_carry__1_i_6_n_0\,
      S(1) => \shift_done_carry__1_i_7_n_0\,
      S(0) => \shift_done_carry__1_i_8_n_0\
    );
\shift_done_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => shift_cntr(24),
      I1 => shift_cntr(25),
      O => \shift_done_carry__1_i_1_n_0\
    );
\shift_done_carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => shift_cntr(22),
      I1 => shift_cntr(23),
      O => \shift_done_carry__1_i_2_n_0\
    );
\shift_done_carry__1_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => shift_cntr(20),
      I1 => shift_cntr(21),
      O => \shift_done_carry__1_i_3_n_0\
    );
\shift_done_carry__1_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => shift_cntr(18),
      I1 => shift_cntr(19),
      O => \shift_done_carry__1_i_4_n_0\
    );
\shift_done_carry__1_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => shift_cntr(24),
      I1 => shift_cntr(25),
      O => \shift_done_carry__1_i_5_n_0\
    );
\shift_done_carry__1_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => shift_cntr(22),
      I1 => shift_cntr(23),
      O => \shift_done_carry__1_i_6_n_0\
    );
\shift_done_carry__1_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => shift_cntr(20),
      I1 => shift_cntr(21),
      O => \shift_done_carry__1_i_7_n_0\
    );
\shift_done_carry__1_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => shift_cntr(18),
      I1 => shift_cntr(19),
      O => \shift_done_carry__1_i_8_n_0\
    );
\shift_done_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \shift_done_carry__1_n_0\,
      CO(3) => \NLW_shift_done_carry__2_CO_UNCONNECTED\(3),
      CO(2) => shift_done,
      CO(1) => \shift_done_carry__2_n_2\,
      CO(0) => \shift_done_carry__2_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \shift_done_carry__2_i_1_n_0\,
      DI(1) => \shift_done_carry__2_i_2_n_0\,
      DI(0) => \shift_done_carry__2_i_3_n_0\,
      O(3 downto 0) => \NLW_shift_done_carry__2_O_UNCONNECTED\(3 downto 0),
      S(3) => '0',
      S(2) => \shift_done_carry__2_i_4_n_0\,
      S(1) => \shift_done_carry__2_i_5_n_0\,
      S(0) => \shift_done_carry__2_i_6_n_0\
    );
\shift_done_carry__2_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => shift_cntr(30),
      I1 => shift_cntr(31),
      O => \shift_done_carry__2_i_1_n_0\
    );
\shift_done_carry__2_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => shift_cntr(28),
      I1 => shift_cntr(29),
      O => \shift_done_carry__2_i_2_n_0\
    );
\shift_done_carry__2_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => shift_cntr(26),
      I1 => shift_cntr(27),
      O => \shift_done_carry__2_i_3_n_0\
    );
\shift_done_carry__2_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => shift_cntr(30),
      I1 => shift_cntr(31),
      O => \shift_done_carry__2_i_4_n_0\
    );
\shift_done_carry__2_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => shift_cntr(28),
      I1 => shift_cntr(29),
      O => \shift_done_carry__2_i_5_n_0\
    );
\shift_done_carry__2_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => shift_cntr(26),
      I1 => shift_cntr(27),
      O => \shift_done_carry__2_i_6_n_0\
    );
shift_done_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => shift_cntr(0),
      I1 => shift_cntr(1),
      O => shift_done_carry_i_1_n_0
    );
shift_done_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => shift_cntr(8),
      I1 => shift_cntr(9),
      O => shift_done_carry_i_2_n_0
    );
shift_done_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => shift_cntr(6),
      I1 => shift_cntr(7),
      O => shift_done_carry_i_3_n_0
    );
shift_done_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => shift_cntr(4),
      I1 => shift_cntr(5),
      O => shift_done_carry_i_4_n_0
    );
shift_done_carry_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => shift_cntr(8),
      I1 => shift_cntr(9),
      O => shift_done_carry_i_5_n_0
    );
shift_done_carry_i_6: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => shift_cntr(6),
      I1 => shift_cntr(7),
      O => shift_done_carry_i_6_n_0
    );
shift_done_carry_i_7: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => shift_cntr(4),
      I1 => shift_cntr(5),
      O => shift_done_carry_i_7_n_0
    );
shift_done_carry_i_8: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => shift_cntr(2),
      I1 => shift_cntr(3),
      O => shift_done_carry_i_8_n_0
    );
\state[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0400"
    )
        port map (
      I0 => state(0),
      I1 => \FSM_onehot_state_reg_n_0_[0]\,
      I2 => data_ready_ff,
      I3 => reset_n,
      O => \state_reg[0]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity top_LTC6912_Driver_Wrapp_0_0_LTC6912_Driver_Wrapper is
  port (
    ready : out STD_LOGIC;
    mosi : out STD_LOGIC;
    cs : out STD_LOGIC;
    sck : out STD_LOGIC;
    reset_n : in STD_LOGIC;
    clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of top_LTC6912_Driver_Wrapp_0_0_LTC6912_Driver_Wrapper : entity is "LTC6912_Driver_Wrapper";
end top_LTC6912_Driver_Wrapp_0_0_LTC6912_Driver_Wrapper;

architecture STRUCTURE of top_LTC6912_Driver_Wrapp_0_0_LTC6912_Driver_Wrapper is
  signal driver_n_3 : STD_LOGIC;
  signal state : STD_LOGIC_VECTOR ( 0 to 0 );
begin
driver: entity work.top_LTC6912_Driver_Wrapp_0_0_LTC6912_Driver
     port map (
      clk => clk,
      cs => cs,
      mosi => mosi,
      ready => ready,
      reset_n => reset_n,
      sck => sck,
      state(0) => state(0),
      \state_reg[0]\ => driver_n_3
    );
\state_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => driver_n_3,
      Q => state(0),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity top_LTC6912_Driver_Wrapp_0_0 is
  port (
    reset_n : in STD_LOGIC;
    clk : in STD_LOGIC;
    ready : out STD_LOGIC;
    mosi : out STD_LOGIC;
    sck : out STD_LOGIC;
    cs : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of top_LTC6912_Driver_Wrapp_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of top_LTC6912_Driver_Wrapp_0_0 : entity is "top_LTC6912_Driver_Wrapp_0_0,LTC6912_Driver_Wrapper,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of top_LTC6912_Driver_Wrapp_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of top_LTC6912_Driver_Wrapp_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of top_LTC6912_Driver_Wrapp_0_0 : entity is "LTC6912_Driver_Wrapper,Vivado 2023.2";
end top_LTC6912_Driver_Wrapp_0_0;

architecture STRUCTURE of top_LTC6912_Driver_Wrapp_0_0 is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, FREQ_HZ 10000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of reset_n : signal is "xilinx.com:signal:reset:1.0 reset_n RST";
  attribute X_INTERFACE_PARAMETER of reset_n : signal is "XIL_INTERFACENAME reset_n, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
inst: entity work.top_LTC6912_Driver_Wrapp_0_0_LTC6912_Driver_Wrapper
     port map (
      clk => clk,
      cs => cs,
      mosi => mosi,
      ready => ready,
      reset_n => reset_n,
      sck => sck
    );
end STRUCTURE;
