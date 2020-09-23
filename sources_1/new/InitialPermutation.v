`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.09.2020 22:42:56
// Design Name: 
// Module Name: InitialPermutation
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module InitialPermutation(
    input [0:8*8 - 1] in,
    output reg [0:8*8 - 1] out
    );

    always @*
    begin: permute
    
        integer i;

        for (i = 0; i < 8; i = i + 1) begin
            out[0 * 8 + i] = in[(7 - i) * 8 + 1];
            out[1 * 8 + i] = in[(7 - i) * 8 + 3];
            out[2 * 8 + i] = in[(7 - i) * 8 + 5];
            out[3 * 8 + i] = in[(7 - i) * 8 + 7];
            out[4 * 8 + i] = in[(7 - i) * 8 + 0];
            out[5 * 8 + i] = in[(7 - i) * 8 + 2];
            out[6 * 8 + i] = in[(7 - i) * 8 + 4];
            out[7 * 8 + i] = in[(7 - i) * 8 + 6];
            
        end
    end
    
endmodule
