
    li x10, 0x1000000C     # Carrega o endereço da memória de dados em x10
    li x11, 0xFE           # Carrega o valor a ser escrito em x11

    sw x11, 0(x10)         # Escreve o valor em x11 no endereço de memória apontado por x10

    lw x10, 0(x10)         # Lê o valor da memória de dados no endereço apontado por x10 e armazena em x10
    