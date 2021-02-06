//Modulo de estimulo para Flip-Flop
//S-R con reloj
`timescale 1ns/10ps
module test_srff ();
    reg S, R, clk;
    wire Q,QPrima;
    srff_clk srff_1(S, R,clk,Q,QPrima);

    initial begin
        $dumpfile("out.vcd");
        $dumpvars(1, test_srff);
        clk = 1;
        S=0; R=0; #20
        S=1; R=0; #20
        S=0; R=0; #20
        S=0; R=1; #20
        S=0; R=0; #20
        S=1; R=1; #20
        #20
        $finish;
    end    
endmodule

