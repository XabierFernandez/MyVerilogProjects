//Modulo de Estímulo para el Registro de Corrimiento
`timescale 1ns/1ns

 module test_shiftregbidir();
  reg  CLK,LD,Clear,InS,RL;
  reg [3:0] InP;
  wire [3:0] D;
   shiftregbidir R1(CLK,RL,LD,D,InP,InS,Clear);
initial CLK = 1'b0; //Inicializamos el Reloj a cero
always #5 CLK = ~CLK; //El ciclo de Reloj (cambia cada 5 nS, periodo=10 nS)
initial
  begin 
      $dumpfile("out.vcd");
      $dumpvars(1,test_shiftregbidir);
       Clear = 1'b0; LD = 1'b0; RL = 1'b1; 
       InP = 4'b0101; InS = 1'b1;
       #5   Clear = 1'b1;
       #52  Clear = 1'b0;
       #20  Clear = 1'b1; LD = 1'b1;
       #15     LD = 1'b0;
       #52     LD = 1'b1;
       #11     LD = 1'b0; RL = 1'b0;
  end
initial
  $monitor ("LD=%b, RL=%b, CLR=%b, D=%b ",LD,RL,Clear,D);        
initial
#200 $finish;
endmodule	