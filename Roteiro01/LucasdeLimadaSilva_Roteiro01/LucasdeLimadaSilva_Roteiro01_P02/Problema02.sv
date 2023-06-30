module somador_de_8bits( input signed [7:0] valor1, valor2, output signed [7:0] S, output reg Z, N, P);
  
    always @(*) begin
      
      S = valor1 + valor2;
      if (S[7] != 1) begin
        N = 0;
      end else begin
        N = 1;
      end
      if (S != 0) begin
        Z = 0;
      end else begin
        Z = 1;
      end
      if (S[0] != 0) begin
        P = 0;
      end else begin
        P = 1;
      end
    end
endmodule