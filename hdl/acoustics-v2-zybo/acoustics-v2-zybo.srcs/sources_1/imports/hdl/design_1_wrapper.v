//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
//Date        : Wed Nov 29 23:15:20 2023
//Host        : Gleb-ThinkPad running 64-bit major release  (build 9200)
//Command     : generate_target design_1_wrapper.bd
//Design      : design_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_wrapper
   (adc_clock,
    locked,
    resetn,
    sys_clock);
  output adc_clock;
  output locked;
  input resetn;
  input sys_clock;

  wire adc_clock;
  wire locked;
  wire resetn;
  wire sys_clock;

  design_1 design_1_i
       (.adc_clock(adc_clock),
        .locked(locked),
        .resetn(resetn),
        .sys_clock(sys_clock));
endmodule
