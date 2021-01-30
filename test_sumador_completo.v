`timescale 1ns/100ps

// Módulo de Estímulo para el sumador completo
module test_sumador_completo();
  reg A,B,Cin;
  wire S,Cout;
  sumador_completo sc1(A,B,Cin,S,Cout);
initial
begin          
  $dumpfile("out.vcd");
  $dumpvars(1,test_sumador_completo);
       A = 1'b0; B = 1'b0; Cin =1'b0;//0
  #25  A = 1'b0; B = 1'b0; Cin =1'b1;//1
  #25  A = 1'b0; B = 1'b1; Cin =1'b0;//2
  #25  A = 1'b0; B = 1'b1; Cin =1'b1;//3
  #25  A = 1'b1; B = 1'b0; Cin =1'b0;//4
  #25  A = 1'b1; B = 1'b0; Cin =1'b1;//5
  #25  A = 1'b1; B = 1'b1; Cin =1'b0;//6
  #25  A = 1'b1; B = 1'b1; Cin =1'b1;//7
  
end
initial
#250 $finish;
endmodule