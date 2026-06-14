`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.06.2026 13:05:05
// Design Name: 
// Module Name: full_adder
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


module full_adder (
    input af,
    input bf,
    input cin,
    output sumf,
    output carryf
);

wire w1, w2, w3;

Half_Adder h1 (
    .a(af),
    .b(bf),
    .sum(w1),
    .carry(w2)
);

Half_Adder h2 (
    .a(w1),
    .b(cin),
    .sum(sumf),
    .carry(w3)
);

assign carryf = w2 | w3;

endmodule
