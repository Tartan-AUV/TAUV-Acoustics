

module LTC2315_Driver_Wrapper
   (input wire enable, reset_n, clk,
    output wire [11:0] data,
    output wire valid,
    input  wire miso,
    output wire sck, cs);

    LTC2315_Driver driver(enable, reset_n, clk, data, valid, miso, sck, cs);

endmodule