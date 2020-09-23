`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.09.2020 22:01:39
// Design Name: 
// Module Name: DES
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


module DES(
    input [0:63] plaintext,
    input [0:63] key,
    input clk,
    input en,
    input reset_n,
    output [0:63] cyphertext
    );
    
   wire [0:63] iperm_wire_in;
   wire [0:63] ikey_wire_in;
   wire [0:17*64 - 1] feistel_in;
   wire [0:16*32 - 1] feistel_out;
   wire [0:17*56 - 1] key_in;
   wire [0:17*56 - 1] key_out;
   wire [0:16*64 - 1] reg_in;
   wire [0:16*48 - 1] subkey;
   wire [0:63] iperm_wire_out;
   
   register input_register (.in(plaintext), .clk(clk), .en(en), .res(reset_n), .out(iperm_wire_in));
   register key_in_register(.in(key), .clk(clk), .en(en), .res(reset_n), .out(ikey_wire_in));
   
   InitialPermutation iperm (.in(iperm_wire_in), .out(feistel_in[0:63]));
   PermutedChoice1 pchoice1 (.in(ikey_wire_in), .out(key_in[0:55]));
   
//   KeyShift(.key_in(key_in[0:27]), .key_out(key_out[0:27]));
//   KeyShift(.key_in(key_in[28:55]), .key_out(key_out[28:55]));
   
   genvar i;
   generate
      for (i=0; i < 16; i = i + 1)
      begin: DESROUND
      
        if (i == 0 || i == 1 || i == 8 || i == 15) begin: shifters1
            KeyShift ks1 (.key_in(key_in[i*56 : i*56 + 27]), .key_out(key_out[i*56 : i*56 + 27]));
            KeyShift ks2 (.key_in(key_in[i*56 + 28 : i*56 + 55]), .key_out(key_out[i*56 + 28 : i*56 + 55]));
        end else begin: shifters2
            KeyShift #(.shift1(2)) ks1 (.key_in(key_in[i*56 : i*56 + 27]), .key_out(key_out[i*56 : i*56 + 27]));
            KeyShift #(.shift1(2)) ks2 (.key_in(key_in[i*56 + 28 : i*56 + 55]), .key_out(key_out[i*56 + 28 : i*56 + 55]));
        end
        
         PermutedChoice2 pc2 (.in(key_out[i*56 : (i+1)*56 - 1]), .out(subkey[i*48:(i+1)*48 - 1]));      
         Feistel fstl (.right(feistel_in[i * 64 + 32: i * 64 + 63]), .key(subkey[i*48:(i+1)*48 - 1]), .fout(feistel_out[i*32:(i+1)*32 - 1]));
         assign reg_in[i*64 : i*64 + 31] = feistel_in[i * 64 + 32: i * 64 + 63];
         assign reg_in[i*64 + 32 : i*64 + 63] = feistel_out[i*32:(i+1)*32 - 1] ^ feistel_in[i * 64 : i * 64 + 31];
         
         register #(.width(56)) keypipe_register (.in(key_out[i*56 : (i+1)*56 - 1]), .clk(clk), .en(en), .res(reset_n), .out(key_in[(i+1)*56:(i+2)*56 - 1]));
         register pipe_reg (.in(reg_in[i*64 : (i + 1)*64 - 1]), .clk(clk), .en(en), .res(reset_n), .out(feistel_in[(i + 1) * 64 : (i + 2) * 64 - 1]));
         
      end
   endgenerate
   
   InversePermutation invp(.in({feistel_in[16*64 + 32:17*64-1], feistel_in[16*64:16*64 + 31]}), .out(iperm_wire_out));
   register output_register (.in(iperm_wire_out), .clk(clk), .en(en), .res(reset_n), .out(cyphertext));
endmodule


