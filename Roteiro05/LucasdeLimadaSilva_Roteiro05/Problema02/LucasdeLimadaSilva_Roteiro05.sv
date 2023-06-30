parameter NBITS_COUNT = 4;
module contador_em_anel (
  input logic clk, reset, entrada_paralela,
  output logic [NBITS_COUNT-1:0] Saida
);
 
  always_ff @(posedge clk) begin
    if (reset)
      Saida <= 0;
    else if (entrada_paralela)
      Saida <= 1;
    else
      if (Saida[NBITS_COUNT-1] == 1)
        Saida <= 1;
      else
        Saida <= Saida << 1;
  end
endmodule
