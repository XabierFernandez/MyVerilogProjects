`timescale 1ns/10ps
//Modulo de descripcion del 
//circuito multiplexor 4 entradas a 1 salida
module mux_4in_1out(
    input  [3:0] I,
    input [1:0] sel,
    output Q);
        wire a,b,c,d,sel0,sel1;
        not (sel1,sel[1]);
        not (sel0,sel[0]);
        and (a,I[0],sel1,sel0);      // selection bits 00
        and (b,I[1],sel1,sel[0]);    // selection bits 01
        and (c,I[2],sel[1],sel0);    // selection bits 10
        and (d,I[3],sel[1],sel[0]);  // selection bits 11
        or (Q,a,b,c,d);
endmodule

