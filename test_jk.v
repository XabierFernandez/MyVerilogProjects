//Modulo de estimulo para el flip-flop JK
`timescale 1ns/10ps
module test_jk ();
    reg J,K,clk,Preset,Clear;
    wire Q,QPrima;
    JKFF jkff(J,K,Q,QPrima,clk,Preset,Clear);
    
    initial clk = 1'b0; //Inicializacion del reloj
    always #5 clk = ~clk; //El ciclo de reloj cambia cada 5ns
    initial
        begin
            $dumpfile("out.vcd");
            $dumpvars(1,test_jk);
                Preset=1'b0;Clear=1'b1;J=1'b1;K=1'b0;
            #28 Preset=1'b1;Clear=1'b0;
            #25 Clear=1'b1;J=1'b1;K=1'b0;
            #25 J=1'b0;K=1'b0;
            #25 J=1'b0;K=1'b1;
            #25 J=1'b1;K=1'b1;
            #25;
        end
    initial
    #250 $finish;
endmodule