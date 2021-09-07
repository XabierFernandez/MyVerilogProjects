`timescale 1ns/10ps
//Modulo de descripcion del 
//circuito multiplexor 4 entradas a 1 salida
module mux_4in_1out_if_else(
    input  [3:0] I,
    input [1:0] sel,
    output reg Q);
        always @ (sel[1],sel[0],I[0],I[1],I[2],I[3])
        if (s[1]==0) 
            if (s[0]==0) 
                Q = I[0];
            else
                Q = I[1];
        else
            if (s[0]==0) 
                Q = I[2];
            else
                Q = I[3];
endmodule

