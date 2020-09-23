`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.09.2020 22:05:12
// Design Name: 
// Module Name: register
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


module register #(parameter width = 64)
(
    input [0:width - 1] in,
    input clk,
    input en,
    input res,
    output reg [0:width - 1] out
    );
    
    always@(posedge clk)
    begin
        if (res == 0) 
            out = 0;
        else
            if (en == 1) 
                out = in;
    end
endmodule
