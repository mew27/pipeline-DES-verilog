`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.09.2020 12:02:02
// Design Name: 
// Module Name: Feistel
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


module Feistel(
    input [0:31] right,
    input [0:47] key,
    output [0:31] fout
    );
    
    wire [0:47] expansion_out; 
    wire [0:47] sbox_in;
    wire [0:31] sbox_out;
    
    Expansion e (.in(right), .out(expansion_out)); 
    
    assign sbox_in = expansion_out ^ key;
    
    Sbox1 sbox1 (.sin(sbox_in[0:5]), .sout(sbox_out[0:3]));
    Sbox2 sbox2 (.sin(sbox_in[6:11]), .sout(sbox_out[4:7]));
    Sbox3 sbox3 (.sin(sbox_in[12:17]), .sout(sbox_out[8:11]));
    Sbox4 sbox4 (.sin(sbox_in[18:23]), .sout(sbox_out[12:15]));
    Sbox5 sbox5 (.sin(sbox_in[24:29]), .sout(sbox_out[16:19]));
    Sbox6 sbox6 (.sin(sbox_in[30:35]), .sout(sbox_out[20:23]));
    Sbox7 sbox7 (.sin(sbox_in[36:41]), .sout(sbox_out[24:27]));
    Sbox8 sbox8 (.sin(sbox_in[42:47]), .sout(sbox_out[28:31]));
    
    Permutation p (.in(sbox_out), .out(fout));
endmodule
