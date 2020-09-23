`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.09.2020 21:54:31
// Design Name: 
// Module Name: KeyShift
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


module KeyShift #(parameter shift1 = 1) 
    (
    input [0:27] key_in,
    output reg [0:27] key_out
    );
    
    always@*
    begin: shiftAlways
        integer i;
        
        if (shift1 == 1)
        begin
            key_out[27] = key_in[0];
            
            for (i = 0; i < 27; i = i + 1) begin
                key_out[i] = key_in[i + 1];
            end
        end
        else
        begin
            key_out[27] = key_in[1];
            key_out[26] = key_in[0];
            
            for (i = 0; i < 26; i = i + 1) begin
                key_out[i] = key_in[i + 2];
            end
        end
            
    end
    
endmodule
