# 8. Encontrar o dobro de um número caso ele seja positivo e o seu triplo caso seja negativo,
# imprimindo o resultado.

.data
	msg1: .asciiz "\n Digite um número positivo ou negativo: "
	msg2: .asciiz "\n O resultado é: "
.text
	li $t0, 0
	li $t1, 2
	li $t2, 3
	
	#Número
	li $v0, 4
	la $a0, msg2
	syscall
	li $v0, 5
	syscall
	add $t3, $v0, 0
	
	blt $t3,$t0, se
	j senao
	
	se:
	 	mul $t4, $t3, $t2
	 	
	 	li $v0, 4
	 	la $a0, msg2
	 	syscall
	 	
	 	li $v0, 1
	 	add $a0, $t4, 0
	 	syscall
	 	j fimse
	
	senao:
		mul $t4, $t3, $t1
	 
	 	li $v0, 4
	 	la $a0, msg2
	 	syscall
	 	
	 	li $v0, 1
	 	add $a0, $t4, 0
	 	syscall
	
	fimse: