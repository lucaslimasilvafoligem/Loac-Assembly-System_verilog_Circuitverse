addi x10, x0, 2
addi x11, x0, 4
loop:
    beq x10, x11, label
    add x10, x10, x10
    jal x0, loop
    
label: add x12, x11, x11
    addi x0, x0, 0
