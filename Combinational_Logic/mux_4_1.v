`timescale 1ns / 1ps


module mux_4_1(
    input [3:0]i, [1:0]s,
    output y
    );
    
    wire [3:0]w;
    wire [1:0]sbar;
    
    not n1(sbar[1],s[1]);
    not n2(sbar[0],s[0]);
    
    and m1(w[0],sbar[1],sbar[0],i[0]);
    and m2(w[1],sbar[1],s[0],i[1]);
    and m3(w[2],s[1],sbar[0],i[2]);
    and m4(w[3],s[1],s[0],i[3]);
    
    or v(y,w[0],w[1],w[2],w[3]);
    
endmodule
