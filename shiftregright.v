
// Registro de Desplazamiento de 4 bits a la Derecha con Clear Usando Case 
// El registro cambia en el flanco negativo
`timescale 1ns/1ns
module shftregright(
  input CLK,SHFT,LD,
  output reg [3:0] D,
  input [3:0] InP,
  input InS,Clear);
  
  always @(Clear)
  if (Clear == 0)
    D = 4'b0000;        // Clear (asíncrono, activo cero)
  always @(negedge CLK)
  case ({LD,SHFT,Clear})        // Concatenar es {}
    3'b011 : D = {InS,D[3:1]};  // Shift Right
    3'b101 : D = InP;           // Carga Paralela,LD con precedencia sobre SHFT
    3'b111 : D = InP;           
  endcase
endmodule

