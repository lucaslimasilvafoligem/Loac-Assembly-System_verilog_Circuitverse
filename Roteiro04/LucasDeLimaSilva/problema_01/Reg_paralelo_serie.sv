// Write your modules here!
module REG_PARALELO(
  input logic clk,
  input logic D3,D2,D1,D0,
  output logic Q3,Q2,Q1,Q0
);
  
  always_ff @(posedge clk) begin
     Q3 <= D3;
     Q2 <= D2;
     Q1 <= D1;
     Q0 <= D0;
  end
endmodule