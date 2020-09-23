`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.09.2020 10:03:29
// Design Name: 
// Module Name: Sbox8
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


module Sbox8(
input [0:5] sin,
    output reg [0:3] sout
    );
    
    always@*
    begin
       case (sin)
          6'b000000: sout = 13;
          6'b000001: sout = 1;
          6'b000010: sout = 2;
          6'b000011: sout = 15;
          6'b000100: sout = 8;
          6'b000101: sout = 13;
          6'b000110: sout = 4;
          6'b000111: sout = 8;
          6'b001000: sout = 6;
          6'b001001: sout = 10;
          6'b001010: sout = 15;
          6'b001011: sout = 3;
          6'b001100: sout = 11;
          6'b001101: sout = 7;
          6'b001110: sout = 1;
          6'b001111: sout = 4;
          6'b010000: sout = 10;
          6'b010001: sout = 12;
          6'b010010: sout = 9;
          6'b010011: sout = 5;
          6'b010100: sout = 3;
          6'b010101: sout = 6;
          6'b010110: sout = 14;
          6'b010111: sout = 11;
          6'b011000: sout = 5;
          6'b011001: sout = 0;
          6'b011010: sout = 0;
          6'b011011: sout = 14;
          6'b011100: sout = 12;
          6'b011101: sout = 9;
          6'b011110: sout = 7;
          6'b011111: sout = 2;
          6'b100000: sout = 7;
          6'b100001: sout = 2;
          6'b100010: sout = 11;
          6'b100011: sout = 1;
          6'b100100: sout = 4;
          6'b100101: sout = 14;
          6'b100110: sout = 1;
          6'b100111: sout = 7;
          6'b101000: sout = 9;
          6'b101001: sout = 4;
          6'b101010: sout = 12;
          6'b101011: sout = 10;
          6'b101100: sout = 14;
          6'b101101: sout = 8;
          6'b101110: sout = 2;
          6'b101111: sout = 13;
          6'b110000: sout = 0;
          6'b110001: sout = 15;
          6'b110010: sout = 6;
          6'b110011: sout = 12;
          6'b110100: sout = 10;
          6'b110101: sout = 9;
          6'b110110: sout = 13;
          6'b110111: sout = 0;
          6'b111000: sout = 15;
          6'b111001: sout = 3;
          6'b111010: sout = 3;
          6'b111011: sout = 5;
          6'b111100: sout = 5;
          6'b111101: sout = 6;
          6'b111110: sout = 8;
          6'b111111: sout = 11;
       endcase    
    end
endmodule
