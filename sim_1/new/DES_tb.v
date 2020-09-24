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
       
        
        #(CLOCK_PERIOD*3) plaintext_s = 'h8787878787878787;
        key_s = 'h0e329232ea6d0d73;
        //cyphertext should be : 0
        reset_n_s = 1;
        en_s = 1;
        #CLOCK_PERIOD plaintext_s = 'h02468aceeca86420;
        key_s = 'hf1571c947d9e859;
        //cyphertext should be : da02ce3a89ecac3b
        #CLOCK_PERIOD plaintext_s = 'h4369616f757a0000;
        key_s = 'h6162656466323134;
        //cyphertext should be : ea90d4e460e10781
        #CLOCK_PERIOD plaintext_s = 'hAAAAAAAAAAAAAAAA;
        key_s = 'hAAAAAAAAAAAAAAAA;
        //cyphertext should be: C4322BE19E9A5A17
        #CLOCK_PERIOD plaintext_s = 'h5555555555555555;
        key_s = 'h5555555555555555;
        //cyphertext should be: 3BCDD41E6165A5E8
        #CLOCK_PERIOD plaintext_s = 0;
        key_s = 0;
        //cyphertext should be 8CA64DE9C1B123A7
        #CLOCK_PERIOD plaintext_s = 'hFFFFFFFFFFFFFFFF;
        key_s = 'hFFFFFFFFFFFFFFFF;
        //cyphertext should be 7359B2163E4EDC58
        #CLOCK_PERIOD en_s = 0; //pause the computation
        
        #(CLOCK_PERIOD*20) en_s = 1;
        
        #(CLOCK_PERIOD*11)
        if ( cyphertext_s == 'h0000000000000000 )
            $display ("Test result: negative");
        else 
            $display ("Test result: POSITIVE!!");

        #(CLOCK_PERIOD)
        if ( cyphertext_s == 'hda02ce3a89ecac3b )
            $display ("Test result: negative");
        else 
            $display ("Test result: POSITIVE!!");            
        
        #(CLOCK_PERIOD)
        if ( cyphertext_s == 'hea90d4e460e10781 )
            $display ("Test result: negative");
        else 
            $display ("Test result: POSITIVE!!");
            
        #(CLOCK_PERIOD)
        if ( cyphertext_s == 'hC4322BE19E9A5A17 )
            $display ("Test result: negative");
        else 
            $display ("Test result: POSITIVE!!"); 
        
        #(CLOCK_PERIOD)
        if ( cyphertext_s == 'h3BCDD41E6165A5E8 )
            $display ("Test result: negative");
        else 
            $display ("Test result: POSITIVE!!");
           
        #(CLOCK_PERIOD)
        if ( cyphertext_s == 'h8CA64DE9C1B123A7 )
            $display ("Test result: negative");
        else 
            $display ("Test result: POSITIVE!!");
            
         #(CLOCK_PERIOD)
        if ( cyphertext_s == 'h7359B2163E4EDC58 )
            $display ("Test result: negative");
        else 
            $display ("Test result: POSITIVE!!");           
                      
       // key_s = 'h3031323334353637;
        //key_s = 'h133457799bbcdff1;
    end
    
    
endmodule
