`timescale 1ns / 1ps

module testbench_ALU;

reg [3:0] A, B;
reg [2:0] sel;
wire [3:0] result;

// Instantiate ALU
ALU uut (
    .A(A),
    .B(B),
    .sel(sel),
    .result(result)
);

initial begin
    $display("A B sel | Result");
    $monitor("%b %b %b | %b", A, B, sel, result);

    // Test ADD
    A = 4'b0101; B = 4'b0011; sel = 3'b000; #10;

    // Test SUB
    A = 4'b0101; B = 4'b0011; sel = 3'b001; #10;

    // Test AND
    A = 4'b0101; B = 4'b0011; sel = 3'b010; #10;

    // Test OR
    A = 4'b0101; B = 4'b0011; sel = 3'b011; #10;

    // Test NOT
    A = 4'b0101; sel = 3'b100; #10;

    $finish;
end

endmodule

//The alu_tb.v file contains the testbench used to verify the functionality of the ALU module. 
//It creates input signals for the ALU and observes the generated output during simulation.
//The inputs are declared as reg because their values are changed inside the testbench, while the output is declared as wire since it receives data from the ALU module.
//The ALU module is instantiated inside the testbench and connected to the test signals.
//Different input combinations and select values are applied sequentially using an initial block along with time delays (#10).
//The $display and $monitor statements are used to print input and output values during simulation for easier verification of the ALU operations.
