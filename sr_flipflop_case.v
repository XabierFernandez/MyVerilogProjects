//Flip-Flop S-R con reloj utilizando case
`timescale 1ns/10ps
module srff_case (
    input S, R, clk,
    output reg Q, QPrima);
    always @ (S, R) // si cambian las entradas
        case ({S, R, clk}) //{} operador concatenar
         3'b011: begin
             Q = 0;
             QPrima = 1;             
            end
        3'b101: begin
             Q = 1;
             QPrima = 0;             
            end
        3'b111: begin
             Q = 0;
             QPrima = 0;             
            end
        endcase
endmodule

