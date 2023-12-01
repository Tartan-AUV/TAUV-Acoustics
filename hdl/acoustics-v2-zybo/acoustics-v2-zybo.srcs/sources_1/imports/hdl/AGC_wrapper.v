//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
//Date        : Thu Nov 30 00:27:57 2023
//Host        : Gleb-ThinkPad running 64-bit major release  (build 9200)
//Command     : generate_target AGC_wrapper.bd
//Design      : AGC_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module AGC_wrapper
   (cs,
    data,
    miso,
    sck,
    sys_clock,
    valid);
  output cs;
  output [11:0]data;
  input miso;
  output sck;
  input sys_clock;
  output valid;

  wire cs;
  wire [11:0] d;
  wire [7:0] data;
  wire miso;
  wire sck;
  wire sys_clock;
  wire valid;

  AGC AGC_i
       (.cs(cs),
        .data(d),
        .miso(miso),
        .sck(sck),
        .sys_clock(sys_clock),
        .valid(valid));
        
  assign data[7:0] = d[11:4];
endmodule
