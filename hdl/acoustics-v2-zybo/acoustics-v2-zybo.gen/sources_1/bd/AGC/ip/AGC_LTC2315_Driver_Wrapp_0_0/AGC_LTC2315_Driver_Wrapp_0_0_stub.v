// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Thu Nov 30 00:29:44 2023
// Host        : Gleb-ThinkPad running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Dev/TAUV-Acoustics/hdl/acoustics-v2-zybo/acoustics-v2-zybo.gen/sources_1/bd/AGC/ip/AGC_LTC2315_Driver_Wrapp_0_0/AGC_LTC2315_Driver_Wrapp_0_0_stub.v
// Design      : AGC_LTC2315_Driver_Wrapp_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "LTC2315_Driver_Wrapper,Vivado 2023.2" *)
module AGC_LTC2315_Driver_Wrapp_0_0(enable, reset_n, clk, data, valid, miso, sck, cs)
/* synthesis syn_black_box black_box_pad_pin="enable,reset_n,data[11:0],valid,miso,sck,cs" */
/* synthesis syn_force_seq_prim="clk" */;
  input enable;
  input reset_n;
  input clk /* synthesis syn_isclock = 1 */;
  output [11:0]data;
  output valid;
  input miso;
  output sck;
  output cs;
endmodule
