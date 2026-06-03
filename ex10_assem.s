# 10. No Assembly MIPS, existe a operacaoo REM que apresenta o resto da divisao de 2 valores inteiros.
# SEM UTILIZAR A OPERACAO REM, faca um algoritmo usando DIV, MUL e SUB que receba 2 valores
# inteiros e exiba o resto da divisao do maior pelo menor (Condicao que deve ser verificada no inicio
# do algoritmo.

.data
	msg1: .asciiz "\n De um valor ao termo 1:  "
	msg2: .asciiz "\n De um valor ao termo 2: "
	msg3: .asciiz "\n O resto da divisao equivale a: "
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
	
	bgt  $t0, $t1, se
	j senao
	
	se:
		div $t2, $t0, $t1 # Divide e pega apenas o valor inteiro
		mul $t3, $t2, $t1 #Multiplica pelo divisor
		sub $t4, $t0, $t3 #Subtrai pelo dividendo
		
		li $v0, 4
		la $a0, msg3
		syscall
		
		li $v0, 1
		add $a0, $t4, 0
		syscall
		j fimse

	senao:
		div $t2, $t1, $t0
		mul $t3, $t2, $t0
		sub $t4, $t1, $t3
		
		li $v0, 4
		la $a0, msg3
		syscall
		
		li $v0, 1
		add $a0, $t4, 0
		syscall
	
	fimse:
