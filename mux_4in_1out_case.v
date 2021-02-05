`timescale 1ns/10ps
//Modulo de descripcion del 
//circuito multiplexor 4 entradas a 1 salida
module mux_4in_1out_case(
    input  [3:0] I,
    input [1:0] sel,
    output reg Q);
        always @ (sel[1],sel[0],I[0],I[1],I[2],I[3]);
            case (sel)
                2'b00 : Q = I[0];
                2'b01 : Q = I[1];
                2'b10 : Q = I[2];
                2'b11 : Q = I[3];
            endcase
endmodule

