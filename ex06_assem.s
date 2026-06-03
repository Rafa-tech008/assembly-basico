# 6. Faça um algoritmo que leia dois valores inteiros A e B se os valores forem iguais deverá se somar
# os dois, caso contrário multiplique A por B. Ao final de qualquer um dos cálculos deve-se atribuir o
# resultado para uma variável C e mostrar seu conteúdo na tela.

.data
	msg1: .asciiz "\n Dê um valor a A:  "
	msg2: .asciiz "\n Dê um valor a B:  "
	msg3: .asciiz "\n A soma equivale a:  "
	msg4: .asciiz "\n A multiplicação equivale a: "
.text

main:
	#A
	li $v0, 4
	la $a0, msg1
	syscall
	li $v0, 5
	syscall
	add $t1, $v0, 0
	
	#B
	li $v0, 4
	la $a0, msg2
	syscall
	li $v0, 5
	syscall
	add $t2, $v0, 0
	

#Estrutura de decisão
	beq $t1, $t2, se
	j senao
	
	se:
	#Decisao onde A e B sao iguais
		add $t0, $t1, $t2 
	
		li $v0, 4
		la $a0, msg3
		syscall
	
		li $v0, 1
		add, $a0, $t0, 0
		syscall
		j fimse
		
	senao:
	#Decisao onde A e B sao diferentes
		mul $t0, $t1, $t2
			
		li $v0, 4
		la $a0, msg4
		syscall
		
		li $v0, 1
		add, $a0, $t0, 0
		syscall
		
	fimse: