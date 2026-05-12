`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.05.2026 21:35:34
// Design Name: 
// Module Name: ALU
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


module ALU (
    input [3:0] A,
    input [3:0] B,
    input [2:0] sel,
    output reg [3:0] result
);

always @(*) begin
    case(sel)
        3'b000: result = A + B;        // ADD
        3'b001: result = A - B;        // SUB
        3'b010: result = A & B;        // AND
        3'b011: result = A | B;        // OR
        3'b100: result = ~A;           // NOT
        default: result = 4'b0000;
    endcase
end

endmodule