//Modulo de descripcion del circuito sumador completo
//Usando puertas logicas
`timescale 1ns/1ns

module sumador_completo(
    input A,
    input B,
    input Cin,
    output S,
    output Cout);
        wire P,G,H;
        medio_sumador ms1(A,B,P,G);
        medio_sumador ms2(P,Cin,S,H);
        or (Cout,G,H);
endmodule