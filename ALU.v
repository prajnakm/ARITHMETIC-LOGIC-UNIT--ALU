`timescale 1ns / 1ps

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


//The alu.v file contains the Verilog code for a 4-bit Arithmetic Logic Unit (ALU).
//The module takes two 4-bit inputs (A and B) and a 3-bit select signal (sel).
//Based on the select value, the ALU performs different arithmetic or logical operations and stores the result in the output.
//A case statement is used inside an always @(*) block to select the required operation.
//The operations implemented are Addition, Subtraction, AND, OR, and NOT.
//The always @(*) block indicates combinational logic, meaning the output changes immediately whenever the inputs change. 
//The output is declared as reg because it is assigned inside the always block.
