module irrigacao(input logic Area0, Area1,
                 output logic [1:0] Saida);
  
  always_comb begin
    case({Area1, Area0})
      2'b00: Saida = 2'b00;
      2'b01: Saida = 2'b01;
      2'b10: Saida = 2'b10;
      2'b11: Saida = 2'b11;
    endcase
  end
  
endmodule