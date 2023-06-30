module contador_up_down (
  input logic clk, reset, selecao,
  output logic [3:0] saida
);

  always_ff @(posedge clk or posedge reset) begin
    if (reset)
      saida <= 4'b0000;
    else if (selecao)
      saida <= saida - 1;
    else
      saida <= saida + 1;
  end

endmodule
