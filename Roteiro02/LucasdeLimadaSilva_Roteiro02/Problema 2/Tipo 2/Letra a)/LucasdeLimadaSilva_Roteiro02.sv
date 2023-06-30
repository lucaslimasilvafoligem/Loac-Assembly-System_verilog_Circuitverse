module Roteamento(input logic[3:0] A, B,
                  input logic[1:0] SEL,
                  output logic[3:0] Saida);
  
  always_comb begin
    if(SEL == 0)
      Saida = A;
    else
      Saida = B;
  end
  
endmodule