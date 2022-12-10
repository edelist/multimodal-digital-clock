`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/09/2022 12:39:31 PM
// Design Name: 
// Module Name: AP_7segment
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


module AP_7segment(AP_i, reset, AP_o);
    input AP_i, reset;
    output reg AP_o;

    always @(*) begin
        if (!reset)
            AP_o <= 7'b1111111; // BLANK
        else
            case (AP_i)
                0: AP_o <= 7'b0001000; // "A"
                1: AP_o <= 7'b0011000; // "P"
//                Z: AP_o <= 7'b1111111;             no work bien :(((((((((((
                default: AP_o <= 7'b1111111; // BLANK
            endcase
        end
endmodule
