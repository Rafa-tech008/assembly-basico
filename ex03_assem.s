# 3. A empresa Hipotheticus paga R$10,00 por hora normal trabalhada, e R$15,00 por hora extra. Faça
# um algoritmo para calcular e imprimir o salário bruto e o salário líquido de um determinado
# funcionário. Considere, também, uma entrada de desconto para calcular o salário líquido.

.data
	msg1: .asciiz "\n O valor de cateto 1: "
 	msg2: .asciiz "\n O valor de cateto 2: "
	msg3: .asciiz "\n O valor da hipotenusa equivale a: "
.text

main:
 	li $v0, 4 # 2= escrita de reais
	la $a0, msg1
 	syscall
 	li $v0, 6 # 6= leitura de reais
 	syscall
 	mov.s $f1, $f0 # Passagem de reais
	
 	li $v0, 4 
	la $a0, msg2
 	syscall
 	li $v0, 6 
 	syscall
 	mov.s $f2, $f0
 	
 	mul.s $f3, $f1, $f1
 	mul.s $f4, $f2, $f2
 	add.s $f5, $f3, $f4
 	sqrt.s $f12, $f5
	
 	#Print
 	li $v0, 4
 	la $a0, msg3
 	syscall
 	li $v0, 2
 	syscall 	

	li $v0, 10 # 10= Saída
	syscall