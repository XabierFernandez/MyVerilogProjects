`timescale 1ns/100ps

//Módulo de Descripción del Reto 1
//Usando Compuertas
module mi_modulo(
  input x,  
  input y,
  input z,
  output m);
        wire e;
        xor (e,x,z);
        and (m,e,y);    
endmodule