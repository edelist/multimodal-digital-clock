`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/29/2022 12:42:16 PM
// Design Name: 
// Module Name: timer
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


module timer(reset, clk, hours_i, mins_i, secs_i, hours, mins, secs);

input reset, clk;
input [4:0]hours_i;
input [5:0]mins_i;
input [5:0]secs_i;
output reg [4:0] hours;
output reg [5:0] mins;
output reg [5:0] secs;



always @(posedge clk or negedge reset) begin
    if (!reset) begin
        hours <= hours_i;
        mins <= mins_i;
        secs <= secs_i;
        
        
    end else
    
    begin
        if (secs == 0) begin
            secs <= 59;
            mins <= mins - 1; end
        else
            secs = secs - 1;
            
    begin
        if (mins == 0) begin
            mins <= 59;
            hours <= hours - 1; end
        else
            mins <= mins - 1;
            
    end // mins
    end // secs
 end // always


endmodule
