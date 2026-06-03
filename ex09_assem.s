# 9. Fazer um algoritmo que leia 2 números inteiros e exiba a divisão destes. Sabe-se que o 2o número
#não pode ser zero, portanto, deve-se insistir na solicitação do 2o número até ele ser diferente de 0

.data
	msg1: .asciiz "\n De um valor ao termo 1:  "
	msg2: .asciiz "\n De um valor ao termo 2: "
	msg3: .asciiz "\n O valor do termo 2, nao pode ser 0, de outro valor: "
	msg4: .asciiz "\n O valor da divisao equivale a: "
.text

main: 
	li $v0, 4
	la $a0, msg1
	syscall
	li $v0, 5
	syscall
	add $t0, $v0, 0
	
	li $v0, 4
	la $a0, msg2
	syscall
	li $v0, 5
	syscall
	add $t1, $v0, 0
	
	beq $t1, 0, error
	j cont
	
	error:
		li $v0, 4
		la $a0, msg3
		syscall
		li $v0, 5
		syscall
		add $t1, $v0, 0
		
		beq $t1, 0, error
		j cont

	cont:
		div $t2, $t0, $t1
		
		li $v0, 4
		la $a0, msg4
		syscall
		
		li $v0, 1
		add $a0, $t2, 0
		syscall