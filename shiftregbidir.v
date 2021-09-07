// Registro de Desplazamiento Bidireccional de 4 bits
// El registro cambia en el flanco negativo
`timescale 1ns/1ns
module shiftregbidir(
  input CLK,RL,LD,
  output reg [3:0] D,
  input [3:0] InP,
  input InS,Clear);
  
  
always @(Clear)
if (Clear == 0)
D = 4'b0000; // Clear (asíncrono, activo cero)

  always @(negedge CLK)
    case ({LD,RL,Clear}) // Concatenar es {}
        3'b001 : D = {InS,D[3:1]}; // Shift Right
        3'b011 : D = {D[2:0],InS}; // Shift Left
        3'b101 : D = InP; // Carga Paralela,LD con precedencia sobre SHFT
        3'b111 : D = InP;
    endcase

endmodule

