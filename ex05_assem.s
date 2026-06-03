# 5. Faça um algoritmo que receba o valor dos catetos de um triângulo, calcule e mostre o valor da
# hipotenusa.

.data
	msg1: .asciiz "\n Qual o tamanho do cateto 1:  "
	msg2: .asciiz "\n Qual o tamanho do cateto 2:  "
	msg4: .asciiz "\n A area mede: "
.text

main:
	#Cateto 1
	li $v0, 4
	la $a0, msg1
	syscall
	li $v0, 5
	syscall
	add $t0, $v0, 0
	
	#Cateto 2
	li $v0, 4
	la $a0, msg2
	syscall
	li $v0, 5
	syscall
	add $t1, $v0, 0
	
	mul $t3, $t0, $t0 #Cateto 1 ao quadrado
	mul $t4, $t1, $t1 #Cateto 2 ao quadrado
	add $t5, $t3, $t4 #Soma dos catetos	
	
	#"Inicializa a msg4"
	li $v0, 4
	la $a0, msg4
	syscall
	
	#Print da msg4 + Hipotenusa
	li $v0, 1
	add, $a0, $t6, 0
	syscall