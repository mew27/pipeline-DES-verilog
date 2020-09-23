`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.09.2020 23:09:36
// Design Name: 
// Module Name: DES_tb
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


module DES_tb();

    reg clk;
    
    parameter CLOCK_PERIOD = 10;
    
    always#(CLOCK_PERIOD/2) clk = ~clk; 
    
    reg [0:63] plaintext_s;
    reg [0:63] key_s;
    reg en_s;
    reg reset_n_s;
    wire [0:63] cyphertext_s;
    
    DES des (.plaintext(plaintext_s), .key(key_s), .clk(clk), .en(en_s), .reset_n(reset_n_s), .cyphertext(cyphertext_s) );
    
    initial
    begin
        plaintext_s = 0;
        key_s = 0;
        clk = 0;
        en_s = 0;
        reset_n_s = 0;
        
        #20 en_s = 1;
        #20 plaintext_s = 1;
        #20 key_s = 1;
        #20 reset_n_s = 1;
        
        #100 plaintext_s = 0;
        #100 key_s = 0;
        
        #500 plaintext_s = 'h8787878787878787;
        key_s = 'h0e329232ea6d0d73;
        #10 plaintext_s = 'h02468aceeca86420;
        key_s = 'hf1571c947d9e859;
       // key_s = 'h3031323334353637;
        //key_s = 'h133457799bbcdff1;
    end
    
    
endmodule
