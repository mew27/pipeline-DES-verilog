`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.09.2020 13:12:50
// Design Name: 
// Module Name: Expansion
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


module Expansion(
    input [0:4 * 8 - 1] in,
    output reg [0:6*8 - 1] out
    );
    
    always @*
    begin: permute
    
        integer i;

        for (i = 1; i < 5; i = i + 1) begin
            out[6*0 + i] = in[(i - 1) + 0];
            out[6*1 + i] = in[(i - 1) + 4];
            out[6*2 + i] = in[(i - 1) + 8];
            out[6*3 + i] = in[(i - 1) + 12];
            out[6*4 + i] = in[(i - 1) + 16];
            out[6*5 + i] = in[(i - 1) + 20];
            out[6*6 + i] = in[(i - 1) + 24];
            out[6*7 + i] = in[(i - 1) + 28];
        end
        
        out[0] = in[31];
        out[6] = in[3];
        out[12] = in[7];
        out[18] = in[11];
        out[24] = in[15];
        out[30] = in[19];
        out[36] = in[23];
        out[42] = in[27];
        
        out[5] = in[4];
        out[11] = in[8];
        out[17] = in[12];
        out[23] = in[16];
        out[29] = in[20];
        out[35] = in[24];
        out[41] = in[28];
        out[47] = in[0];     
    end
    
endmodule
