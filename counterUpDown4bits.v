//Contador Up/Down con clear usando case
//El contador cuenta en el flanco negativo
module counterUpDown4bits(
    input clk,
    input UD,
    output reg [3:0] Count,
    input Clear);

    always @ (Clear)
    if (Clear == 0)
        Count = 4'b0000;
    always @ (negedge clk)
    case ({UD,Clear})
        2'b01 : Count = Count + 1;
        2'b11 : Count = Count - 1;
    endcase    
endmodule
