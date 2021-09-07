
//Módulo de Descripción del Circuito del Sumador de 4 bits con CarryLookahead
module sumadorCarryLook_4bits(
  input [3:0] A, 
  input [3:0] B,
  input Ci,
  output [3:0] S,
  output Co);  
   wire [3:0]P,G;
   wire [4:1] C;
   wire temp;
   medio_sumador ms0(A[0],B[0],P[0],G[0]);
   medio_sumador ms1(A[1],B[1],P[1],G[1]);
   medio_sumador ms2(A[2],B[2],P[2],G[2]);
   medio_sumador ms3(A[3],B[3],P[3],G[3]);
   carryLook_4bits CL1(P,G,C,Ci);
   xor  (S[3],P[3],C[3]);
   xor  (S[2],P[2],C[2]);
   xor  (S[1],P[1],C[1]);
   xor  (S[0],P[0],Ci);
   assign Co=C[4];
endmodule
