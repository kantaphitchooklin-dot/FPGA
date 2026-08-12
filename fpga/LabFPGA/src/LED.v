module led (
    input wire clk,
    output reg led
);
    
    reg[24:0] counter = 0;

    always @(posedge clk) begin
        counter <= counter + 1; 
        if (counter == 25'd13_500_000) begin
            counter <=0;
            led <= ~led;
        end
    end
endmodule