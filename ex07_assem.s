# 7. Faça um algoritmo que leia uma variável e some 5, caso seja par ou some 8, caso seja ímpar,
# imprimir o resultado desta operação.

.data
	msg1: .asciiz "\n Escreva um numero:  "
	#msg2: .asciiz "\n O resto da divisao e: "
	msg2: .asciiz "\n O valor final equivale a:  "
.text

main:
	li $t0, 2 #Divisão
	li $t1, 0 #Resto
	li $t2, 5 #Variável soma 1
	li $t3, 8 #Variável soma 2
	
	# Numero
	li $v0, 4
	la $a0, msg1
	syscall
	li $v0, 5
	syscall
	add $t4, $v0, 0
	
	#Descobrir se e par ou impar
	rem $t5, $t4, $t0
	
	#li $v0, 4
	#la $a0, msg2
	#syscall
	#li $v0, 1
	#add $a0, $t4, 0
	#syscall 
		
	beq $t1, $t5, se
	j senao
	
	se:
		add $t6, $t4, $t2
		
		li $v0, 4
		la $a0, msg2
		syscall
		
		li $v0, 1
		add $a0, $t6, 0
		syscall
		j fimse
	
	senao:
		add $t6, $t4, $t3
		
		li $v0, 4
		la $a0, msg2
		syscall
		
		li $v0, 1
		add $a0, $t6, 0
		syscall
	fimse: