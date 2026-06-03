# 1. A imobiliária Imóbilis vende apenas terrenos retangulares. Faça um algoritmo para ler as 
# dimensões de um terreno e depois exibir a área do terreno.

.data
	msg1:.asciiz "\n Qual a altura do retangulo: "
	msg2:.asciiz "\n Qual a largura do retangulo: "
	msg3:.asciiz "\n A Area do terreno equivale a: "
.text

main:
	li $v0, 4
	la $a0, msg1 #Input
	syscall
	li $v0, 5
	syscall
	add $t0, $v0, 0 #Salvar os numeros em t0
	
	
	li $v0, 4
	la $a0, msg2 #Input
	syscall
	li $v0, 5
	syscall
	add $t1, $v0, 0 #Salvar os numeros em t1
	
	
	mul $t2, $t0, $t1 #Multiplicacao
	
	li $v0, 4
	la $a0, msg3 #Input
	syscall
	
	li $v0, 1 #Salvar a mensagem em a0
	add $a0, $t2, 0 #Print #a0 (escrita do v0) + t2 + 0
	syscall

