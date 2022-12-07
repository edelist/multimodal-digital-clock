`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/02/2022 01:23:08 PM
// Design Name: 
// Module Name: top
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


module top(mode, clk, reset, hours_i, mins_i, secs_i, hours, mins, secs);
    input clk, reset;
    input[1:0]mode;
    input [4:0]hours_i;
    input [5:0]mins_i;
    input [5:0]secs_i;
    
    output [4:0]hours;
    output [5:0]mins;
    output [5:0]secs;
    
    reg clk_1sec, mux_o;
    
    clock_divider_1sec D0(.clk_i(clk), .reset(reset), .clk_o(clk_1sec));
    
    always@(mode) begin
        case (mode)
            2'b00: mux_o = {}
            2'b01: //clock24
            2'b10: //tstopwatch
            2'b11: //timer
        endcase
     end // always
     
     
    
    
endmodule
