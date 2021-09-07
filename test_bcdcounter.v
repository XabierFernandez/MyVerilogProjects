//Modulo de Estímulo para el Contador BCD
`timescale 1ns/1ns
module test_bcdcounter();
  reg  clk,Clear;
  wire [3:0] unidades, decenas;
  wire carry1, carry2;
  BCDCounter C1(clk,unidades,Clear,carry1);
  BCDCounter C2(carry1,decenas,Clear,carry2);
initial clk = 1'b0; //Inicializamos el Reloj a cero
  always #5 clk = ~clk; //El ciclo de Reloj (cambia cada 5 ns, periodo=10 ns)
initial
  begin 
               
    $dumpfile("out.vcd");
    $dumpvars(1,test_bcdcounter);
            Clear = 1'b0; 
       #5   Clear = 1'b1; 
       #282 Clear = 1'b0;
       #20  Clear = 1'b1; 
       #282;
  end
initial
  $monitor ("CLR=%b, COUNT=%x,%x ",Clear,decenas,unidades);        
initial
#600 $finish;
endmodule