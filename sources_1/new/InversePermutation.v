`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.09.2020 12:44:57
// Design Name: 
// Module Name: InversePermutation
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


module InversePermutation(
    input [0:8*8 - 1] in,
    output reg [0:8*8 - 1] out
    );

    always @*
    begin: permute
    
        integer i;

        for (i = 0; i < 8; i = i + 1) begin
            out[(7 - i) * 8 + 1] = in[0*8 + i];
            out[(7 - i) * 8 + 3] = in[1*8 + i];
            out[(7 - i) * 8 + 5] = in[2*8 + i];
            out[(7 - i) * 8 + 7] = in[3*8 + i];
            out[(7 - i) * 8 + 0] = in[4*8 + i];
            out[(7 - i) * 8 + 2] = in[5*8 + i];
            out[(7 - i) * 8 + 4] = in[6*8 + i];
            out[(7 - i) * 8 + 6] = in[7*8 + i];
            
        end
    end
endmodule
