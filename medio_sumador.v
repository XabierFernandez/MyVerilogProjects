//Modulo de descripcion del circuito medio sumador
//Usando puertas logicas
`timescale 1ns/1ns
module medio_sumador(
    input A,
    input B,
    output S,
    output Cout);
        xor (S,A,B);
        and (Cout,A,B);
endmodule
