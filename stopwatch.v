`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/29/2022 12:41:58 PM
// Design Name: 
// Module Name: stopwatch
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


module stopwatch(reset, clk, hours, mins, secs);

input reset, clk;
output reg [4:0] hours;
output reg [5:0] mins;
output reg [5:0] secs;

always @(posedge clk or negedge reset) begin
    if (!reset) begin
        hours <= 0;
        mins <= 0;
        secs <= 0;
    end else begin
        secs <= secs + 1;
        if (secs == 60) begin
            secs <= 0;
            mins <= mins + 1;
            if (mins == 60) begin
                mins <= 0;
                hours <= hours + 1;
            end
        end
    end
 end // always
 


endmodule
