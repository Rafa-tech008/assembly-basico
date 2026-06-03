#12. Desenvolver um algoritmo que leia a altura, em centímetros de 15 pessoas. Este programa deverá
# calcular e mostrar:
# a. A menor altura do grupo;
# b. A maior altura do grupo;

.data
	msg1: .asciiz "\n Digite uma altura em cm: "
	msg2: .asciiz "\n A maior altura é: "
	msg3: .asciiz "\n A menor altura e: "
.text

main:
	li $t1, 15
	li $t2, 0 # Maior tamanho
	li $t3, 300 # Menor tamanho
loop:
	beqz $t1, fimse

	sub $t1, $t1, 1 #Contador para 15 pessoas
	
	li $v0, 4
	la $a0, msg1
	syscall
	li $v0, 5
	syscall
	add $t0, $v0, 0
	
	bgt $t0, $t2, maior # Filtrar a maior
sequencia:
	blt $t0, $t3, menor #Filtrar a menor
	j loop
	
maior:
	add $t2, $t0, 0
	j sequencia

menor:
	add $t3, $t0, 0
	j loop
	
fimse:
	li $v0, 4
	la $a0, msg2
	syscall
	
	li $v0, 1
	add $a0, $t2, 0
	syscall
	
	li $v0, 4
	la $a0, msg3
	syscall
	
	li $v0, 1
	add $a0, $t3, 0
	syscall