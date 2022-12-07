`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/02/2022 12:40:27 PM
// Design Name: 
// Module Name: cloc_12
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


module clock12(reset, clk, hours, mins, secs, A_P);

input reset, clk;
output reg [4:0] hours;
output reg [5:0] mins;
output reg [5:0] secs;
output reg A_P; // 0 is AM, 1 is PM

always @(posedge clk or negedge reset) begin
    if (!reset) begin
        hours <= 0;
        mins <= 0;
        secs <= 0;
        A_P <= 0;
    end else begin
        secs <= secs + 1;
        if (secs == 60) begin
            secs <= 0;
            mins <= mins + 1;
            if (mins == 60) begin
                mins <= 0;
                hours <= hours + 1;
                if (hours == 12) begin
                    hours <= 0;
                    A_P <= ~A_P;
                end
            end
        end
    end
 end // always
 


endmodule