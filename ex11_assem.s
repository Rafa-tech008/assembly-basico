# 11. Escrever um algoritmo que leia uma quantidade desconhecida de numeros e conte quantos deles
# estao nos seguintes intervalos: [0-25], [26-50], [51-75] e [76-100]. A entrada de dados deve terminar
# quando for lido um número negativo.
# *Sabe-se que a entrada deve ser um número entre 0 e 100, validar a entrada para que não permita
# numeros fora deste intervalo

.data
msg1: .asciiz "\n Digite um numero: "
msg2: .asciiz "\n Numero invalido - Digite entre 0 e 100"
msg3: .asciiz "\n Quantidade entre 0 e 25: "
msg4: .asciiz "\n Quantidade entre 26 e 50: "
msg5: .asciiz "\n Quantidade entre 51 e 75: "
msg6: .asciiz "\n Quantidade entre 76 e 100: "
.text

main:

    # Inicializa os contadores
    li $t1, 0      # faixa 0-25
    li $t2, 0      # faixa 26-50
    li $t3, 0      # faixa 51-75
    li $t4, 0      # faixa 76-100

loop:
    li $v0, 4
    la $a0, msg1
    syscall
    li $v0, 5
    syscall
    add $t0, $v0, 0

    # Encerra se for negativo
    bltz $t0, fim-se

    # Verifica se é maior que 100
    bgt $t0, 100, invalido

    # Classifica nas faixas
    ble $t0, 25, faixa1
    ble $t0, 50, faixa2
    ble $t0, 75, faixa3
    j faixa4

faixa1:
    addi $t1, $t1, 1
    j loop

faixa2:
    addi $t2, $t2, 1
    j loop

faixa3:
    addi $t3, $t3, 1
    j loop

faixa4:
    addi $t4, $t4, 1
    j loop

invalido:
    li $v0, 4
    la $a0, msg2
    syscall
    j loop

fim-se:

    # Mostra contador 0-25
    li $v0, 4
    la $a0, msg3
    syscall

    li $v0, 1
    move $a0, $t1
    syscall

    # Mostra contador 26-50
    li $v0, 4
    la $a0, msg4
    syscall

    li $v0, 1
    move $a0, $t2
    syscall

    # Mostra contador 51-75
    li $v0, 4
    la $a0, msg5
    syscall

    li $v0, 1
    move $a0, $t3
    syscall

    # Mostra contador 76-100
    li $v0, 4
    la $a0, msg6
    syscall

    li $v0, 1
    move $a0, $t4
    syscall