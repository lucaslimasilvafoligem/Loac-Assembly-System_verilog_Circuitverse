parameter tamanho = 2;
module detector_De_Sequencia(
  input clk, reset, in_bit,
  output Saida
);
 
  enum logic [(tamanho - 1):0] {A, B, C, D} state;

  always @(posedge clk)
    if (reset == 1) state <= A;
    else
      unique case (state)
        A:
          if (in_bit == 0)
            state <= A;
          else
            state <= B;
        B:
          if (in_bit == 0)
            state <= A;
          else
            state <= C;
C:
          if (in_bit == 0)
            state <= A;
          else
            state <= D;
        D:
          if (in_bit == 0)
            state <= A;
          else
            state <= D;
      endcase
 
  assign Saida = (state == D);

endmodule