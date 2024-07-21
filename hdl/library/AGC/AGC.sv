`default_nettype none

 
/*
 * x_target = x_current * A_target / A_current
*/

module AGC
  #(TARGET  = 81,
    WINDOW_2N = 8)
   (input  wire [7:0] S_TDATA,
    input  wire S_TVALID,
    output logic [7:0] M_TDATA,
    output logic M_TVALID,
    output logic [7:0] gain_encoding
    input wire clk, reset_n);

    logic [7:0] rms_tdata;
    logic rms_tvalid;

    RMS #(.WIDTH(8),
          .WINDOW_2N(WINDOW_2N)) rms_0(.s_TDATA(S_TDATA),
                                       .s_TVALID(S_TVALID),
                                       .rms_TDATA(rms_tdata),
                                       .rms_TVALID(rms_tvalid),
                                       .clk(clk), .reset_n(reset_n));

    // What is being performed here: A_target = (X_target * A_current) / X_current

    // For storing the current value of the gain A_current
    logic [7:0] current_pos;
    
    // For storing X_target * A_current
    logic [15:0] product;

    /* Multiplication. Computing X_target * A_current */
    always_ff @(posedge clk) begin
        if (~reset_n)
            product <= 16'b1;
        else begin
            product <= current_pos * TARGET;
        end
    end

    logic [23:0] div_out_tdata;
    logic [15:0] quotient;
    logic div_out_tvalid;

    // Computes division with a 16-bit dividend and an 8-bit divisor.
    div_16_7_lut div_0 (
        .aclk(clk),                                      // input wire aclk
        .s_axis_divisor_tvalid(rms_tvalid),    // input wire s_axis_divisor_tvalid
        .s_axis_divisor_tdata(rms_tdata),      // input wire [7 : 0] s_axis_divisor_tdata
        .s_axis_dividend_tvalid(1),  // input wire s_axis_dividend_tvalid
        .s_axis_dividend_tdata(product),    // input wire [15 : 0] s_axis_dividend_tdata
        .m_axis_dout_tvalid(div_out_tvalid),          // output wire m_axis_dout_tvalid
        .m_axis_dout_tdata(div_out_tdata)            // output wire [23 : 0] m_axis_dout_tdata
    );

    // The resulting quotient is equal to the new gain A_target
    assign quotient = div_out_tdata[23:8];
    
    // Update current gain value
    always_ff @(posedge clk) begin
        if (~reset_n)
            current_pos <= '0;
        else if (div_out_tvalid)
            current_pos <= quotient;
    end

    always_ff @(posedge clk)
        if (~reset_n) M_TVALID <= 0;
        else          M_TVALID <= div_out_tvalid;

    
    assign M_TDATA = quotient[7:0];
    
    /* Output the gain encoding corresponding to the nearest gain value (1, 2, 4, 8, 16, 32, 64)
       to the calculated target gain */
    always_comb begin
        if (M_TDATA < 2) gain_encoding = 8'b0001_0001;
        else if (M_TDATA <= 3) gain_encoding = 8'b0010_0010;
        else if (M_TDATA <= 6) gain_encoding = 8'b0011_0011;
        else if (M_TDATA <= 12) gain_encoding = 8'b0100_0100;
        else if (M_TDATA <= 24) gain_encoding = 8'b0101_0101;
        else if (M_TDATA <= 48) gain_encoding = 8'b0110_0110;
        else gain_encoding = 8'b0111_0111; 
    end

endmodule: AGC
