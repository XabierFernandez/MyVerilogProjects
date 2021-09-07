`timescale 1ns/1ns
//Modulo de Estímulo para el Contador Up/Down

 module test_shftregright();
  reg  CLK,LD,Clear,InS,SHFT;
  reg [3:0] InP;
  wire [3:0] D;
  shftregright shftregright1(CLK,SHFT,LD,D,InP,InS,Clear);
initial CLK = 1'b0; //Inicializamos el Reloj a cero
always #5 CLK = ~CLK; //El ciclo de Reloj (cambia cada 5 nS, periodo=10 nS)
initial
  begin 
      $dumpfile("out.vcd");
      $dumpvars(1,test_shftregright);
       Clear = 1'b0; LD = 1'b0; SHFT = 1'b1; 
       InP = 4'b0101; InS = 1'b1;
       #5   Clear = 1'b1;
       #52  Clear = 1'b0;
       #20  Clear = 1'b1; LD = 1'b1;
       #15     LD = 1'b0;
       #52;
  end
initial
  $monitor ("LD=%b, SHFT=%b, CLR=%b, D=%b, CLK=%b ",LD,SHFT,Clear,D,CLK);        
initial
#200 $finish;
endmodule
