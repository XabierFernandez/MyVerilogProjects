//Modulo de estimulo para Flip-Flop
//S-R sin reloj
`timescale 1ns/10ps
module test_srff ();
    reg S, R;
    wire Q,QPrima;
    srff srff_1(S, R,Q,QPrima);

    initial begin
        $dumpfile("out.vcd");
        $dumpvars(1, test_srff);
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

