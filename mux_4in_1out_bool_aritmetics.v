`timescale 1ns/10ps
//Modulo de descripcion del 
//circuito multiplexor 4 entradas a 1 salida
module mux_4in_1out_bool_aritmetics(
    input  [3:0] I,
    input [1:0] sel,
    output Q);
        assign Q = (~sel[1] & ~sel[0] & I[0]) |
                   (~sel[1] &  sel[0] & I[1]) |
                   ( sel[1] & ~sel[0] & I[2]) |
                   ( sel[1] &  sel[0] & I[3]);
endmodule

