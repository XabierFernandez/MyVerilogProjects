
//Módulo de Descripción del Circuito Carry Lookahead 4 bits
module carryLook_4bits(
  input [3:0] P,
  input [3:0] G,
  output [4:1] C,
  input Ci);
    wire h,i,j,k,a,b,c,d,e,f;
    and (h,P[3],P[2],P[1],P[0],Ci);
    and (i,P[3],P[2],P[1],G[0]);
    and (j,P[3],P[2],G[1]);
    and (k,P[3],G[2]);
    and (a,P[2],P[1],P[0],Ci);
    and (b,P[2],P[1],G[0]);
    and (c,P[2],G[1]);
    and (d,P[1],P[0],Ci);
    and (e,P[1],G[0]);
    and (f,P[0],Ci);
    or  (C[4],h,i,j,k,G[3]);
    or  (C[3],a,b,c,G[2]);
    or  (C[2],d,e,G[1]);
    or  (C[1],f,G[0]);
endmodule
