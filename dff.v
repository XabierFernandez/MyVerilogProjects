`timescale 1ns/10ps
//Flip-Flop D Master-Slave sin Preset ni Clear 
//El Reloj está Negado (cambia en el flanco positivo)
module dff(
   input D,
   output Q,
   output QPrima,
   input CLK);
        always @ (posedge CLK)
        Q = D;  
        assign QPrima = ~Q;
endmodule