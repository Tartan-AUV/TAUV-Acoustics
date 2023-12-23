`default_nettype none
`timescale 1ns / 1ps

module RMS_Test
   ();

    logic clk, reset_n, rms_TVALID, s_TVALID;
    logic [7:0] rms_TDATA, s_TDATA;

    RMS #(.WIDTH(8), .WINDOW_2N(8)) dut(.*);
    
    logic signed [15:0] gen_data;
    
    sine_gen gen (
        .aclk(clk),                                // input wire aclk
        .m_axis_data_tvalid(s_TVALID),    // output wire m_axis_data_tvalid
        .m_axis_data_tdata(gen_data)      // output wire [15 : 0] m_axis_data_tdata
    );
    
    assign s_TDATA = gen_data[15:8];

    initial begin
        clk = 1;
        forever #100 clk = ~clk; // 5Mhz
    end

    initial begin
        @(posedge clk)
        reset_n <= 0;
        @(posedge clk)
        reset_n <= 1;

        #200e3 $finish; // 200us
    end

endmodule: RMS_Test