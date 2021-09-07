`timescale 1ns/10ps

//Módulo de Descripción del Demultiplexor 1 a 4
module Demux_1_4(
  input I,
  input [1:0] s,
  output reg [3:0] Y); 
    // escriba su código aquí
    always @ (s[1],s[0],I)
    case (s)
        2'b00 : Y[0] = I;
        2'b01 : Y[1] = I;
        2'b10 : Y[2] = I;
        2'b11 : Y[3] = I;
    endcase
endmodule