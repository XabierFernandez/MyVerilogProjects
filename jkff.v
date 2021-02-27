//Flip-flop J-K Master-Slave 
//con Preset y Clear usando case
//el reloj esta negado (cambia en el flanco positivo)
module jkff (
    input J,K,
    output reg Q,
    output QPrima,
    input clk,Preset,Clear);
    
    assign QPrima = ~Q;
    always @ (Preset, Clear)
    if (Preset == 0)
        Q = 1'b1;            //Preset
        else if (Clear == 0)  
            Q = 1'b0;       //Clear
    always @ (posedge clk)
    case ({J,K,Preset,Clear}) //{} simbolo concatenar
        4'b0111 : Q = 1'b0;   //Reset
        4'b1011 : Q = 1'b1;   //Set
        4'b1111 : Q = ~Q;     //Toggle, else no change
    endcase
endmodule