//Flip-Flop S-R con reloj utilizando nand
`timescale 1ns/10ps
module srff_clk (
    input S, R, clk,
    output Q, QPrima);

    wire ws,wr;
    nand (ws,S,clk);
    nand (wr,R,clk);
    nand (Q,ws,QPrima);
    nand (QPrima,Q,wr);

endmodule

