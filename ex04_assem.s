# 4 .Faça um algoritmo que calcule e mostre a área de um trapézio usando apenas números inteiros.
#Sabe-se que: A = (base maior + base menor) * altura)/2.data

	msg1: .asciiz "\n Qual o tamanho da altura:  "
	msg2: .asciiz "\n Qual o tamanho da base maior:  "
	msg3: .asciiz "\n Qual o tamanho da base menor:  "
	msg4: .asciiz "\n A area mede: "
.text

main:
	li $t0, 2
	
	#Altura
	li $v0, 4
	la $a0, msg1
	syscall
	li $v0, 5
	syscall
	add $t1, $v0, 0
	
	#Base maior
	li $v0, 4
	la $a0, msg2
	syscall
	li $v0, 5
	syscall
	add $t2, $v0, 0
	
	#Base menor
	li $v0, 4
	la $a0, msg3
	syscall
	li $v0, 5
	syscall
	add $t3, $v0, 0
	
	add $t4, $t2, $t3 #Soma das bases
	mul $t5, $t4, $t1 #Multiplicação da altura nas bases
	div $t6, $t5, $t0 #Area final
	
	#"Inicializa a msg4"
	li $v0, 4
	la $a0, msg4
	syscall
	
	#Print da msg4 + Area
	li $v0, 1
	add, $a0, $t6, 0
	syscall