.data
    N:  .word  4       # N é o número para calcular o fatorial, insira o numero que deseja testar
    Fact: .word  1     # Variável para armazenar o fatorial

.text
    la  x10, N         # Carrega o endereço da variável N em x10
    lw  x11, 0(x10)    # Carrega o valor de N em x11
    addi x11, x11, 1   # Adiciona 1 ao valor de N
    li  x12, 1         # Inicializa o registrador x12 com o valor 1 (fatorial inicial)
    li  x13, 1         # Inicializa o contador x13 com o valor 1

loop:
    beq x13, x11, end  # Verifica se o contador alcançou o valor de N
    mul x12, x12, x13  # Multiplica o fatorial parcial por x13
    addi x13, x13, 1   # Incrementa o contador em 1
    j   loop           # Salta de volta para o início do loop

end:
    sw  x12, Fact(x0)  # Armazena o valor final do fatorial na variável Fact
