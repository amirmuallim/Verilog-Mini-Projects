`timescale 1ns / 1ps




 module majority_16bit (
    input [15:0] Data,
    output reg Out
);

    integer ones_count;
    
    always @(Data) begin
        ones_count = 0;
        for (integer i = 0; i < 16; i = i + 1) 
        begin
            if (Data[i] == 1'b1)
                ones_count = ones_count + 1;
        end
        
        if (ones_count >= 9)
            Out = 1'b1;
        else
            Out = 1'b0;
    end

endmodule


