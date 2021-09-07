// Contador Ascendente BCD con Clear
// El contador cuenta en el flanco negativo
`timescale 1ns/1ns
module bcdcounter(
  input clk,
  output reg [3:0] Count,
  input Clear,
  output reg carry);

  always @ (Clear)
    if (Clear == 0 ) begin
      Count = 4'b0000;
      carry = 1;
    end
  
  always @ ( negedge CLK )
    if ( Count == 9 ) begin
      Count = 0;
      carry = 0;
      end else begin
      Count = Count + 1;
      carry = 1;
      end

endmodule 
	
