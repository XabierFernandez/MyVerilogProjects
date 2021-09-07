//Modulo de descripcion del circuito medio sumador
//Usando puertas logicas

module medio_sumador(
    input A,
    input B,
    output S,
    output Cout);
        xor (S,A,B);
        and (Cout,A,B);
endmodule
