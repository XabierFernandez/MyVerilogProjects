`timescale 1ns/1ns

//Módulo de Estímulo para el Circuito Sumador de 4 Bits
module test_sumador();
  reg  [3:0]A, B;
  reg Cin;
  wire [4:0]Suma_R;
  wire [4:0]Suma_CLA;
  wire c4,c3,c2,c1;

  sumador_4bits_ripple ripple(A,B,Cin,Suma_R[3:0], Suma_R[4]);
  sumador_4bits_CLA       CLA(A,B,Cin,Suma_CLA[3:0], Suma_CLA[4]);
  
initial
  begin
    $dumpfile("out.vcd");
    $dumpvars(1,test_sumador);
    $dumpvars(1,ripple);

        A =  7; B = 15; Cin=0;
	#50	A = 15; B =  0;
    #50 Cin=1;
    #50 A =  7; B = 15; Cin=0;
	#50	A = 15; B =  0;
	#50;
  end
initial
#250 $finish; //Duración de la Simulación
endmodule

/*

        A =  3; B = 10;
	#50	A = 5; B =  7;
	#50	A =  2; B = 11;
	#50	A =  5; B = 13;
	#50	A = 10; B =  3;
	#50	A = 13; B =  5;
    
    */

