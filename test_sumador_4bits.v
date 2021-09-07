`timescale 1ns/1ns

// Módulo de Estímulo para el sumador completo de 4 bits
module test_sumador_4bits();
  reg [3:0]A,B;
  wire [4:0]Suma;
  sumador_4bits s4bits(A,B,0,Suma[3:0],Suma[4]);
initial
begin          
  $dumpfile("out.vcd");
  $dumpvars(0,test_sumador_4bits);
       A =  0;   B =  0;
  #25  A =  2;   B =  1;
  #25  A =  4;   B = 10;
  #25  A = 10;   B = 10;
  #25  A =  2;   B =  2;
  #25  A = 15;   B = 15;
  #25;  
end
initial
#250 $finish;
endmodule
