`default_nettype none

module RMS
  #(WIDTH = 16,
    WINDOW_2N = 8)
   (input  wire signed [WIDTH-1:0] s_TDATA, // signed
    input  wire s_TVALID,
    output logic [WIDTH-1:0] rms_TDATA,     // unsigned
    output logic rms_TVALID,
    input  wire clk, reset_n);

    logic [WINDOW_2N-1:0] write_idx;
    logic [WINDOW_2N:0] initial_write_cntr;
    reg [WIDTH*2-1:0] fifo [(2**WINDOW_2N-1):0];

    logic [WIDTH*2-1:0] tail;

    logic filled;
    assign filled = initial_write_cntr >= (1 << WINDOW_2N);

    logic signed [WIDTH*2-1:0] s_sq;
    logic [(WIDTH*2+WINDOW_2N-1):0] squares_sum;

    logic [WIDTH-1:0] output_reg;
    

    /* Multiplication */
    
    MULT_MACRO #(.WIDTH_A(WIDTH),
                 .WIDTH_B(WIDTH),
                 .LATENCY(3)) mult1(.A(s_TDATA),
                                    .B(s_TDATA),
                                    .P(s_sq),
                                    .CE(1),
                                    .CLK(clk),
                                    .RST(~reset_n));
    
    /* Write to fifo */
    always_ff @(posedge clk) begin
        if (~reset_n) begin
            write_idx <= '0;
            rms_TVALID <= 0;
//            fifo <= '0;
        end else if (s_TVALID) begin
            fifo[write_idx] <= s_sq;
            write_idx <= write_idx + 1;
        end
    end

    /* Filled counter */
    always_ff @(posedge clk)
        if (~reset_n)
            initial_write_cntr <= '0;
        else if (~filled & s_TVALID)
            initial_write_cntr <= initial_write_cntr + 1;

    /* Read the value being replaced */
    always_ff @(posedge clk) 
        if (~reset_n) 
            tail <= '0;
        else
            tail <= fifo[write_idx];
    
    /* Update squares sum */
    always_ff @(posedge clk)
        if (~reset_n) begin
            squares_sum <= '0;
        end else if (~filled & s_TVALID) begin
            squares_sum <= squares_sum + s_sq;
        end else begin
            squares_sum <= squares_sum + s_sq - tail;
        end

    /* Update output */
    always_ff @(posedge clk)
        if (~reset_n) begin
            output_reg <= '0;
        end else begin
            output_reg <= (squares_sum >> WINDOW_2N);
        end
    
    logic [15:0] sqrt_out;
    sqrt_cordic_16 sqrt1 (
      .aclk(clk),                                        // input wire aclk
      .s_axis_cartesian_tvalid(1),  // input wire s_axis_cartesian_tvalid
      .s_axis_cartesian_tdata(squares_sum >> WINDOW_2N),    // input wire [15 : 0] s_axis_cartesian_tdata
      .m_axis_dout_tvalid(),            // output wire m_axis_dout_tvalid
      .m_axis_dout_tdata(sqrt_out)              // output wire [15 : 0] m_axis_dout_tdata
    );
    
    assign rms_TDATA = sqrt_out[WIDTH-1:0];
    assign rms_TVALID = filled; // not correct because of pipelining but who cares

endmodule: RMS
    

