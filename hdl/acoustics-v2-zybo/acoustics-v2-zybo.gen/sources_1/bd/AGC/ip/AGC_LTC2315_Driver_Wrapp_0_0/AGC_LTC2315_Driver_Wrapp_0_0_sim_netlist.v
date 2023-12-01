// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Thu Nov 30 00:29:44 2023
// Host        : Gleb-ThinkPad running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Dev/TAUV-Acoustics/hdl/acoustics-v2-zybo/acoustics-v2-zybo.gen/sources_1/bd/AGC/ip/AGC_LTC2315_Driver_Wrapp_0_0/AGC_LTC2315_Driver_Wrapp_0_0_sim_netlist.v
// Design      : AGC_LTC2315_Driver_Wrapp_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "AGC_LTC2315_Driver_Wrapp_0_0,LTC2315_Driver_Wrapper,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "LTC2315_Driver_Wrapper,Vivado 2023.2" *) 
(* NotValidForBitStream *)
module AGC_LTC2315_Driver_Wrapp_0_0
   (enable,
    reset_n,
    clk,
    data,
    valid,
    miso,
    sck,
    cs);
  input enable;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 reset_n RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME reset_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input reset_n;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, FREQ_HZ 87500000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0" *) input clk;
  output [11:0]data;
  output valid;
  input miso;
  output sck;
  output cs;

  wire \<const0> ;
  wire clk;
  wire cs;
  wire enable;
  wire reset_n;
  wire sck;
  wire valid;

  assign data[11] = \<const0> ;
  assign data[10] = \<const0> ;
  assign data[9] = \<const0> ;
  assign data[8] = \<const0> ;
  assign data[7] = \<const0> ;
  assign data[6] = \<const0> ;
  assign data[5] = \<const0> ;
  assign data[4] = \<const0> ;
  assign data[3] = \<const0> ;
  assign data[2] = \<const0> ;
  assign data[1] = \<const0> ;
  assign data[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  AGC_LTC2315_Driver_Wrapp_0_0_LTC2315_Driver_Wrapper inst
       (.clk(clk),
        .cs(cs),
        .enable(enable),
        .reset_n(reset_n),
        .valid(valid));
  LUT3 #(
    .INIT(8'h20)) 
    sck_INST_0
       (.I0(clk),
        .I1(reset_n),
        .I2(enable),
        .O(sck));
endmodule

(* ORIG_REF_NAME = "LTC2315_Driver" *) 
module AGC_LTC2315_Driver_Wrapp_0_0_LTC2315_Driver
   (cs,
    valid,
    enable,
    reset_n,
    clk);
  output cs;
  output valid;
  input enable;
  input reset_n;
  input clk;

  wire clk;
  wire cs;
  wire cs0;
  wire cs_ff;
  wire cs_ff_i_1_n_0;
  wire enable;
  wire reset_n;
  wire [4:0]sck_cntr;
  wire \sck_cntr[0]_i_1_n_0 ;
  wire \sck_cntr[1]_i_1_n_0 ;
  wire \sck_cntr[2]_i_1_n_0 ;
  wire \sck_cntr[3]_i_1_n_0 ;
  wire \sck_cntr[4]_i_2_n_0 ;
  wire valid;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h01FFFFFF)) 
    cs__0
       (.I0(sck_cntr[2]),
        .I1(sck_cntr[3]),
        .I2(sck_cntr[4]),
        .I3(enable),
        .I4(reset_n),
        .O(cs));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h5557FFFF)) 
    cs_ff_i_1
       (.I0(enable),
        .I1(sck_cntr[4]),
        .I2(sck_cntr[3]),
        .I3(sck_cntr[2]),
        .I4(reset_n),
        .O(cs_ff_i_1_n_0));
  FDRE cs_ff_reg
       (.C(clk),
        .CE(1'b1),
        .D(cs_ff_i_1_n_0),
        .Q(cs_ff),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \sck_cntr[0]_i_1 
       (.I0(sck_cntr[0]),
        .O(\sck_cntr[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h00FDFF00)) 
    \sck_cntr[1]_i_1 
       (.I0(sck_cntr[4]),
        .I1(sck_cntr[3]),
        .I2(sck_cntr[2]),
        .I3(sck_cntr[1]),
        .I4(sck_cntr[0]),
        .O(\sck_cntr[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \sck_cntr[2]_i_1 
       (.I0(sck_cntr[2]),
        .I1(sck_cntr[1]),
        .I2(sck_cntr[0]),
        .O(\sck_cntr[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \sck_cntr[3]_i_1 
       (.I0(sck_cntr[3]),
        .I1(sck_cntr[2]),
        .I2(sck_cntr[1]),
        .I3(sck_cntr[0]),
        .O(\sck_cntr[3]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \sck_cntr[4]_i_1 
       (.I0(reset_n),
        .O(cs0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h6AA8AAAA)) 
    \sck_cntr[4]_i_2 
       (.I0(sck_cntr[4]),
        .I1(sck_cntr[3]),
        .I2(sck_cntr[2]),
        .I3(sck_cntr[1]),
        .I4(sck_cntr[0]),
        .O(\sck_cntr[4]_i_2_n_0 ));
  FDRE \sck_cntr_reg[0] 
       (.C(clk),
        .CE(enable),
        .D(\sck_cntr[0]_i_1_n_0 ),
        .Q(sck_cntr[0]),
        .R(cs0));
  FDRE \sck_cntr_reg[1] 
       (.C(clk),
        .CE(enable),
        .D(\sck_cntr[1]_i_1_n_0 ),
        .Q(sck_cntr[1]),
        .R(cs0));
  FDRE \sck_cntr_reg[2] 
       (.C(clk),
        .CE(enable),
        .D(\sck_cntr[2]_i_1_n_0 ),
        .Q(sck_cntr[2]),
        .R(cs0));
  FDRE \sck_cntr_reg[3] 
       (.C(clk),
        .CE(enable),
        .D(\sck_cntr[3]_i_1_n_0 ),
        .Q(sck_cntr[3]),
        .R(cs0));
  FDRE \sck_cntr_reg[4] 
       (.C(clk),
        .CE(enable),
        .D(\sck_cntr[4]_i_2_n_0 ),
        .Q(sck_cntr[4]),
        .R(cs0));
  LUT6 #(
    .INIT(64'h000000007777777F)) 
    valid_INST_0
       (.I0(reset_n),
        .I1(enable),
        .I2(sck_cntr[4]),
        .I3(sck_cntr[3]),
        .I4(sck_cntr[2]),
        .I5(cs_ff),
        .O(valid));
endmodule

(* ORIG_REF_NAME = "LTC2315_Driver_Wrapper" *) 
module AGC_LTC2315_Driver_Wrapp_0_0_LTC2315_Driver_Wrapper
   (cs,
    valid,
    enable,
    reset_n,
    clk);
  output cs;
  output valid;
  input enable;
  input reset_n;
  input clk;

  wire clk;
  wire cs;
  wire enable;
  wire reset_n;
  wire valid;

  AGC_LTC2315_Driver_Wrapp_0_0_LTC2315_Driver driver
       (.clk(clk),
        .cs(cs),
        .enable(enable),
        .reset_n(reset_n),
        .valid(valid));
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
