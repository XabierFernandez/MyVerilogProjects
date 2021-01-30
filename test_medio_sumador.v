//Modulo de estimulo para el circuito medio_sumador
`timescale 1ns/1ns
module test_medio_sumador();
    reg A,B;
    wire S,Cout;
    medio_sumador ms1(A,B,S,Cout);
initial
    begin
      $dumpfile("out.vcd");
      $dumpvars(1,test_medio_sumador);
        A = 1'b0; B = 1'b0;
        #25 A = 1'b0; B = 1'b1;
        #25 A = 1'b1; B = 1'b0;
        #25 A = 1'b1; B = 1'b1;
        #25;
    end
initial
#150 $finish; //Duracion de la simulacion
endmodule
