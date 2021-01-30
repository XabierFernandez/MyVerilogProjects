//Modulo de descripcion del circuito sumador de 4 bits (Ripple adder)
//Usando puertas logicas
module sumador_4bits(
    input [3:0] A,
    input [3:0] B,
    input Ci,
    output [3:0] S,
    output Co);
        wire C1,C2,C3;
        sumador_completo sc0(A[0],B[0],Ci,S[0],C1);
        sumador_completo sc1(A[1],B[1],Ci,S[1],C2);
        sumador_completo sc2(A[2],B[2],Ci,S[2],C3);
        sumador_completo sc3(A[3],B[3],Ci,S[3],Co);
endmodule