`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.06.2026 18:15:52
// Design Name: 
// Module Name: ripple_carry
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


module ripple_carry(
    input [3:0]a_rca,
    input [3:0]b_rca,
    input c_rca,
    output [3:0]sum_rca,
    output cout
    );
    wire w1,w2,w3;
    
    full_adder_main FA1(a_rca[0],b_rca[0],c_rca,sum_rca[0],w1);
    full_adder_main FA2(a_rca[1],b_rca[1],w1,sum_rca[1],w2);
    full_adder_main FA3(a_rca[2],b_rca[2],w2,sum_rca[2],w3);
    full_adder_main FA4(a_rca[3],b_rca[3],w3,sum_rca[3],cout);
endmodule
