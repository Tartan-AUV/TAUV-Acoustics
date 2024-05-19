`default_nettype none

module Top
   (input  wire [3:0] btn,
    output reg [3:0] led,
    input  wire sysclk);

    always_ff @(posedge sysclk) begin
        led <= btn;
    end

endmodule