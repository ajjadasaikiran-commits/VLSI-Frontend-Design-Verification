`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.06.2026 08:37:13
// Design Name: 
// Module Name: two_bit_comp
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


module two_bit_comp(

    input [1:0]a,b,
    output gt,et,lt
    );

    wire [11:0]w;

    not n1(w[0],a[0]);
    not n2(w[1],a[1]);
    not n3(w[2],b[0]);
    not n4(w[3],b[1]);   

   
    and m1(w[4],a[0],w[2],w[3]);
    and m2(w[5],a[1],w[3]);
    and m3(w[6],a[1],a[0],w[2]);

    or y1(gt,w[4],w[5],w[6]);

    
    xnor x1(w[7],a[0],b[0]);
    xnor x2(w[8],a[1],b[1]);

    and y2(et,w[7],w[8]);   

    
    and v1(w[9],w[0],w[1],b[0]);
    and v2(w[10],w[0],b[1],b[0]);
    and v3(w[11],w[1],b[1]);

    or y3(lt,w[9],w[10],w[11]);

endmodule