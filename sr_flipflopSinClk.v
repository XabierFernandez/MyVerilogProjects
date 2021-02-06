//Flip-Flop S-R sin reloj utilizando nor
`timescale 1ns/10ps
module srff (
    input S, R,
    output Q, QPrima);

    nor (QPrima,S,Q);
    nor (Q,R,QPrima);

endmodule

