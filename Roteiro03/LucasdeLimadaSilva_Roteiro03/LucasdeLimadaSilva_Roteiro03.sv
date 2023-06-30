parameter numeroBits = 8;
module Ula(
  input logic signed [numeroBits - 1:0] A, B,
           input logic[1:0] F,
           output logic signed [numeroBits - 1:0] Saida,
           output logic Flag
);

  always_comb begin
    case(F)
      2'b00: Saida <= A & B;
      2'b01: Saida <= A | B;
      2'b10: Saida <= A + B;
      2'b11: Saida <= A - B;
    endcase
    if(F == 2'b10 || F == 2'b11)
      if((A > 0 && B > 0 && Saida < 0) || (A < 0 && B < 0 && Saida >= 0))
      	Flag <= 1;
      if((A > 0 && B <= A &&  Saida < 0) || (A < 0 && B >= A && Saida > 0))
      	Flag <= 1;
    else
      Flag <= 0;
    
  end
  
endmodule