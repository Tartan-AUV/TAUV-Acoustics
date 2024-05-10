`timescale 1ns / 1ps

module LTC6912_Driver
  #(parameter SPI_CLK_DOUBLE_DIV = 1000, // f_SCK = f_CLK / (SPI_CLK_DOUBLE_DIV) * 2;
    parameter SCK_OFFSET = 100)          // MOSI, CS delayed after SCK rising edge to meet
                                         // MCP42000 timing requirements
   (input  logic clk, reset_n,
    input  logic [7:0] val,
    input  logic valid,                  // Asserted when input is valid
    output logic ready,                  // ready to receive data (no SPI transaction in progress)
                                         // val is NOT latched if ready is deasserted
    output logic cs, mosi, sck);

    	/* SCK GENERATION */
	integer clk_div;
    integer sck_offset_cntr;
    logic sck_delayed_pulse;
    logic sck_offset_cntr_en;
	
    // Long very convoluted always_ff block that generates the SCK clock
    // As well as the delayed pulse, accounting for hold time of the LTC6912
    // Uses a few different counters for timing
	always_ff @(posedge clk)
	begin
        if (reset_n == 1'b0) begin
            sck_offset_cntr_en <= 1'b0;
            clk_div <= 32'h0;
            sck     <= 1'b0;
            sck_delayed_pulse     <= 1'b0;
            sck_offset_cntr <= 32'h0;
        end else if (clk_div == SPI_CLK_DOUBLE_DIV - 1) begin
            if (sck == 1'b0) // rising edge
                sck_offset_cntr_en <= 1'b1;
            clk_div  <= 32'h0;
            sck      <= ~sck;
        end else begin
            clk_div <= clk_div + 1;
        end

        if (sck_offset_cntr == SCK_OFFSET - 1) begin
            sck_delayed_pulse   <= 1'b1;
            sck_offset_cntr     <= 32'h0;
            sck_offset_cntr_en  <= 1'b0;
        end else if (sck_offset_cntr_en == 1'b1) begin
            sck_offset_cntr     <= sck_offset_cntr + 32'h1;
            sck_delayed_pulse   <= 1'b0;
        end else begin
            sck_delayed_pulse <= 1'b0;
	    end
    end
	/* SPI BIT-BANGING */
	
	// Control signals
	logic shift_cntr_clr,
         shift_en,
         wiper_ld;
	
    // Registers
	integer shift_cntr;
    logic [7:0] data_reg;

    // Data register loading and bit shifting
    // Modified to work for LTC6912
    always_ff @(posedge clk) begin
        if (shift_cntr_clr) shift_cntr <= 32'h0;
        if (reset_n == 1'b0) begin
            data_reg[7:0] <= 8'b0000_0000;
            shift_cntr <= 32'h0;
        end else if (ready & valid) begin
            data_reg[7:0] <= val;
        end else if (shift_en) begin
            data_reg <= data_reg << 1;
            shift_cntr <= shift_cntr + 1;
        end
    end

    // Data ready flag
    // Used to signal the FSM to move from IDLE to SCK_WAIT state
    logic data_ready_ff;
    always_ff @(posedge clk)
        if (~reset_n) 
            data_ready_ff <= 1'b0;
        else if (ready & valid)
            data_ready_ff <= 1'b1;
        else if (data_ready_ff & ~cs)
            data_ready_ff <= 1'b0;
	
	assign mosi = data_reg[7];

	
	/* FSM */
    // Status points
    logic shift_done;
    assign shift_done = shift_cntr >= 7 ? 1'b1 : 1'b0;

    enum logic [1:0] {IDLE, SCK_WAIT, TXN0} state, nextState;

    // FSM flip-flops
    always_ff @(posedge clk) begin
        if (reset_n == 1'b0)
            state <= IDLE;
        else
            state <= nextState;
    end
    
    // Next-state and output logic
    always_comb begin
        nextState = state;
        cs = 1; 
        shift_cntr_clr = 0;
        shift_en = 0;
        ready = 0;
        // IDLE state is for receiving data input
        // SCK_WAIT state is waiting for delayed pulse
        // TXN0 state is for sending data
        case (state)
            IDLE: begin
                if (data_ready_ff) begin
                    nextState = SCK_WAIT;
                    ready = 0;
                end else begin
                    ready = 1;
                end
            end

            SCK_WAIT: begin
                if (sck_delayed_pulse) begin
                    nextState = TXN0;
                    cs = 0;
                    shift_cntr_clr = 1;
                end else begin
                    ready = 0;
                end
            end

            TXN0: begin
                if (sck_delayed_pulse && shift_done) begin
                    nextState = IDLE;
                end else if (sck_delayed_pulse & ~shift_done) begin
                    shift_en = 1'b1;
                    cs = 1'b0;
                end else begin
                    cs = 1'b0;
                end
            end
        endcase
    end

endmodule
