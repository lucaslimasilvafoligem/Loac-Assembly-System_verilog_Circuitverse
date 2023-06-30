module elevador(input A1, A2, A3, M, output porta_do_elevador);
  logic Porta_1, Porta_2;
  or (Porta_1, A1, A2, A3);
  not (Porta_2, M);
  and (porta_do_elevador, Porta_1, Porta_2);
endmodule
