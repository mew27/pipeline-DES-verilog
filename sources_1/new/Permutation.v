`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.09.2020 16:19:08
// Design Name: 
// Module Name: Permutation
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


module Permutation(
    input [0:31] in,
    output [0:31] out
    );
    
    assign out[0] = in[15];
    assign out[1] = in[6];
    assign out[2] = in[19];
    assign out[3] = in[20];
    assign out[4] = in[28];
    assign out[5] = in[11];
    assign out[6] = in[27];
    assign out[7] = in[16];
    
    assign out[8] = in[0];
    assign out[9] = in[14];
    assign out[10] = in[22];
    assign out[11] = in[25];
    assign out[12] = in[4];
    assign out[13] = in[17];
    assign out[14] = in[30];
    assign out[15] = in[9];
    
    assign out[16] = in[1];
    assign out[17] = in[7];
    assign out[18] = in[23];
    assign out[19] = in[13];
    assign out[20] = in[31];
    assign out[21] = in[26];
    assign out[22] = in[2];
    assign out[23] = in[8];
    
    assign out[24] = in[18];
    assign out[25] = in[12];
    assign out[26] = in[29];
    assign out[27] = in[5];
    assign out[28] = in[21];
    assign out[29] = in[10];
    assign out[30] = in[3];
    assign out[31] = in[24];    
    
endmodule
