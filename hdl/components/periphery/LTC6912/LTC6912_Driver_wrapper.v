

module LTC6912_Driver_Wrapper
    #(parameter INPUT_DATA = 8'b0111_0111)
   (input wire reset_n, clk,
    output wire ready,
    output wire mosi, sck, cs,
    output reg high,
    output reg low);
    
    

    // Making a simple FSM that sends the input val at the right time
    // Waits for the ready signal from the driver
    reg [7:0] val;
    reg valid;

    // State encoding: IDLE = 2'b00, SEND = 2'b01, DONE = 2'b10
    reg [1:0] state, nextState;

    // Flip-flops for FSM
    always @(posedge clk) begin
        high <= 1'b1;
        low <= 1'b0;
        if (reset_n == 1'b0) state <= 2'b00;
        else state <= nextState;
    end

    // Next-state and output logic for FSM
    always begin
        valid = 1'b0;
        val = INPUT_DATA;
        case (state)
            // IDLE state
            2'b00: begin
                if (ready == 1'b1) nextState = 2'b01;
                else nextState = 2'b00;
            end
            // SEND state
            2'b01: begin
                valid = 1'b1;
                nextState = 2'b00;
            end
            // DONE state
            2'b10: begin
                valid = 1'b0;
                nextState = 2'b10;
            end
        endcase
    end

    // Instantiate driver
    LTC6912_Driver driver(clk, reset_n, val, valid, ready, cs, mosi, sck);

endmodule