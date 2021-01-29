//Modulo de estimulo para el circuito medio_sumador
module test_medio_sumador();
    reg A,B;
    wire S,Cout;
    medio_sumador(A,B,S,Cout);
initial
    begin
        A = 1'b0; B = 1'b0;
        #25 A = 1'b0; B = 1'b1;
        #25 A = 1'b1; B = 1'b0;
        #25 A = 1'b1; B = 1'b1;
        #25;
    end
initial
#150 $finish; //Duracion de la simulacion
endmodule