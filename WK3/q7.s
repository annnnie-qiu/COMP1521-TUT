	.text
N_SIZE = 10

main:
	# $t0 - i

	li 	$t0, 0		# i = 0

main__while_loop_cond:
	bge 	$t0, N_SIZE, mian__while_loop_end
	# if condition
	# numbers[i]
	la 	$t1, numbers
	# caculate the offset
	mul 	$t2, $t0, 4 		# $t2 = 4 * i
	add	$t2, $t2, $t1		# $t2 = address of numbers[i]
	lw 	$t3, ($t2)		# t3 = value of the numbers[i]
	bge 	$t3, 0, main_while_loop_add
	#  numbers[i] = numbers[i] + 42
	# x = y + 42
	addi 	$t3, $t3, 42		# $t3 = value of the numbers[i] + 42
	sw 	$t3, ($t2)


main_while_loop_add:
	addi	$t0, $t0, 1
	b 	main__while_loop_cond

mian__while_loop_end:
	jr 	$ra



	.data
numbers:
	.word 0, 1, 2, -3, 4, -5, 6, -7, 8, 9



u:
	.space 4
v:
	.word  42
w:
	.space 1
x:
	.byte 'a'
y:
	.space 8	# 2 * 4 = 2 * int
z:
	.space 80		# 20 * 4 = 80
