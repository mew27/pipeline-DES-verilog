`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.09.2020 18:39:32
// Design Name: 
// Module Name: PermutedChoice1
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


module PermutedChoice1(
    input [0:63] in,
    output [0:55] out
    );
    
    assign out[0] = in[56];
    assign out[1] = in[48];
    assign out[2] = in[40];
    assign out[3] = in[32];
    assign out[4] = in[24];
    assign out[5] = in[16];
    assign out[6] = in[8];
    assign out[7] = in[0];
    assign out[8] = in[57];
    assign out[9] = in[49];
    assign out[10] = in[41];
    assign out[11] = in[33];
    assign out[12] = in[25];
    assign out[13] = in[17];
    assign out[14] = in[9];
    assign out[15] = in[1];
    assign out[16] = in[58];
    assign out[17] = in[50];
    assign out[18] = in[42];
    assign out[19] = in[34];
    assign out[20] = in[26];
    assign out[21] = in[18];
    assign out[22] = in[10];
    assign out[23] = in[2];
    assign out[24] = in[59];
    assign out[25] = in[51];
    assign out[26] = in[43];
    assign out[27] = in[35];
    
    assign out[28] = in[62];
    assign out[29] = in[54];
    assign out[30] = in[46];
    assign out[31] = in[38];
    assign out[32] = in[30];
    assign out[33] = in[22];
    assign out[34] = in[14];
    assign out[35] = in[6];
    assign out[36] = in[61];
    assign out[37] = in[53];
    assign out[38] = in[45];
    assign out[39] = in[37];
    assign out[40] = in[29];
    assign out[41] = in[21];
    assign out[42] = in[13];
    assign out[43] = in[5];
    assign out[44] = in[60];
    assign out[45] = in[52];
    assign out[46] = in[44];
    assign out[47] = in[36];
    assign out[48] = in[28];
    assign out[49] = in[20];
    assign out[50] = in[12];
    assign out[51] = in[4];
    assign out[52] = in[27];
    assign out[53] = in[19];
    assign out[54] = in[11];
    assign out[55] = in[3];
    
endmodule
