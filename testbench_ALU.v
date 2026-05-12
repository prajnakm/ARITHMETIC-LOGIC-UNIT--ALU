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
