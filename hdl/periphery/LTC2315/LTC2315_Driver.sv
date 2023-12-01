module LTC2315_Driver 
   (input  logic enable, reset_n, clk,
    output logic [11:0] data,
    output logic valid,
    input  logic miso,
    output logic sck, cs);

    /* SCK GENERATION */
    assign sck = clk & enable & ~reset_n;

    /* CS GENERATION */
    logic [4:0] sck_cntr;

    always_ff @(posedge clk) begin
        if (~reset_n) 
            sck_cntr <= '0;
        else if (enable)
            if (sck_cntr == 5'd17)
                sck_cntr <= 0;
            else begin
                sck_cntr <= sck_cntr + 1;
            end
    end

    assign cs = sck_cntr < 4 | ~enable | ~reset_n;

    /* CLOCKING IN DATA */
    logic [13:0] data_padded;

    always_ff @(posedge clk) begin
        if (~reset_n)
            data_padded <= 14'b10000000000001;
        else if (~cs)
            data_padded <= (data_padded << 1) | miso;
    end

    /* VALID FLAG */
    logic cs_ff;
    always_ff @(posedge clk)
        if(~reset_n)
            cs_ff <= 1'b1;
        else begin
            cs_ff <= cs;
        end
    
    assign valid = ~cs_ff & cs & ~data[0] & ~data[13];
    
endmodule