# 2. Uma fábrica de camisetas produz os tamanhos pequeno, médio e grande, cada uma sendo vendida
# respectivamente por 10, 12 e 15 reais. Construa um algoritmo em que o usuário forneça a
# quantidade de camisetas pequenas, médias e grandes referentes a uma venda, e a máquina informe
# quanto será o valor arrecadado.

.data
	msg1: .asciiz "\n Qual a pedida de camisas pequenas: "
	msg2: .asciiz "\n Qual a pedida de camisas medias: "
	msg3: .asciiz "\n Qual a pedida de camisas grandes: "
	msg4: .asciiz "\n O preco das camisas pequenas Ã©: "
	msg5: .asciiz "\n O preco das camisas medias sao: "
	msg6: .asciiz "\n O preco das camisas grandes sao: "
.text

main:
	#Variáveis
	li $t0, 10 # Pequena em t0
	li $t1, 12 # Media em t1
	li $t2, 15 # Grande em t2
	
	#Print das mensagens
	li $v0, 4
	la $a0, msg1
	syscall
	li $v0, 5
	syscall
	add $t3, $v0, 0
	
	li $v0, 4
	la $a0, msg2
	syscall
	li $v0, 5
	syscall
	add $t4, $v0, 0
	
	li $v0, 4
	la $a0, msg3
	syscall
	li $v0, 5
	syscall
	add $t5, $v0, 0
	
	#Conta
	mul $t6, $t0, $t3
	mul $t7, $t1, $t4
	mul $t8, $t2, $t5
	
	#Ler mensagem de print
	li $v0, 4
	la $a0, msg4
	syscall
	
	#Printar mensagem e resultado
	li $v0, 1
	add $a0, $t6, 0
	syscall
	
	li $v0, 4
	la $a0, msg5
	syscall
	
	li $v0, 1
	add $a0, $t7, 0
	syscall
	
	li $v0, 4
	la $a0, msg6
	syscall
	
	li $v0, 1
	add $a0, $t8, 0
	syscall
