`timescale 1ns/10ps
//Modulo de estimulo para el
//circuito multiplexor 4 entradas a 1 salida
module test_mux_4in_1out ();
    reg in0, in1, in2, in3;
    reg [1:0] select;
    wire out;
    mux_4in_1out mux4in1out({in3, in2, in1, in0},select,out);
    always #0.1     in0=~in0;
    always #0.5     in1=~in1;
    always #1       in2=~in2;
    always #5       in3=~in3;

    initial begin
        $dumpfile("out_mux.vcd");
        $dumpvars(0,test_mux_4in_1out);
        in0=0;in1=0;in2=0;in3=0;
        select=2'b00;
        #20
        select=2'b01;
        #20
        select=2'b10;
        #20
        select=2'b11;
        #20 
        $finish;
    end
endmodule

