// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
// Date        : Thu May  9 19:21:06 2024
// Host        : tartanauv-ws-1 running 64-bit Ubuntu 20.04.6 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/tartanauv/TAUV-Acoustics/hdl/projects/ADC-Test/ADC-Test.gen/sources_1/bd/top/ip/top_LTC6912_Driver_Wrapp_0_0/top_LTC6912_Driver_Wrapp_0_0_sim_netlist.v
// Design      : top_LTC6912_Driver_Wrapp_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "top_LTC6912_Driver_Wrapp_0_0,LTC6912_Driver_Wrapper,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "LTC6912_Driver_Wrapper,Vivado 2023.2" *) 
(* NotValidForBitStream *)
module top_LTC6912_Driver_Wrapp_0_0
   (reset_n,
    clk,
    ready,
    mosi,
    sck,
    cs);
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 reset_n RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME reset_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input reset_n;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, FREQ_HZ 10000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0" *) input clk;
  output ready;
  output mosi;
  output sck;
  output cs;

  wire clk;
  wire cs;
  wire mosi;
  wire ready;
  wire reset_n;
  wire sck;

  top_LTC6912_Driver_Wrapp_0_0_LTC6912_Driver_Wrapper inst
       (.clk(clk),
        .cs(cs),
        .mosi(mosi),
        .ready(ready),
        .reset_n(reset_n),
        .sck(sck));
endmodule

(* ORIG_REF_NAME = "LTC6912_Driver" *) 
module top_LTC6912_Driver_Wrapp_0_0_LTC6912_Driver
   (sck,
    ready,
    cs,
    \state_reg[0] ,
    mosi,
    clk,
    state,
    reset_n);
  output sck;
  output ready;
  output cs;
  output \state_reg[0] ;
  output mosi;
  input clk;
  input [0:0]state;
  input reset_n;

  wire \FSM_onehot_state[0]_i_1_n_0 ;
  wire \FSM_onehot_state[1]_i_1_n_0 ;
  wire \FSM_onehot_state[2]_i_1_n_0 ;
  wire \FSM_onehot_state[2]_i_2_n_0 ;
  wire \FSM_onehot_state_reg_n_0_[0] ;
  wire \FSM_onehot_state_reg_n_0_[1] ;
  wire \FSM_onehot_state_reg_n_0_[2] ;
  wire clk;
  wire \clk_div[0]_i_1_n_0 ;
  wire \clk_div[0]_i_3_n_0 ;
  wire \clk_div[0]_i_4_n_0 ;
  wire [9:0]clk_div_reg;
  wire \clk_div_reg[0]_i_2_n_0 ;
  wire \clk_div_reg[0]_i_2_n_1 ;
  wire \clk_div_reg[0]_i_2_n_2 ;
  wire \clk_div_reg[0]_i_2_n_3 ;
  wire \clk_div_reg[0]_i_2_n_4 ;
  wire \clk_div_reg[0]_i_2_n_5 ;
  wire \clk_div_reg[0]_i_2_n_6 ;
  wire \clk_div_reg[0]_i_2_n_7 ;
  wire \clk_div_reg[4]_i_1_n_0 ;
  wire \clk_div_reg[4]_i_1_n_1 ;
  wire \clk_div_reg[4]_i_1_n_2 ;
  wire \clk_div_reg[4]_i_1_n_3 ;
  wire \clk_div_reg[4]_i_1_n_4 ;
  wire \clk_div_reg[4]_i_1_n_5 ;
  wire \clk_div_reg[4]_i_1_n_6 ;
  wire \clk_div_reg[4]_i_1_n_7 ;
  wire \clk_div_reg[8]_i_1_n_3 ;
  wire \clk_div_reg[8]_i_1_n_6 ;
  wire \clk_div_reg[8]_i_1_n_7 ;
  wire cs;
  wire data_ready_ff;
  wire data_ready_ff_i_1_n_0;
  wire [6:0]data_reg;
  wire \data_reg[1]_i_1_n_0 ;
  wire \data_reg[2]_i_1_n_0 ;
  wire \data_reg[3]_i_1_n_0 ;
  wire \data_reg[4]_i_1_n_0 ;
  wire \data_reg[5]_i_1_n_0 ;
  wire \data_reg[6]_i_1_n_0 ;
  wire \data_reg[7]_i_1_n_0 ;
  wire \data_reg[7]_i_2_n_0 ;
  wire \data_reg[7]_i_3_n_0 ;
  wire mosi;
  wire [31:0]p_2_in;
  wire ready;
  wire reset_n;
  wire sck;
  wire sck_1;
  wire sck_delayed_pulse_i_1_n_0;
  wire sck_delayed_pulse_reg_n_0;
  wire sck_i_1_n_0;
  wire [31:0]sck_offset_cntr;
  wire [31:1]sck_offset_cntr0;
  wire \sck_offset_cntr[0]_i_10_n_0 ;
  wire \sck_offset_cntr[0]_i_11_n_0 ;
  wire \sck_offset_cntr[0]_i_2_n_0 ;
  wire \sck_offset_cntr[0]_i_3_n_0 ;
  wire \sck_offset_cntr[0]_i_4_n_0 ;
  wire \sck_offset_cntr[0]_i_5_n_0 ;
  wire \sck_offset_cntr[0]_i_6_n_0 ;
  wire \sck_offset_cntr[0]_i_7_n_0 ;
  wire \sck_offset_cntr[0]_i_8_n_0 ;
  wire \sck_offset_cntr[0]_i_9_n_0 ;
  wire \sck_offset_cntr[10]_i_1_n_0 ;
  wire \sck_offset_cntr[11]_i_1_n_0 ;
  wire \sck_offset_cntr[12]_i_1_n_0 ;
  wire \sck_offset_cntr[13]_i_1_n_0 ;
  wire \sck_offset_cntr[14]_i_1_n_0 ;
  wire \sck_offset_cntr[15]_i_1_n_0 ;
  wire \sck_offset_cntr[16]_i_1_n_0 ;
  wire \sck_offset_cntr[17]_i_1_n_0 ;
  wire \sck_offset_cntr[18]_i_1_n_0 ;
  wire \sck_offset_cntr[19]_i_1_n_0 ;
  wire \sck_offset_cntr[1]_i_1_n_0 ;
  wire \sck_offset_cntr[20]_i_1_n_0 ;
  wire \sck_offset_cntr[21]_i_1_n_0 ;
  wire \sck_offset_cntr[22]_i_1_n_0 ;
  wire \sck_offset_cntr[23]_i_1_n_0 ;
  wire \sck_offset_cntr[24]_i_1_n_0 ;
  wire \sck_offset_cntr[25]_i_1_n_0 ;
  wire \sck_offset_cntr[26]_i_1_n_0 ;
  wire \sck_offset_cntr[27]_i_1_n_0 ;
  wire \sck_offset_cntr[28]_i_1_n_0 ;
  wire \sck_offset_cntr[29]_i_1_n_0 ;
  wire \sck_offset_cntr[2]_i_1_n_0 ;
  wire \sck_offset_cntr[30]_i_1_n_0 ;
  wire \sck_offset_cntr[31]_i_1_n_0 ;
  wire \sck_offset_cntr[3]_i_1_n_0 ;
  wire \sck_offset_cntr[4]_i_1_n_0 ;
  wire \sck_offset_cntr[5]_i_1_n_0 ;
  wire \sck_offset_cntr[6]_i_1_n_0 ;
  wire \sck_offset_cntr[7]_i_1_n_0 ;
  wire \sck_offset_cntr[8]_i_1_n_0 ;
  wire \sck_offset_cntr[9]_i_1_n_0 ;
  wire sck_offset_cntr_0;
  wire sck_offset_cntr_en;
  wire sck_offset_cntr_en_i_1_n_0;
  wire sck_offset_cntr_en_reg_n_0;
  wire \sck_offset_cntr_reg[12]_i_2_n_0 ;
  wire \sck_offset_cntr_reg[12]_i_2_n_1 ;
  wire \sck_offset_cntr_reg[12]_i_2_n_2 ;
  wire \sck_offset_cntr_reg[12]_i_2_n_3 ;
  wire \sck_offset_cntr_reg[16]_i_2_n_0 ;
  wire \sck_offset_cntr_reg[16]_i_2_n_1 ;
  wire \sck_offset_cntr_reg[16]_i_2_n_2 ;
  wire \sck_offset_cntr_reg[16]_i_2_n_3 ;
  wire \sck_offset_cntr_reg[20]_i_2_n_0 ;
  wire \sck_offset_cntr_reg[20]_i_2_n_1 ;
  wire \sck_offset_cntr_reg[20]_i_2_n_2 ;
  wire \sck_offset_cntr_reg[20]_i_2_n_3 ;
  wire \sck_offset_cntr_reg[24]_i_2_n_0 ;
  wire \sck_offset_cntr_reg[24]_i_2_n_1 ;
  wire \sck_offset_cntr_reg[24]_i_2_n_2 ;
  wire \sck_offset_cntr_reg[24]_i_2_n_3 ;
  wire \sck_offset_cntr_reg[28]_i_2_n_0 ;
  wire \sck_offset_cntr_reg[28]_i_2_n_1 ;
  wire \sck_offset_cntr_reg[28]_i_2_n_2 ;
  wire \sck_offset_cntr_reg[28]_i_2_n_3 ;
  wire \sck_offset_cntr_reg[31]_i_2_n_2 ;
  wire \sck_offset_cntr_reg[31]_i_2_n_3 ;
  wire \sck_offset_cntr_reg[4]_i_2_n_0 ;
  wire \sck_offset_cntr_reg[4]_i_2_n_1 ;
  wire \sck_offset_cntr_reg[4]_i_2_n_2 ;
  wire \sck_offset_cntr_reg[4]_i_2_n_3 ;
  wire \sck_offset_cntr_reg[8]_i_2_n_0 ;
  wire \sck_offset_cntr_reg[8]_i_2_n_1 ;
  wire \sck_offset_cntr_reg[8]_i_2_n_2 ;
  wire \sck_offset_cntr_reg[8]_i_2_n_3 ;
  wire [31:0]shift_cntr;
  wire [31:1]shift_cntr0;
  wire shift_cntr0_carry__0_n_0;
  wire shift_cntr0_carry__0_n_1;
  wire shift_cntr0_carry__0_n_2;
  wire shift_cntr0_carry__0_n_3;
  wire shift_cntr0_carry__1_n_0;
  wire shift_cntr0_carry__1_n_1;
  wire shift_cntr0_carry__1_n_2;
  wire shift_cntr0_carry__1_n_3;
  wire shift_cntr0_carry__2_n_0;
  wire shift_cntr0_carry__2_n_1;
  wire shift_cntr0_carry__2_n_2;
  wire shift_cntr0_carry__2_n_3;
  wire shift_cntr0_carry__3_n_0;
  wire shift_cntr0_carry__3_n_1;
  wire shift_cntr0_carry__3_n_2;
  wire shift_cntr0_carry__3_n_3;
  wire shift_cntr0_carry__4_n_0;
  wire shift_cntr0_carry__4_n_1;
  wire shift_cntr0_carry__4_n_2;
  wire shift_cntr0_carry__4_n_3;
  wire shift_cntr0_carry__5_n_0;
  wire shift_cntr0_carry__5_n_1;
  wire shift_cntr0_carry__5_n_2;
  wire shift_cntr0_carry__5_n_3;
  wire shift_cntr0_carry__6_n_2;
  wire shift_cntr0_carry__6_n_3;
  wire shift_cntr0_carry_n_0;
  wire shift_cntr0_carry_n_1;
  wire shift_cntr0_carry_n_2;
  wire shift_cntr0_carry_n_3;
  wire shift_cntr1;
  wire \shift_cntr[31]_i_1_n_0 ;
  wire shift_done;
  wire shift_done_carry__0_i_1_n_0;
  wire shift_done_carry__0_i_2_n_0;
  wire shift_done_carry__0_i_3_n_0;
  wire shift_done_carry__0_i_4_n_0;
  wire shift_done_carry__0_i_5_n_0;
  wire shift_done_carry__0_i_6_n_0;
  wire shift_done_carry__0_i_7_n_0;
  wire shift_done_carry__0_i_8_n_0;
  wire shift_done_carry__0_n_0;
  wire shift_done_carry__0_n_1;
  wire shift_done_carry__0_n_2;
  wire shift_done_carry__0_n_3;
  wire shift_done_carry__1_i_1_n_0;
  wire shift_done_carry__1_i_2_n_0;
  wire shift_done_carry__1_i_3_n_0;
  wire shift_done_carry__1_i_4_n_0;
  wire shift_done_carry__1_i_5_n_0;
  wire shift_done_carry__1_i_6_n_0;
  wire shift_done_carry__1_i_7_n_0;
  wire shift_done_carry__1_i_8_n_0;
  wire shift_done_carry__1_n_0;
  wire shift_done_carry__1_n_1;
  wire shift_done_carry__1_n_2;
  wire shift_done_carry__1_n_3;
  wire shift_done_carry__2_i_1_n_0;
  wire shift_done_carry__2_i_2_n_0;
  wire shift_done_carry__2_i_3_n_0;
  wire shift_done_carry__2_i_4_n_0;
  wire shift_done_carry__2_i_5_n_0;
  wire shift_done_carry__2_i_6_n_0;
  wire shift_done_carry__2_n_2;
  wire shift_done_carry__2_n_3;
  wire shift_done_carry_i_1_n_0;
  wire shift_done_carry_i_2_n_0;
  wire shift_done_carry_i_3_n_0;
  wire shift_done_carry_i_4_n_0;
  wire shift_done_carry_i_5_n_0;
  wire shift_done_carry_i_6_n_0;
  wire shift_done_carry_i_7_n_0;
  wire shift_done_carry_i_8_n_0;
  wire shift_done_carry_n_0;
  wire shift_done_carry_n_1;
  wire shift_done_carry_n_2;
  wire shift_done_carry_n_3;
  wire [0:0]state;
  wire \state_reg[0] ;
  wire [3:1]\NLW_clk_div_reg[8]_i_1_CO_UNCONNECTED ;
  wire [3:2]\NLW_clk_div_reg[8]_i_1_O_UNCONNECTED ;
  wire [3:2]\NLW_sck_offset_cntr_reg[31]_i_2_CO_UNCONNECTED ;
  wire [3:3]\NLW_sck_offset_cntr_reg[31]_i_2_O_UNCONNECTED ;
  wire [3:2]NLW_shift_cntr0_carry__6_CO_UNCONNECTED;
  wire [3:3]NLW_shift_cntr0_carry__6_O_UNCONNECTED;
  wire [3:0]NLW_shift_done_carry_O_UNCONNECTED;
  wire [3:0]NLW_shift_done_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_shift_done_carry__1_O_UNCONNECTED;
  wire [3:3]NLW_shift_done_carry__2_CO_UNCONNECTED;
  wire [3:0]NLW_shift_done_carry__2_O_UNCONNECTED;

  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hE2FF)) 
    \FSM_onehot_state[0]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(\FSM_onehot_state[2]_i_2_n_0 ),
        .I2(\FSM_onehot_state_reg_n_0_[2] ),
        .I3(reset_n),
        .O(\FSM_onehot_state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hE200)) 
    \FSM_onehot_state[1]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(\FSM_onehot_state[2]_i_2_n_0 ),
        .I2(\FSM_onehot_state_reg_n_0_[0] ),
        .I3(reset_n),
        .O(\FSM_onehot_state[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hE200)) 
    \FSM_onehot_state[2]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(\FSM_onehot_state[2]_i_2_n_0 ),
        .I2(\FSM_onehot_state_reg_n_0_[1] ),
        .I3(reset_n),
        .O(\FSM_onehot_state[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFF88FF88F8888888)) 
    \FSM_onehot_state[2]_i_2 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(data_ready_ff),
        .I2(shift_done),
        .I3(sck_delayed_pulse_reg_n_0),
        .I4(\FSM_onehot_state_reg_n_0_[2] ),
        .I5(\FSM_onehot_state_reg_n_0_[1] ),
        .O(\FSM_onehot_state[2]_i_2_n_0 ));
  (* FSM_ENCODED_STATES = "IDLE:001,SCK_WAIT:010,TXN0:100," *) 
  FDRE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_onehot_state[0]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[0] ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "IDLE:001,SCK_WAIT:010,TXN0:100," *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_onehot_state[1]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[1] ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "IDLE:001,SCK_WAIT:010,TXN0:100," *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_onehot_state[2]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[2] ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h00800000FFFFFFFF)) 
    \clk_div[0]_i_1 
       (.I0(\clk_div[0]_i_3_n_0 ),
        .I1(clk_div_reg[1]),
        .I2(clk_div_reg[0]),
        .I3(clk_div_reg[3]),
        .I4(clk_div_reg[2]),
        .I5(reset_n),
        .O(\clk_div[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0080000000000000)) 
    \clk_div[0]_i_3 
       (.I0(clk_div_reg[6]),
        .I1(clk_div_reg[7]),
        .I2(clk_div_reg[5]),
        .I3(clk_div_reg[4]),
        .I4(clk_div_reg[9]),
        .I5(clk_div_reg[8]),
        .O(\clk_div[0]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \clk_div[0]_i_4 
       (.I0(clk_div_reg[0]),
        .O(\clk_div[0]_i_4_n_0 ));
  FDRE \clk_div_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\clk_div_reg[0]_i_2_n_7 ),
        .Q(clk_div_reg[0]),
        .R(\clk_div[0]_i_1_n_0 ));
  CARRY4 \clk_div_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\clk_div_reg[0]_i_2_n_0 ,\clk_div_reg[0]_i_2_n_1 ,\clk_div_reg[0]_i_2_n_2 ,\clk_div_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\clk_div_reg[0]_i_2_n_4 ,\clk_div_reg[0]_i_2_n_5 ,\clk_div_reg[0]_i_2_n_6 ,\clk_div_reg[0]_i_2_n_7 }),
        .S({clk_div_reg[3:1],\clk_div[0]_i_4_n_0 }));
  FDRE \clk_div_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\clk_div_reg[0]_i_2_n_6 ),
        .Q(clk_div_reg[1]),
        .R(\clk_div[0]_i_1_n_0 ));
  FDRE \clk_div_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\clk_div_reg[0]_i_2_n_5 ),
        .Q(clk_div_reg[2]),
        .R(\clk_div[0]_i_1_n_0 ));
  FDRE \clk_div_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\clk_div_reg[0]_i_2_n_4 ),
        .Q(clk_div_reg[3]),
        .R(\clk_div[0]_i_1_n_0 ));
  FDRE \clk_div_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\clk_div_reg[4]_i_1_n_7 ),
        .Q(clk_div_reg[4]),
        .R(\clk_div[0]_i_1_n_0 ));
  CARRY4 \clk_div_reg[4]_i_1 
       (.CI(\clk_div_reg[0]_i_2_n_0 ),
        .CO({\clk_div_reg[4]_i_1_n_0 ,\clk_div_reg[4]_i_1_n_1 ,\clk_div_reg[4]_i_1_n_2 ,\clk_div_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\clk_div_reg[4]_i_1_n_4 ,\clk_div_reg[4]_i_1_n_5 ,\clk_div_reg[4]_i_1_n_6 ,\clk_div_reg[4]_i_1_n_7 }),
        .S(clk_div_reg[7:4]));
  FDRE \clk_div_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\clk_div_reg[4]_i_1_n_6 ),
        .Q(clk_div_reg[5]),
        .R(\clk_div[0]_i_1_n_0 ));
  FDRE \clk_div_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\clk_div_reg[4]_i_1_n_5 ),
        .Q(clk_div_reg[6]),
        .R(\clk_div[0]_i_1_n_0 ));
  FDRE \clk_div_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\clk_div_reg[4]_i_1_n_4 ),
        .Q(clk_div_reg[7]),
        .R(\clk_div[0]_i_1_n_0 ));
  FDRE \clk_div_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(\clk_div_reg[8]_i_1_n_7 ),
        .Q(clk_div_reg[8]),
        .R(\clk_div[0]_i_1_n_0 ));
  CARRY4 \clk_div_reg[8]_i_1 
       (.CI(\clk_div_reg[4]_i_1_n_0 ),
        .CO({\NLW_clk_div_reg[8]_i_1_CO_UNCONNECTED [3:1],\clk_div_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_clk_div_reg[8]_i_1_O_UNCONNECTED [3:2],\clk_div_reg[8]_i_1_n_6 ,\clk_div_reg[8]_i_1_n_7 }),
        .S({1'b0,1'b0,clk_div_reg[9:8]}));
  FDRE \clk_div_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(\clk_div_reg[8]_i_1_n_6 ),
        .Q(clk_div_reg[9]),
        .R(\clk_div[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hEAFFEAAA)) 
    cs_INST_0
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(shift_done),
        .I3(sck_delayed_pulse_reg_n_0),
        .I4(\FSM_onehot_state_reg_n_0_[1] ),
        .O(cs));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hD8880000)) 
    data_ready_ff_i_1
       (.I0(data_ready_ff),
        .I1(cs),
        .I2(\FSM_onehot_state_reg_n_0_[0] ),
        .I3(state),
        .I4(reset_n),
        .O(data_ready_ff_i_1_n_0));
  FDRE data_ready_ff_reg
       (.C(clk),
        .CE(1'b1),
        .D(data_ready_ff_i_1_n_0),
        .Q(data_ready_ff),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h40)) 
    \data_reg[0]_i_1 
       (.I0(data_ready_ff),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(state),
        .O(shift_cntr1));
  LUT4 #(
    .INIT(16'hAA2A)) 
    \data_reg[1]_i_1 
       (.I0(data_reg[0]),
        .I1(state),
        .I2(\FSM_onehot_state_reg_n_0_[0] ),
        .I3(data_ready_ff),
        .O(\data_reg[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hAA2A)) 
    \data_reg[2]_i_1 
       (.I0(data_reg[1]),
        .I1(state),
        .I2(\FSM_onehot_state_reg_n_0_[0] ),
        .I3(data_ready_ff),
        .O(\data_reg[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hAA2A)) 
    \data_reg[3]_i_1 
       (.I0(data_reg[2]),
        .I1(state),
        .I2(\FSM_onehot_state_reg_n_0_[0] ),
        .I3(data_ready_ff),
        .O(\data_reg[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hFF08)) 
    \data_reg[4]_i_1 
       (.I0(state),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(data_ready_ff),
        .I3(data_reg[3]),
        .O(\data_reg[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hAA2A)) 
    \data_reg[5]_i_1 
       (.I0(data_reg[4]),
        .I1(state),
        .I2(\FSM_onehot_state_reg_n_0_[0] ),
        .I3(data_ready_ff),
        .O(\data_reg[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hAA2A)) 
    \data_reg[6]_i_1 
       (.I0(data_reg[5]),
        .I1(state),
        .I2(\FSM_onehot_state_reg_n_0_[0] ),
        .I3(data_ready_ff),
        .O(\data_reg[6]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \data_reg[7]_i_1 
       (.I0(reset_n),
        .O(\data_reg[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h08FF080808080808)) 
    \data_reg[7]_i_2 
       (.I0(state),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(data_ready_ff),
        .I3(shift_done),
        .I4(sck_delayed_pulse_reg_n_0),
        .I5(\FSM_onehot_state_reg_n_0_[2] ),
        .O(\data_reg[7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hAA2A)) 
    \data_reg[7]_i_3 
       (.I0(data_reg[6]),
        .I1(state),
        .I2(\FSM_onehot_state_reg_n_0_[0] ),
        .I3(data_ready_ff),
        .O(\data_reg[7]_i_3_n_0 ));
  FDRE \data_reg_reg[0] 
       (.C(clk),
        .CE(\data_reg[7]_i_2_n_0 ),
        .D(shift_cntr1),
        .Q(data_reg[0]),
        .R(\data_reg[7]_i_1_n_0 ));
  FDRE \data_reg_reg[1] 
       (.C(clk),
        .CE(\data_reg[7]_i_2_n_0 ),
        .D(\data_reg[1]_i_1_n_0 ),
        .Q(data_reg[1]),
        .R(\data_reg[7]_i_1_n_0 ));
  FDRE \data_reg_reg[2] 
       (.C(clk),
        .CE(\data_reg[7]_i_2_n_0 ),
        .D(\data_reg[2]_i_1_n_0 ),
        .Q(data_reg[2]),
        .R(\data_reg[7]_i_1_n_0 ));
  FDRE \data_reg_reg[3] 
       (.C(clk),
        .CE(\data_reg[7]_i_2_n_0 ),
        .D(\data_reg[3]_i_1_n_0 ),
        .Q(data_reg[3]),
        .R(\data_reg[7]_i_1_n_0 ));
  FDRE \data_reg_reg[4] 
       (.C(clk),
        .CE(\data_reg[7]_i_2_n_0 ),
        .D(\data_reg[4]_i_1_n_0 ),
        .Q(data_reg[4]),
        .R(\data_reg[7]_i_1_n_0 ));
  FDRE \data_reg_reg[5] 
       (.C(clk),
        .CE(\data_reg[7]_i_2_n_0 ),
        .D(\data_reg[5]_i_1_n_0 ),
        .Q(data_reg[5]),
        .R(\data_reg[7]_i_1_n_0 ));
  FDRE \data_reg_reg[6] 
       (.C(clk),
        .CE(\data_reg[7]_i_2_n_0 ),
        .D(\data_reg[6]_i_1_n_0 ),
        .Q(data_reg[6]),
        .R(\data_reg[7]_i_1_n_0 ));
  FDRE \data_reg_reg[7] 
       (.C(clk),
        .CE(\data_reg[7]_i_2_n_0 ),
        .D(\data_reg[7]_i_3_n_0 ),
        .Q(mosi),
        .R(\data_reg[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h2)) 
    ready_INST_0
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(data_ready_ff),
        .O(ready));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT1 #(
    .INIT(2'h1)) 
    sck_delayed_pulse_i_1
       (.I0(\sck_offset_cntr[0]_i_3_n_0 ),
        .O(sck_delayed_pulse_i_1_n_0));
  FDRE sck_delayed_pulse_reg
       (.C(clk),
        .CE(1'b1),
        .D(sck_delayed_pulse_i_1_n_0),
        .Q(sck_delayed_pulse_reg_n_0),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h60)) 
    sck_i_1
       (.I0(sck),
        .I1(sck_1),
        .I2(reset_n),
        .O(sck_i_1_n_0));
  LUT5 #(
    .INIT(32'h20000000)) 
    sck_i_2
       (.I0(clk_div_reg[2]),
        .I1(clk_div_reg[3]),
        .I2(clk_div_reg[0]),
        .I3(clk_div_reg[1]),
        .I4(\clk_div[0]_i_3_n_0 ),
        .O(sck_1));
  LUT3 #(
    .INIT(8'hDF)) 
    \sck_offset_cntr[0]_i_1 
       (.I0(reset_n),
        .I1(sck_offset_cntr_en_reg_n_0),
        .I2(\sck_offset_cntr[0]_i_3_n_0 ),
        .O(sck_offset_cntr_0));
  LUT4 #(
    .INIT(16'hFFFD)) 
    \sck_offset_cntr[0]_i_10 
       (.I0(sck_offset_cntr[6]),
        .I1(sck_offset_cntr[7]),
        .I2(sck_offset_cntr[9]),
        .I3(sck_offset_cntr[8]),
        .O(\sck_offset_cntr[0]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \sck_offset_cntr[0]_i_11 
       (.I0(sck_offset_cntr[15]),
        .I1(sck_offset_cntr[14]),
        .I2(sck_offset_cntr[17]),
        .I3(sck_offset_cntr[16]),
        .O(\sck_offset_cntr[0]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h00FEFFFF0000FF00)) 
    \sck_offset_cntr[0]_i_2 
       (.I0(\sck_offset_cntr[0]_i_4_n_0 ),
        .I1(\sck_offset_cntr[0]_i_5_n_0 ),
        .I2(\sck_offset_cntr[0]_i_6_n_0 ),
        .I3(sck_offset_cntr_en_reg_n_0),
        .I4(sck_offset_cntr[0]),
        .I5(reset_n),
        .O(\sck_offset_cntr[0]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFEFF)) 
    \sck_offset_cntr[0]_i_3 
       (.I0(\sck_offset_cntr[0]_i_4_n_0 ),
        .I1(\sck_offset_cntr[0]_i_5_n_0 ),
        .I2(\sck_offset_cntr[0]_i_6_n_0 ),
        .I3(sck_offset_cntr[0]),
        .O(\sck_offset_cntr[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFEFFFF)) 
    \sck_offset_cntr[0]_i_4 
       (.I0(\sck_offset_cntr[0]_i_7_n_0 ),
        .I1(\sck_offset_cntr[0]_i_8_n_0 ),
        .I2(sck_offset_cntr[31]),
        .I3(sck_offset_cntr[30]),
        .I4(sck_offset_cntr[1]),
        .I5(\sck_offset_cntr[0]_i_9_n_0 ),
        .O(\sck_offset_cntr[0]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFB)) 
    \sck_offset_cntr[0]_i_5 
       (.I0(sck_offset_cntr[4]),
        .I1(sck_offset_cntr[5]),
        .I2(sck_offset_cntr[2]),
        .I3(sck_offset_cntr[3]),
        .I4(\sck_offset_cntr[0]_i_10_n_0 ),
        .O(\sck_offset_cntr[0]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \sck_offset_cntr[0]_i_6 
       (.I0(sck_offset_cntr[12]),
        .I1(sck_offset_cntr[13]),
        .I2(sck_offset_cntr[10]),
        .I3(sck_offset_cntr[11]),
        .I4(\sck_offset_cntr[0]_i_11_n_0 ),
        .O(\sck_offset_cntr[0]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \sck_offset_cntr[0]_i_7 
       (.I0(sck_offset_cntr[23]),
        .I1(sck_offset_cntr[22]),
        .I2(sck_offset_cntr[25]),
        .I3(sck_offset_cntr[24]),
        .O(\sck_offset_cntr[0]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \sck_offset_cntr[0]_i_8 
       (.I0(sck_offset_cntr[19]),
        .I1(sck_offset_cntr[18]),
        .I2(sck_offset_cntr[21]),
        .I3(sck_offset_cntr[20]),
        .O(\sck_offset_cntr[0]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \sck_offset_cntr[0]_i_9 
       (.I0(sck_offset_cntr[27]),
        .I1(sck_offset_cntr[26]),
        .I2(sck_offset_cntr[29]),
        .I3(sck_offset_cntr[28]),
        .O(\sck_offset_cntr[0]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \sck_offset_cntr[10]_i_1 
       (.I0(sck_offset_cntr_en_reg_n_0),
        .I1(\sck_offset_cntr[0]_i_3_n_0 ),
        .I2(sck_offset_cntr0[10]),
        .O(\sck_offset_cntr[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \sck_offset_cntr[11]_i_1 
       (.I0(sck_offset_cntr_en_reg_n_0),
        .I1(\sck_offset_cntr[0]_i_3_n_0 ),
        .I2(sck_offset_cntr0[11]),
        .O(\sck_offset_cntr[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \sck_offset_cntr[12]_i_1 
       (.I0(sck_offset_cntr_en_reg_n_0),
        .I1(\sck_offset_cntr[0]_i_3_n_0 ),
        .I2(sck_offset_cntr0[12]),
        .O(\sck_offset_cntr[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \sck_offset_cntr[13]_i_1 
       (.I0(sck_offset_cntr_en_reg_n_0),
        .I1(\sck_offset_cntr[0]_i_3_n_0 ),
        .I2(sck_offset_cntr0[13]),
        .O(\sck_offset_cntr[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \sck_offset_cntr[14]_i_1 
       (.I0(sck_offset_cntr_en_reg_n_0),
        .I1(\sck_offset_cntr[0]_i_3_n_0 ),
        .I2(sck_offset_cntr0[14]),
        .O(\sck_offset_cntr[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \sck_offset_cntr[15]_i_1 
       (.I0(sck_offset_cntr_en_reg_n_0),
        .I1(\sck_offset_cntr[0]_i_3_n_0 ),
        .I2(sck_offset_cntr0[15]),
        .O(\sck_offset_cntr[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \sck_offset_cntr[16]_i_1 
       (.I0(sck_offset_cntr_en_reg_n_0),
        .I1(\sck_offset_cntr[0]_i_3_n_0 ),
        .I2(sck_offset_cntr0[16]),
        .O(\sck_offset_cntr[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \sck_offset_cntr[17]_i_1 
       (.I0(sck_offset_cntr_en_reg_n_0),
        .I1(\sck_offset_cntr[0]_i_3_n_0 ),
        .I2(sck_offset_cntr0[17]),
        .O(\sck_offset_cntr[17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \sck_offset_cntr[18]_i_1 
       (.I0(sck_offset_cntr_en_reg_n_0),
        .I1(\sck_offset_cntr[0]_i_3_n_0 ),
        .I2(sck_offset_cntr0[18]),
        .O(\sck_offset_cntr[18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \sck_offset_cntr[19]_i_1 
       (.I0(sck_offset_cntr_en_reg_n_0),
        .I1(\sck_offset_cntr[0]_i_3_n_0 ),
        .I2(sck_offset_cntr0[19]),
        .O(\sck_offset_cntr[19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \sck_offset_cntr[1]_i_1 
       (.I0(sck_offset_cntr_en_reg_n_0),
        .I1(\sck_offset_cntr[0]_i_3_n_0 ),
        .I2(sck_offset_cntr0[1]),
        .O(\sck_offset_cntr[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \sck_offset_cntr[20]_i_1 
       (.I0(sck_offset_cntr_en_reg_n_0),
        .I1(\sck_offset_cntr[0]_i_3_n_0 ),
        .I2(sck_offset_cntr0[20]),
        .O(\sck_offset_cntr[20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \sck_offset_cntr[21]_i_1 
       (.I0(sck_offset_cntr_en_reg_n_0),
        .I1(\sck_offset_cntr[0]_i_3_n_0 ),
        .I2(sck_offset_cntr0[21]),
        .O(\sck_offset_cntr[21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \sck_offset_cntr[22]_i_1 
       (.I0(sck_offset_cntr_en_reg_n_0),
        .I1(\sck_offset_cntr[0]_i_3_n_0 ),
        .I2(sck_offset_cntr0[22]),
        .O(\sck_offset_cntr[22]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \sck_offset_cntr[23]_i_1 
       (.I0(sck_offset_cntr_en_reg_n_0),
        .I1(\sck_offset_cntr[0]_i_3_n_0 ),
        .I2(sck_offset_cntr0[23]),
        .O(\sck_offset_cntr[23]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \sck_offset_cntr[24]_i_1 
       (.I0(sck_offset_cntr_en_reg_n_0),
        .I1(\sck_offset_cntr[0]_i_3_n_0 ),
        .I2(sck_offset_cntr0[24]),
        .O(\sck_offset_cntr[24]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \sck_offset_cntr[25]_i_1 
       (.I0(sck_offset_cntr_en_reg_n_0),
        .I1(\sck_offset_cntr[0]_i_3_n_0 ),
        .I2(sck_offset_cntr0[25]),
        .O(\sck_offset_cntr[25]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \sck_offset_cntr[26]_i_1 
       (.I0(sck_offset_cntr_en_reg_n_0),
        .I1(\sck_offset_cntr[0]_i_3_n_0 ),
        .I2(sck_offset_cntr0[26]),
        .O(\sck_offset_cntr[26]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \sck_offset_cntr[27]_i_1 
       (.I0(sck_offset_cntr_en_reg_n_0),
        .I1(\sck_offset_cntr[0]_i_3_n_0 ),
        .I2(sck_offset_cntr0[27]),
        .O(\sck_offset_cntr[27]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \sck_offset_cntr[28]_i_1 
       (.I0(sck_offset_cntr_en_reg_n_0),
        .I1(\sck_offset_cntr[0]_i_3_n_0 ),
        .I2(sck_offset_cntr0[28]),
        .O(\sck_offset_cntr[28]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \sck_offset_cntr[29]_i_1 
       (.I0(sck_offset_cntr_en_reg_n_0),
        .I1(\sck_offset_cntr[0]_i_3_n_0 ),
        .I2(sck_offset_cntr0[29]),
        .O(\sck_offset_cntr[29]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \sck_offset_cntr[2]_i_1 
       (.I0(sck_offset_cntr_en_reg_n_0),
        .I1(\sck_offset_cntr[0]_i_3_n_0 ),
        .I2(sck_offset_cntr0[2]),
        .O(\sck_offset_cntr[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \sck_offset_cntr[30]_i_1 
       (.I0(sck_offset_cntr_en_reg_n_0),
        .I1(\sck_offset_cntr[0]_i_3_n_0 ),
        .I2(sck_offset_cntr0[30]),
        .O(\sck_offset_cntr[30]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \sck_offset_cntr[31]_i_1 
       (.I0(sck_offset_cntr_en_reg_n_0),
        .I1(\sck_offset_cntr[0]_i_3_n_0 ),
        .I2(sck_offset_cntr0[31]),
        .O(\sck_offset_cntr[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \sck_offset_cntr[3]_i_1 
       (.I0(sck_offset_cntr_en_reg_n_0),
        .I1(\sck_offset_cntr[0]_i_3_n_0 ),
        .I2(sck_offset_cntr0[3]),
        .O(\sck_offset_cntr[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \sck_offset_cntr[4]_i_1 
       (.I0(sck_offset_cntr_en_reg_n_0),
        .I1(\sck_offset_cntr[0]_i_3_n_0 ),
        .I2(sck_offset_cntr0[4]),
        .O(\sck_offset_cntr[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \sck_offset_cntr[5]_i_1 
       (.I0(sck_offset_cntr_en_reg_n_0),
        .I1(\sck_offset_cntr[0]_i_3_n_0 ),
        .I2(sck_offset_cntr0[5]),
        .O(\sck_offset_cntr[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \sck_offset_cntr[6]_i_1 
       (.I0(sck_offset_cntr_en_reg_n_0),
        .I1(\sck_offset_cntr[0]_i_3_n_0 ),
        .I2(sck_offset_cntr0[6]),
        .O(\sck_offset_cntr[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \sck_offset_cntr[7]_i_1 
       (.I0(sck_offset_cntr_en_reg_n_0),
        .I1(\sck_offset_cntr[0]_i_3_n_0 ),
        .I2(sck_offset_cntr0[7]),
        .O(\sck_offset_cntr[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \sck_offset_cntr[8]_i_1 
       (.I0(sck_offset_cntr_en_reg_n_0),
        .I1(\sck_offset_cntr[0]_i_3_n_0 ),
        .I2(sck_offset_cntr0[8]),
        .O(\sck_offset_cntr[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \sck_offset_cntr[9]_i_1 
       (.I0(sck_offset_cntr_en_reg_n_0),
        .I1(\sck_offset_cntr[0]_i_3_n_0 ),
        .I2(sck_offset_cntr0[9]),
        .O(\sck_offset_cntr[9]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'hA800)) 
    sck_offset_cntr_en_i_1
       (.I0(reset_n),
        .I1(sck_offset_cntr_en),
        .I2(sck_offset_cntr_en_reg_n_0),
        .I3(\sck_offset_cntr[0]_i_3_n_0 ),
        .O(sck_offset_cntr_en_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000200000000000)) 
    sck_offset_cntr_en_i_2
       (.I0(clk_div_reg[2]),
        .I1(clk_div_reg[3]),
        .I2(clk_div_reg[1]),
        .I3(clk_div_reg[0]),
        .I4(sck),
        .I5(\clk_div[0]_i_3_n_0 ),
        .O(sck_offset_cntr_en));
  FDRE sck_offset_cntr_en_reg
       (.C(clk),
        .CE(1'b1),
        .D(sck_offset_cntr_en_i_1_n_0),
        .Q(sck_offset_cntr_en_reg_n_0),
        .R(1'b0));
  FDRE \sck_offset_cntr_reg[0] 
       (.C(clk),
        .CE(sck_offset_cntr_0),
        .D(\sck_offset_cntr[0]_i_2_n_0 ),
        .Q(sck_offset_cntr[0]),
        .R(1'b0));
  FDRE \sck_offset_cntr_reg[10] 
       (.C(clk),
        .CE(sck_offset_cntr_0),
        .D(\sck_offset_cntr[10]_i_1_n_0 ),
        .Q(sck_offset_cntr[10]),
        .R(1'b0));
  FDRE \sck_offset_cntr_reg[11] 
       (.C(clk),
        .CE(sck_offset_cntr_0),
        .D(\sck_offset_cntr[11]_i_1_n_0 ),
        .Q(sck_offset_cntr[11]),
        .R(1'b0));
  FDRE \sck_offset_cntr_reg[12] 
       (.C(clk),
        .CE(sck_offset_cntr_0),
        .D(\sck_offset_cntr[12]_i_1_n_0 ),
        .Q(sck_offset_cntr[12]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \sck_offset_cntr_reg[12]_i_2 
       (.CI(\sck_offset_cntr_reg[8]_i_2_n_0 ),
        .CO({\sck_offset_cntr_reg[12]_i_2_n_0 ,\sck_offset_cntr_reg[12]_i_2_n_1 ,\sck_offset_cntr_reg[12]_i_2_n_2 ,\sck_offset_cntr_reg[12]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(sck_offset_cntr0[12:9]),
        .S(sck_offset_cntr[12:9]));
  FDRE \sck_offset_cntr_reg[13] 
       (.C(clk),
        .CE(sck_offset_cntr_0),
        .D(\sck_offset_cntr[13]_i_1_n_0 ),
        .Q(sck_offset_cntr[13]),
        .R(1'b0));
  FDRE \sck_offset_cntr_reg[14] 
       (.C(clk),
        .CE(sck_offset_cntr_0),
        .D(\sck_offset_cntr[14]_i_1_n_0 ),
        .Q(sck_offset_cntr[14]),
        .R(1'b0));
  FDRE \sck_offset_cntr_reg[15] 
       (.C(clk),
        .CE(sck_offset_cntr_0),
        .D(\sck_offset_cntr[15]_i_1_n_0 ),
        .Q(sck_offset_cntr[15]),
        .R(1'b0));
  FDRE \sck_offset_cntr_reg[16] 
       (.C(clk),
        .CE(sck_offset_cntr_0),
        .D(\sck_offset_cntr[16]_i_1_n_0 ),
        .Q(sck_offset_cntr[16]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \sck_offset_cntr_reg[16]_i_2 
       (.CI(\sck_offset_cntr_reg[12]_i_2_n_0 ),
        .CO({\sck_offset_cntr_reg[16]_i_2_n_0 ,\sck_offset_cntr_reg[16]_i_2_n_1 ,\sck_offset_cntr_reg[16]_i_2_n_2 ,\sck_offset_cntr_reg[16]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(sck_offset_cntr0[16:13]),
        .S(sck_offset_cntr[16:13]));
  FDRE \sck_offset_cntr_reg[17] 
       (.C(clk),
        .CE(sck_offset_cntr_0),
        .D(\sck_offset_cntr[17]_i_1_n_0 ),
        .Q(sck_offset_cntr[17]),
        .R(1'b0));
  FDRE \sck_offset_cntr_reg[18] 
       (.C(clk),
        .CE(sck_offset_cntr_0),
        .D(\sck_offset_cntr[18]_i_1_n_0 ),
        .Q(sck_offset_cntr[18]),
        .R(1'b0));
  FDRE \sck_offset_cntr_reg[19] 
       (.C(clk),
        .CE(sck_offset_cntr_0),
        .D(\sck_offset_cntr[19]_i_1_n_0 ),
        .Q(sck_offset_cntr[19]),
        .R(1'b0));
  FDRE \sck_offset_cntr_reg[1] 
       (.C(clk),
        .CE(sck_offset_cntr_0),
        .D(\sck_offset_cntr[1]_i_1_n_0 ),
        .Q(sck_offset_cntr[1]),
        .R(1'b0));
  FDRE \sck_offset_cntr_reg[20] 
       (.C(clk),
        .CE(sck_offset_cntr_0),
        .D(\sck_offset_cntr[20]_i_1_n_0 ),
        .Q(sck_offset_cntr[20]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \sck_offset_cntr_reg[20]_i_2 
       (.CI(\sck_offset_cntr_reg[16]_i_2_n_0 ),
        .CO({\sck_offset_cntr_reg[20]_i_2_n_0 ,\sck_offset_cntr_reg[20]_i_2_n_1 ,\sck_offset_cntr_reg[20]_i_2_n_2 ,\sck_offset_cntr_reg[20]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(sck_offset_cntr0[20:17]),
        .S(sck_offset_cntr[20:17]));
  FDRE \sck_offset_cntr_reg[21] 
       (.C(clk),
        .CE(sck_offset_cntr_0),
        .D(\sck_offset_cntr[21]_i_1_n_0 ),
        .Q(sck_offset_cntr[21]),
        .R(1'b0));
  FDRE \sck_offset_cntr_reg[22] 
       (.C(clk),
        .CE(sck_offset_cntr_0),
        .D(\sck_offset_cntr[22]_i_1_n_0 ),
        .Q(sck_offset_cntr[22]),
        .R(1'b0));
  FDRE \sck_offset_cntr_reg[23] 
       (.C(clk),
        .CE(sck_offset_cntr_0),
        .D(\sck_offset_cntr[23]_i_1_n_0 ),
        .Q(sck_offset_cntr[23]),
        .R(1'b0));
  FDRE \sck_offset_cntr_reg[24] 
       (.C(clk),
        .CE(sck_offset_cntr_0),
        .D(\sck_offset_cntr[24]_i_1_n_0 ),
        .Q(sck_offset_cntr[24]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \sck_offset_cntr_reg[24]_i_2 
       (.CI(\sck_offset_cntr_reg[20]_i_2_n_0 ),
        .CO({\sck_offset_cntr_reg[24]_i_2_n_0 ,\sck_offset_cntr_reg[24]_i_2_n_1 ,\sck_offset_cntr_reg[24]_i_2_n_2 ,\sck_offset_cntr_reg[24]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(sck_offset_cntr0[24:21]),
        .S(sck_offset_cntr[24:21]));
  FDRE \sck_offset_cntr_reg[25] 
       (.C(clk),
        .CE(sck_offset_cntr_0),
        .D(\sck_offset_cntr[25]_i_1_n_0 ),
        .Q(sck_offset_cntr[25]),
        .R(1'b0));
  FDRE \sck_offset_cntr_reg[26] 
       (.C(clk),
        .CE(sck_offset_cntr_0),
        .D(\sck_offset_cntr[26]_i_1_n_0 ),
        .Q(sck_offset_cntr[26]),
        .R(1'b0));
  FDRE \sck_offset_cntr_reg[27] 
       (.C(clk),
        .CE(sck_offset_cntr_0),
        .D(\sck_offset_cntr[27]_i_1_n_0 ),
        .Q(sck_offset_cntr[27]),
        .R(1'b0));
  FDRE \sck_offset_cntr_reg[28] 
       (.C(clk),
        .CE(sck_offset_cntr_0),
        .D(\sck_offset_cntr[28]_i_1_n_0 ),
        .Q(sck_offset_cntr[28]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \sck_offset_cntr_reg[28]_i_2 
       (.CI(\sck_offset_cntr_reg[24]_i_2_n_0 ),
        .CO({\sck_offset_cntr_reg[28]_i_2_n_0 ,\sck_offset_cntr_reg[28]_i_2_n_1 ,\sck_offset_cntr_reg[28]_i_2_n_2 ,\sck_offset_cntr_reg[28]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(sck_offset_cntr0[28:25]),
        .S(sck_offset_cntr[28:25]));
  FDRE \sck_offset_cntr_reg[29] 
       (.C(clk),
        .CE(sck_offset_cntr_0),
        .D(\sck_offset_cntr[29]_i_1_n_0 ),
        .Q(sck_offset_cntr[29]),
        .R(1'b0));
  FDRE \sck_offset_cntr_reg[2] 
       (.C(clk),
        .CE(sck_offset_cntr_0),
        .D(\sck_offset_cntr[2]_i_1_n_0 ),
        .Q(sck_offset_cntr[2]),
        .R(1'b0));
  FDRE \sck_offset_cntr_reg[30] 
       (.C(clk),
        .CE(sck_offset_cntr_0),
        .D(\sck_offset_cntr[30]_i_1_n_0 ),
        .Q(sck_offset_cntr[30]),
        .R(1'b0));
  FDRE \sck_offset_cntr_reg[31] 
       (.C(clk),
        .CE(sck_offset_cntr_0),
        .D(\sck_offset_cntr[31]_i_1_n_0 ),
        .Q(sck_offset_cntr[31]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \sck_offset_cntr_reg[31]_i_2 
       (.CI(\sck_offset_cntr_reg[28]_i_2_n_0 ),
        .CO({\NLW_sck_offset_cntr_reg[31]_i_2_CO_UNCONNECTED [3:2],\sck_offset_cntr_reg[31]_i_2_n_2 ,\sck_offset_cntr_reg[31]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_sck_offset_cntr_reg[31]_i_2_O_UNCONNECTED [3],sck_offset_cntr0[31:29]}),
        .S({1'b0,sck_offset_cntr[31:29]}));
  FDRE \sck_offset_cntr_reg[3] 
       (.C(clk),
        .CE(sck_offset_cntr_0),
        .D(\sck_offset_cntr[3]_i_1_n_0 ),
        .Q(sck_offset_cntr[3]),
        .R(1'b0));
  FDRE \sck_offset_cntr_reg[4] 
       (.C(clk),
        .CE(sck_offset_cntr_0),
        .D(\sck_offset_cntr[4]_i_1_n_0 ),
        .Q(sck_offset_cntr[4]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \sck_offset_cntr_reg[4]_i_2 
       (.CI(1'b0),
        .CO({\sck_offset_cntr_reg[4]_i_2_n_0 ,\sck_offset_cntr_reg[4]_i_2_n_1 ,\sck_offset_cntr_reg[4]_i_2_n_2 ,\sck_offset_cntr_reg[4]_i_2_n_3 }),
        .CYINIT(sck_offset_cntr[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(sck_offset_cntr0[4:1]),
        .S(sck_offset_cntr[4:1]));
  FDRE \sck_offset_cntr_reg[5] 
       (.C(clk),
        .CE(sck_offset_cntr_0),
        .D(\sck_offset_cntr[5]_i_1_n_0 ),
        .Q(sck_offset_cntr[5]),
        .R(1'b0));
  FDRE \sck_offset_cntr_reg[6] 
       (.C(clk),
        .CE(sck_offset_cntr_0),
        .D(\sck_offset_cntr[6]_i_1_n_0 ),
        .Q(sck_offset_cntr[6]),
        .R(1'b0));
  FDRE \sck_offset_cntr_reg[7] 
       (.C(clk),
        .CE(sck_offset_cntr_0),
        .D(\sck_offset_cntr[7]_i_1_n_0 ),
        .Q(sck_offset_cntr[7]),
        .R(1'b0));
  FDRE \sck_offset_cntr_reg[8] 
       (.C(clk),
        .CE(sck_offset_cntr_0),
        .D(\sck_offset_cntr[8]_i_1_n_0 ),
        .Q(sck_offset_cntr[8]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \sck_offset_cntr_reg[8]_i_2 
       (.CI(\sck_offset_cntr_reg[4]_i_2_n_0 ),
        .CO({\sck_offset_cntr_reg[8]_i_2_n_0 ,\sck_offset_cntr_reg[8]_i_2_n_1 ,\sck_offset_cntr_reg[8]_i_2_n_2 ,\sck_offset_cntr_reg[8]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(sck_offset_cntr0[8:5]),
        .S(sck_offset_cntr[8:5]));
  FDRE \sck_offset_cntr_reg[9] 
       (.C(clk),
        .CE(sck_offset_cntr_0),
        .D(\sck_offset_cntr[9]_i_1_n_0 ),
        .Q(sck_offset_cntr[9]),
        .R(1'b0));
  FDRE sck_reg
       (.C(clk),
        .CE(1'b1),
        .D(sck_i_1_n_0),
        .Q(sck),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 shift_cntr0_carry
       (.CI(1'b0),
        .CO({shift_cntr0_carry_n_0,shift_cntr0_carry_n_1,shift_cntr0_carry_n_2,shift_cntr0_carry_n_3}),
        .CYINIT(shift_cntr[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(shift_cntr0[4:1]),
        .S(shift_cntr[4:1]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 shift_cntr0_carry__0
       (.CI(shift_cntr0_carry_n_0),
        .CO({shift_cntr0_carry__0_n_0,shift_cntr0_carry__0_n_1,shift_cntr0_carry__0_n_2,shift_cntr0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(shift_cntr0[8:5]),
        .S(shift_cntr[8:5]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 shift_cntr0_carry__1
       (.CI(shift_cntr0_carry__0_n_0),
        .CO({shift_cntr0_carry__1_n_0,shift_cntr0_carry__1_n_1,shift_cntr0_carry__1_n_2,shift_cntr0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(shift_cntr0[12:9]),
        .S(shift_cntr[12:9]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 shift_cntr0_carry__2
       (.CI(shift_cntr0_carry__1_n_0),
        .CO({shift_cntr0_carry__2_n_0,shift_cntr0_carry__2_n_1,shift_cntr0_carry__2_n_2,shift_cntr0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(shift_cntr0[16:13]),
        .S(shift_cntr[16:13]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 shift_cntr0_carry__3
       (.CI(shift_cntr0_carry__2_n_0),
        .CO({shift_cntr0_carry__3_n_0,shift_cntr0_carry__3_n_1,shift_cntr0_carry__3_n_2,shift_cntr0_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(shift_cntr0[20:17]),
        .S(shift_cntr[20:17]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 shift_cntr0_carry__4
       (.CI(shift_cntr0_carry__3_n_0),
        .CO({shift_cntr0_carry__4_n_0,shift_cntr0_carry__4_n_1,shift_cntr0_carry__4_n_2,shift_cntr0_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(shift_cntr0[24:21]),
        .S(shift_cntr[24:21]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 shift_cntr0_carry__5
       (.CI(shift_cntr0_carry__4_n_0),
        .CO({shift_cntr0_carry__5_n_0,shift_cntr0_carry__5_n_1,shift_cntr0_carry__5_n_2,shift_cntr0_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(shift_cntr0[28:25]),
        .S(shift_cntr[28:25]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 shift_cntr0_carry__6
       (.CI(shift_cntr0_carry__5_n_0),
        .CO({NLW_shift_cntr0_carry__6_CO_UNCONNECTED[3:2],shift_cntr0_carry__6_n_2,shift_cntr0_carry__6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_shift_cntr0_carry__6_O_UNCONNECTED[3],shift_cntr0[31:29]}),
        .S({1'b0,shift_cntr[31:29]}));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \shift_cntr[0]_i_1 
       (.I0(shift_cntr[0]),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(shift_done),
        .I3(shift_cntr1),
        .O(p_2_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    \shift_cntr[10]_i_1 
       (.I0(shift_cntr0[10]),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(shift_done),
        .I3(shift_cntr1),
        .O(p_2_in[10]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    \shift_cntr[11]_i_1 
       (.I0(shift_cntr0[11]),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(shift_done),
        .I3(shift_cntr1),
        .O(p_2_in[11]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    \shift_cntr[12]_i_1 
       (.I0(shift_cntr0[12]),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(shift_done),
        .I3(shift_cntr1),
        .O(p_2_in[12]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    \shift_cntr[13]_i_1 
       (.I0(shift_cntr0[13]),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(shift_done),
        .I3(shift_cntr1),
        .O(p_2_in[13]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    \shift_cntr[14]_i_1 
       (.I0(shift_cntr0[14]),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(shift_done),
        .I3(shift_cntr1),
        .O(p_2_in[14]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    \shift_cntr[15]_i_1 
       (.I0(shift_cntr0[15]),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(shift_done),
        .I3(shift_cntr1),
        .O(p_2_in[15]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    \shift_cntr[16]_i_1 
       (.I0(shift_cntr0[16]),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(shift_done),
        .I3(shift_cntr1),
        .O(p_2_in[16]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    \shift_cntr[17]_i_1 
       (.I0(shift_cntr0[17]),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(shift_done),
        .I3(shift_cntr1),
        .O(p_2_in[17]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    \shift_cntr[18]_i_1 
       (.I0(shift_cntr0[18]),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(shift_done),
        .I3(shift_cntr1),
        .O(p_2_in[18]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    \shift_cntr[19]_i_1 
       (.I0(shift_cntr0[19]),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(shift_done),
        .I3(shift_cntr1),
        .O(p_2_in[19]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    \shift_cntr[1]_i_1 
       (.I0(shift_cntr0[1]),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(shift_done),
        .I3(shift_cntr1),
        .O(p_2_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    \shift_cntr[20]_i_1 
       (.I0(shift_cntr0[20]),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(shift_done),
        .I3(shift_cntr1),
        .O(p_2_in[20]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    \shift_cntr[21]_i_1 
       (.I0(shift_cntr0[21]),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(shift_done),
        .I3(shift_cntr1),
        .O(p_2_in[21]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    \shift_cntr[22]_i_1 
       (.I0(shift_cntr0[22]),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(shift_done),
        .I3(shift_cntr1),
        .O(p_2_in[22]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    \shift_cntr[23]_i_1 
       (.I0(shift_cntr0[23]),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(shift_done),
        .I3(shift_cntr1),
        .O(p_2_in[23]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    \shift_cntr[24]_i_1 
       (.I0(shift_cntr0[24]),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(shift_done),
        .I3(shift_cntr1),
        .O(p_2_in[24]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    \shift_cntr[25]_i_1 
       (.I0(shift_cntr0[25]),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(shift_done),
        .I3(shift_cntr1),
        .O(p_2_in[25]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    \shift_cntr[26]_i_1 
       (.I0(shift_cntr0[26]),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(shift_done),
        .I3(shift_cntr1),
        .O(p_2_in[26]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    \shift_cntr[27]_i_1 
       (.I0(shift_cntr0[27]),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(shift_done),
        .I3(shift_cntr1),
        .O(p_2_in[27]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    \shift_cntr[28]_i_1 
       (.I0(shift_cntr0[28]),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(shift_done),
        .I3(shift_cntr1),
        .O(p_2_in[28]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    \shift_cntr[29]_i_1 
       (.I0(shift_cntr0[29]),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(shift_done),
        .I3(shift_cntr1),
        .O(p_2_in[29]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    \shift_cntr[2]_i_1 
       (.I0(shift_cntr0[2]),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(shift_done),
        .I3(shift_cntr1),
        .O(p_2_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    \shift_cntr[30]_i_1 
       (.I0(shift_cntr0[30]),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(shift_done),
        .I3(shift_cntr1),
        .O(p_2_in[30]));
  LUT5 #(
    .INIT(32'hFF001000)) 
    \shift_cntr[31]_i_1 
       (.I0(shift_cntr1),
        .I1(shift_done),
        .I2(\FSM_onehot_state_reg_n_0_[2] ),
        .I3(sck_delayed_pulse_reg_n_0),
        .I4(\FSM_onehot_state_reg_n_0_[1] ),
        .O(\shift_cntr[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    \shift_cntr[31]_i_2 
       (.I0(shift_cntr0[31]),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(shift_done),
        .I3(shift_cntr1),
        .O(p_2_in[31]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    \shift_cntr[3]_i_1 
       (.I0(shift_cntr0[3]),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(shift_done),
        .I3(shift_cntr1),
        .O(p_2_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    \shift_cntr[4]_i_1 
       (.I0(shift_cntr0[4]),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(shift_done),
        .I3(shift_cntr1),
        .O(p_2_in[4]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    \shift_cntr[5]_i_1 
       (.I0(shift_cntr0[5]),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(shift_done),
        .I3(shift_cntr1),
        .O(p_2_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    \shift_cntr[6]_i_1 
       (.I0(shift_cntr0[6]),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(shift_done),
        .I3(shift_cntr1),
        .O(p_2_in[6]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    \shift_cntr[7]_i_1 
       (.I0(shift_cntr0[7]),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(shift_done),
        .I3(shift_cntr1),
        .O(p_2_in[7]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    \shift_cntr[8]_i_1 
       (.I0(shift_cntr0[8]),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(shift_done),
        .I3(shift_cntr1),
        .O(p_2_in[8]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    \shift_cntr[9]_i_1 
       (.I0(shift_cntr0[9]),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(shift_done),
        .I3(shift_cntr1),
        .O(p_2_in[9]));
  FDRE \shift_cntr_reg[0] 
       (.C(clk),
        .CE(\shift_cntr[31]_i_1_n_0 ),
        .D(p_2_in[0]),
        .Q(shift_cntr[0]),
        .R(\data_reg[7]_i_1_n_0 ));
  FDRE \shift_cntr_reg[10] 
       (.C(clk),
        .CE(\shift_cntr[31]_i_1_n_0 ),
        .D(p_2_in[10]),
        .Q(shift_cntr[10]),
        .R(\data_reg[7]_i_1_n_0 ));
  FDRE \shift_cntr_reg[11] 
       (.C(clk),
        .CE(\shift_cntr[31]_i_1_n_0 ),
        .D(p_2_in[11]),
        .Q(shift_cntr[11]),
        .R(\data_reg[7]_i_1_n_0 ));
  FDRE \shift_cntr_reg[12] 
       (.C(clk),
        .CE(\shift_cntr[31]_i_1_n_0 ),
        .D(p_2_in[12]),
        .Q(shift_cntr[12]),
        .R(\data_reg[7]_i_1_n_0 ));
  FDRE \shift_cntr_reg[13] 
       (.C(clk),
        .CE(\shift_cntr[31]_i_1_n_0 ),
        .D(p_2_in[13]),
        .Q(shift_cntr[13]),
        .R(\data_reg[7]_i_1_n_0 ));
  FDRE \shift_cntr_reg[14] 
       (.C(clk),
        .CE(\shift_cntr[31]_i_1_n_0 ),
        .D(p_2_in[14]),
        .Q(shift_cntr[14]),
        .R(\data_reg[7]_i_1_n_0 ));
  FDRE \shift_cntr_reg[15] 
       (.C(clk),
        .CE(\shift_cntr[31]_i_1_n_0 ),
        .D(p_2_in[15]),
        .Q(shift_cntr[15]),
        .R(\data_reg[7]_i_1_n_0 ));
  FDRE \shift_cntr_reg[16] 
       (.C(clk),
        .CE(\shift_cntr[31]_i_1_n_0 ),
        .D(p_2_in[16]),
        .Q(shift_cntr[16]),
        .R(\data_reg[7]_i_1_n_0 ));
  FDRE \shift_cntr_reg[17] 
       (.C(clk),
        .CE(\shift_cntr[31]_i_1_n_0 ),
        .D(p_2_in[17]),
        .Q(shift_cntr[17]),
        .R(\data_reg[7]_i_1_n_0 ));
  FDRE \shift_cntr_reg[18] 
       (.C(clk),
        .CE(\shift_cntr[31]_i_1_n_0 ),
        .D(p_2_in[18]),
        .Q(shift_cntr[18]),
        .R(\data_reg[7]_i_1_n_0 ));
  FDRE \shift_cntr_reg[19] 
       (.C(clk),
        .CE(\shift_cntr[31]_i_1_n_0 ),
        .D(p_2_in[19]),
        .Q(shift_cntr[19]),
        .R(\data_reg[7]_i_1_n_0 ));
  FDRE \shift_cntr_reg[1] 
       (.C(clk),
        .CE(\shift_cntr[31]_i_1_n_0 ),
        .D(p_2_in[1]),
        .Q(shift_cntr[1]),
        .R(\data_reg[7]_i_1_n_0 ));
  FDRE \shift_cntr_reg[20] 
       (.C(clk),
        .CE(\shift_cntr[31]_i_1_n_0 ),
        .D(p_2_in[20]),
        .Q(shift_cntr[20]),
        .R(\data_reg[7]_i_1_n_0 ));
  FDRE \shift_cntr_reg[21] 
       (.C(clk),
        .CE(\shift_cntr[31]_i_1_n_0 ),
        .D(p_2_in[21]),
        .Q(shift_cntr[21]),
        .R(\data_reg[7]_i_1_n_0 ));
  FDRE \shift_cntr_reg[22] 
       (.C(clk),
        .CE(\shift_cntr[31]_i_1_n_0 ),
        .D(p_2_in[22]),
        .Q(shift_cntr[22]),
        .R(\data_reg[7]_i_1_n_0 ));
  FDRE \shift_cntr_reg[23] 
       (.C(clk),
        .CE(\shift_cntr[31]_i_1_n_0 ),
        .D(p_2_in[23]),
        .Q(shift_cntr[23]),
        .R(\data_reg[7]_i_1_n_0 ));
  FDRE \shift_cntr_reg[24] 
       (.C(clk),
        .CE(\shift_cntr[31]_i_1_n_0 ),
        .D(p_2_in[24]),
        .Q(shift_cntr[24]),
        .R(\data_reg[7]_i_1_n_0 ));
  FDRE \shift_cntr_reg[25] 
       (.C(clk),
        .CE(\shift_cntr[31]_i_1_n_0 ),
        .D(p_2_in[25]),
        .Q(shift_cntr[25]),
        .R(\data_reg[7]_i_1_n_0 ));
  FDRE \shift_cntr_reg[26] 
       (.C(clk),
        .CE(\shift_cntr[31]_i_1_n_0 ),
        .D(p_2_in[26]),
        .Q(shift_cntr[26]),
        .R(\data_reg[7]_i_1_n_0 ));
  FDRE \shift_cntr_reg[27] 
       (.C(clk),
        .CE(\shift_cntr[31]_i_1_n_0 ),
        .D(p_2_in[27]),
        .Q(shift_cntr[27]),
        .R(\data_reg[7]_i_1_n_0 ));
  FDRE \shift_cntr_reg[28] 
       (.C(clk),
        .CE(\shift_cntr[31]_i_1_n_0 ),
        .D(p_2_in[28]),
        .Q(shift_cntr[28]),
        .R(\data_reg[7]_i_1_n_0 ));
  FDRE \shift_cntr_reg[29] 
       (.C(clk),
        .CE(\shift_cntr[31]_i_1_n_0 ),
        .D(p_2_in[29]),
        .Q(shift_cntr[29]),
        .R(\data_reg[7]_i_1_n_0 ));
  FDRE \shift_cntr_reg[2] 
       (.C(clk),
        .CE(\shift_cntr[31]_i_1_n_0 ),
        .D(p_2_in[2]),
        .Q(shift_cntr[2]),
        .R(\data_reg[7]_i_1_n_0 ));
  FDRE \shift_cntr_reg[30] 
       (.C(clk),
        .CE(\shift_cntr[31]_i_1_n_0 ),
        .D(p_2_in[30]),
        .Q(shift_cntr[30]),
        .R(\data_reg[7]_i_1_n_0 ));
  FDRE \shift_cntr_reg[31] 
       (.C(clk),
        .CE(\shift_cntr[31]_i_1_n_0 ),
        .D(p_2_in[31]),
        .Q(shift_cntr[31]),
        .R(\data_reg[7]_i_1_n_0 ));
  FDRE \shift_cntr_reg[3] 
       (.C(clk),
        .CE(\shift_cntr[31]_i_1_n_0 ),
        .D(p_2_in[3]),
        .Q(shift_cntr[3]),
        .R(\data_reg[7]_i_1_n_0 ));
  FDRE \shift_cntr_reg[4] 
       (.C(clk),
        .CE(\shift_cntr[31]_i_1_n_0 ),
        .D(p_2_in[4]),
        .Q(shift_cntr[4]),
        .R(\data_reg[7]_i_1_n_0 ));
  FDRE \shift_cntr_reg[5] 
       (.C(clk),
        .CE(\shift_cntr[31]_i_1_n_0 ),
        .D(p_2_in[5]),
        .Q(shift_cntr[5]),
        .R(\data_reg[7]_i_1_n_0 ));
  FDRE \shift_cntr_reg[6] 
       (.C(clk),
        .CE(\shift_cntr[31]_i_1_n_0 ),
        .D(p_2_in[6]),
        .Q(shift_cntr[6]),
        .R(\data_reg[7]_i_1_n_0 ));
  FDRE \shift_cntr_reg[7] 
       (.C(clk),
        .CE(\shift_cntr[31]_i_1_n_0 ),
        .D(p_2_in[7]),
        .Q(shift_cntr[7]),
        .R(\data_reg[7]_i_1_n_0 ));
  FDRE \shift_cntr_reg[8] 
       (.C(clk),
        .CE(\shift_cntr[31]_i_1_n_0 ),
        .D(p_2_in[8]),
        .Q(shift_cntr[8]),
        .R(\data_reg[7]_i_1_n_0 ));
  FDRE \shift_cntr_reg[9] 
       (.C(clk),
        .CE(\shift_cntr[31]_i_1_n_0 ),
        .D(p_2_in[9]),
        .Q(shift_cntr[9]),
        .R(\data_reg[7]_i_1_n_0 ));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 shift_done_carry
       (.CI(1'b0),
        .CO({shift_done_carry_n_0,shift_done_carry_n_1,shift_done_carry_n_2,shift_done_carry_n_3}),
        .CYINIT(shift_done_carry_i_1_n_0),
        .DI({shift_done_carry_i_2_n_0,shift_done_carry_i_3_n_0,shift_done_carry_i_4_n_0,shift_cntr[3]}),
        .O(NLW_shift_done_carry_O_UNCONNECTED[3:0]),
        .S({shift_done_carry_i_5_n_0,shift_done_carry_i_6_n_0,shift_done_carry_i_7_n_0,shift_done_carry_i_8_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 shift_done_carry__0
       (.CI(shift_done_carry_n_0),
        .CO({shift_done_carry__0_n_0,shift_done_carry__0_n_1,shift_done_carry__0_n_2,shift_done_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({shift_done_carry__0_i_1_n_0,shift_done_carry__0_i_2_n_0,shift_done_carry__0_i_3_n_0,shift_done_carry__0_i_4_n_0}),
        .O(NLW_shift_done_carry__0_O_UNCONNECTED[3:0]),
        .S({shift_done_carry__0_i_5_n_0,shift_done_carry__0_i_6_n_0,shift_done_carry__0_i_7_n_0,shift_done_carry__0_i_8_n_0}));
  LUT2 #(
    .INIT(4'hE)) 
    shift_done_carry__0_i_1
       (.I0(shift_cntr[16]),
        .I1(shift_cntr[17]),
        .O(shift_done_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    shift_done_carry__0_i_2
       (.I0(shift_cntr[14]),
        .I1(shift_cntr[15]),
        .O(shift_done_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    shift_done_carry__0_i_3
       (.I0(shift_cntr[12]),
        .I1(shift_cntr[13]),
        .O(shift_done_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    shift_done_carry__0_i_4
       (.I0(shift_cntr[10]),
        .I1(shift_cntr[11]),
        .O(shift_done_carry__0_i_4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    shift_done_carry__0_i_5
       (.I0(shift_cntr[16]),
        .I1(shift_cntr[17]),
        .O(shift_done_carry__0_i_5_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    shift_done_carry__0_i_6
       (.I0(shift_cntr[14]),
        .I1(shift_cntr[15]),
        .O(shift_done_carry__0_i_6_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    shift_done_carry__0_i_7
       (.I0(shift_cntr[12]),
        .I1(shift_cntr[13]),
        .O(shift_done_carry__0_i_7_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    shift_done_carry__0_i_8
       (.I0(shift_cntr[10]),
        .I1(shift_cntr[11]),
        .O(shift_done_carry__0_i_8_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 shift_done_carry__1
       (.CI(shift_done_carry__0_n_0),
        .CO({shift_done_carry__1_n_0,shift_done_carry__1_n_1,shift_done_carry__1_n_2,shift_done_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({shift_done_carry__1_i_1_n_0,shift_done_carry__1_i_2_n_0,shift_done_carry__1_i_3_n_0,shift_done_carry__1_i_4_n_0}),
        .O(NLW_shift_done_carry__1_O_UNCONNECTED[3:0]),
        .S({shift_done_carry__1_i_5_n_0,shift_done_carry__1_i_6_n_0,shift_done_carry__1_i_7_n_0,shift_done_carry__1_i_8_n_0}));
  LUT2 #(
    .INIT(4'hE)) 
    shift_done_carry__1_i_1
       (.I0(shift_cntr[24]),
        .I1(shift_cntr[25]),
        .O(shift_done_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    shift_done_carry__1_i_2
       (.I0(shift_cntr[22]),
        .I1(shift_cntr[23]),
        .O(shift_done_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    shift_done_carry__1_i_3
       (.I0(shift_cntr[20]),
        .I1(shift_cntr[21]),
        .O(shift_done_carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    shift_done_carry__1_i_4
       (.I0(shift_cntr[18]),
        .I1(shift_cntr[19]),
        .O(shift_done_carry__1_i_4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    shift_done_carry__1_i_5
       (.I0(shift_cntr[24]),
        .I1(shift_cntr[25]),
        .O(shift_done_carry__1_i_5_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    shift_done_carry__1_i_6
       (.I0(shift_cntr[22]),
        .I1(shift_cntr[23]),
        .O(shift_done_carry__1_i_6_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    shift_done_carry__1_i_7
       (.I0(shift_cntr[20]),
        .I1(shift_cntr[21]),
        .O(shift_done_carry__1_i_7_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    shift_done_carry__1_i_8
       (.I0(shift_cntr[18]),
        .I1(shift_cntr[19]),
        .O(shift_done_carry__1_i_8_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 shift_done_carry__2
       (.CI(shift_done_carry__1_n_0),
        .CO({NLW_shift_done_carry__2_CO_UNCONNECTED[3],shift_done,shift_done_carry__2_n_2,shift_done_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,shift_done_carry__2_i_1_n_0,shift_done_carry__2_i_2_n_0,shift_done_carry__2_i_3_n_0}),
        .O(NLW_shift_done_carry__2_O_UNCONNECTED[3:0]),
        .S({1'b0,shift_done_carry__2_i_4_n_0,shift_done_carry__2_i_5_n_0,shift_done_carry__2_i_6_n_0}));
  LUT2 #(
    .INIT(4'h2)) 
    shift_done_carry__2_i_1
       (.I0(shift_cntr[30]),
        .I1(shift_cntr[31]),
        .O(shift_done_carry__2_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    shift_done_carry__2_i_2
       (.I0(shift_cntr[28]),
        .I1(shift_cntr[29]),
        .O(shift_done_carry__2_i_2_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    shift_done_carry__2_i_3
       (.I0(shift_cntr[26]),
        .I1(shift_cntr[27]),
        .O(shift_done_carry__2_i_3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    shift_done_carry__2_i_4
       (.I0(shift_cntr[30]),
        .I1(shift_cntr[31]),
        .O(shift_done_carry__2_i_4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    shift_done_carry__2_i_5
       (.I0(shift_cntr[28]),
        .I1(shift_cntr[29]),
        .O(shift_done_carry__2_i_5_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    shift_done_carry__2_i_6
       (.I0(shift_cntr[26]),
        .I1(shift_cntr[27]),
        .O(shift_done_carry__2_i_6_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    shift_done_carry_i_1
       (.I0(shift_cntr[0]),
        .I1(shift_cntr[1]),
        .O(shift_done_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    shift_done_carry_i_2
       (.I0(shift_cntr[8]),
        .I1(shift_cntr[9]),
        .O(shift_done_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    shift_done_carry_i_3
       (.I0(shift_cntr[6]),
        .I1(shift_cntr[7]),
        .O(shift_done_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    shift_done_carry_i_4
       (.I0(shift_cntr[4]),
        .I1(shift_cntr[5]),
        .O(shift_done_carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    shift_done_carry_i_5
       (.I0(shift_cntr[8]),
        .I1(shift_cntr[9]),
        .O(shift_done_carry_i_5_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    shift_done_carry_i_6
       (.I0(shift_cntr[6]),
        .I1(shift_cntr[7]),
        .O(shift_done_carry_i_6_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    shift_done_carry_i_7
       (.I0(shift_cntr[4]),
        .I1(shift_cntr[5]),
        .O(shift_done_carry_i_7_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    shift_done_carry_i_8
       (.I0(shift_cntr[2]),
        .I1(shift_cntr[3]),
        .O(shift_done_carry_i_8_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h0400)) 
    \state[0]_i_1 
       (.I0(state),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(data_ready_ff),
        .I3(reset_n),
        .O(\state_reg[0] ));
endmodule

(* ORIG_REF_NAME = "LTC6912_Driver_Wrapper" *) 
module top_LTC6912_Driver_Wrapp_0_0_LTC6912_Driver_Wrapper
   (ready,
    mosi,
    cs,
    sck,
    reset_n,
    clk);
  output ready;
  output mosi;
  output cs;
  output sck;
  input reset_n;
  input clk;

  wire clk;
  wire cs;
  wire driver_n_3;
  wire mosi;
  wire ready;
  wire reset_n;
  wire sck;
  wire [0:0]state;

  top_LTC6912_Driver_Wrapp_0_0_LTC6912_Driver driver
       (.clk(clk),
        .cs(cs),
        .mosi(mosi),
        .ready(ready),
        .reset_n(reset_n),
        .sck(sck),
        .state(state),
        .\state_reg[0] (driver_n_3));
  FDRE \state_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(driver_n_3),
        .Q(state),
        .R(1'b0));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
