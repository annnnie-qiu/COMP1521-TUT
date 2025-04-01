	.text
N_SIZE = 10
N_SIZE_M_1 = N_SIZE - 1
N_SIZE_D_2 = N_SIZE / 2


main:
	# $t0 - i
	# $t2 - address of numbers[i]
	# $t3 - x
	# $t6 - y

	# i = 0
	li	$t0, 0
	# while
main__while_cond:
	bge	$t0, N_SIZE_D_2, main__while_end
	# calculate numbers[i]
	# get the address pf numbers[i]
	la 	$t1, numbers		# $t1 = starting adress of numbers
	# offset
	mul	$t2, $t0, 4		# $t2 = 4 * i
	add	$t2, $t2, $t1		# $t2 = address of numbers[i]
	lw 	$t3, ($t2)


	# int y = numbers[N_SIZE_M_1 - i];

	# offset = 4 * (N_SIZE_M_1 - i)
	sub 	$t4, N_SIZE_M_1, $t0		# $t4 = N_SIZE_M_1 - i
	mul	$t5, $t4, 4
	add	$t5, $t5, $t1			# t5 = address of numbers[N_SIZE_M_1 - i]
	lw 	$t6, ($t5)

	# save the value $t6 to adress $t2
	sw	$t6, ($t2)
	# save the value $t3 to address $t5
	sw 	$t3, ($t5)


	addi 	$t0, $t0, 1
	b	main__while_cond



main__while_end:
	jr 	$ra

	.data
numbers:
	.word 0, 1, 2, 3, 4, 5, 6, 7, 8, 9