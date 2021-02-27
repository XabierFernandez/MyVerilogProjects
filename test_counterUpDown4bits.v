//Modulo de estimulo para el contador Up/Down
module test_counterUpDown4bits ();
    reg clk,UD,Clear;
    wire [3:0] Count;
    counterUpDown4bits counterUpDown4bits1(clk,UD,Count,Clear);
    initial  clk=1'b0; //Inicializacion del reloj a cero
    always #5 clk=~clk; //El ciclo del reloj cambia cada 5ns, periodo 10ns
    initial begin
        $dumpfile("out.vcd");
        $dumpvars(1,test_counterUpDown4bits);
              Clear=1'b0;UD=1'b0;
        #5    Clear=1'b1;UD=1'b0;$display("UD=%b, CLR=%b, COUNT=%b",UD, Clear,Count);
        #182  Clear=1'b0;$display("UD=%b, CLR=%b, COUNT=%b",UD, Clear,Count);
        #20   Clear=1'b1;$display("UD=%b, CLR=%b, COUNT=%b",UD, Clear,Count);
        #25   UD=1'b1;$display("UD=%b, CLR=%b, COUNT=%b",UD, Clear,Count);
        #182;
  end
initial
  $monitor ("UD=%b, CLR=%b, COUNT=%b ",UD,Clear,Count);        
initial
#500 $finish;
endmodule

