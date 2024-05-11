`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/09/2024 11:18:07 PM
// Design Name: 
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


module LTC2236_Driver_Wrapper(
    input clk,
    input [9:0] data_bus
    );
    
    reg [9:0] data;
    
    always @(posedge clk) begin
        data <= data_bus;
    end
endmodule
