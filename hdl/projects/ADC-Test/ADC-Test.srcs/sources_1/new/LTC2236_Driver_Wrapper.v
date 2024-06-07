`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: TartanAUV
// Engineer: 
// 
// Create Date: 05/09/2024 11:18:07 PM
// Design Name: LTC2236 AXI Driver
// Module Name: LTC2236_Driver_Wrapper
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

module LTC2236_Driver_Wrapper # (
		parameter integer C_M00_AXIS_TDATA_WIDTH = 32)
    (
		input wire  m00_axis_aclk, // This is the same clock as ADC_CONV_CLK. Currently 10MHz. Must be below 25MHZ.
		input wire  m00_axis_aresetn,
		output wire  m00_axis_tvalid,
		output reg [C_M00_AXIS_TDATA_WIDTH-1 : 0] m00_axis_tdata,
		output wire [(C_M00_AXIS_TDATA_WIDTH/8)-1 : 0] m00_axis_tstrb,
		output wire  m00_axis_tlast,
		input wire  m00_axis_tready,
        input wire [9:0] data_in
    );
    
    // Sets TVALID to always be high.
    assign m00_axis_tvalid = 1'b1;
    
    // Transmit data if both TVALID (set by the master) and TREADY (set by the slave) are high
    assign tx_en = m00_axis_tvalid; //& m00_axis_tready;
    // Transmit the ADC's output depending on if tx is enabled
    // The bus size must be a multiple of 8 bits, so we do 16 bits.
    always @(posedge m00_axis_aclk) begin
        if (tx_en) begin
            m00_axis_tdata <= {22'b0, data_in};
        end
        else begin
            m00_axis_tdata <= 32'b0;
        end
    end
    
endmodule
