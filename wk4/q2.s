	.text

FLAG_ROWS = 6
FLAG_COLS = 12

main:
	# row - $t0
	# col - $t1
	# $t5 - value of flag[row][col]
	# $t4 - address of flag[row][col]
	li	$t0, 0


main__first_for_loop_cond:
	bge	$t0, FLAG_ROWS, main__end
	# int col = 0;
	li	$t1, 0
main__second_for_loop_cond:
	bge	$t1, FLAG_COLS, main__print_new_line
	#printf("%c", flag[row][col]);
	# GET THE ADDRESS of flag[row][col]
	# 1. get the intial address of flag
	
	la	$t3, flag	# $t3 - address of flag
	# 2. get the offset of the flag[row][col]
	# offsetfor 2d array = row * max_cols + col
	mul	$t4, $t0, FLAG_COLS	#$t4 - row * max_cols
	add	$t4, $t4, $t1

	# mul * sizof
	add	$t4, $t4, $t3
	lb	$t5, ($t4)		# $t5 - value of flag[row][col]

	li	$v0, 11
	move 	$a0, $t5
	syscall

	# col++
	addi	$t1, $t1, 1
	b	main__second_for_loop_cond


main__print_new_line:
	li	$v0, 11
	li	$a0, '\n'
	syscall

	# row++
	addi	$t0, $t0, 1
	b	main__first_for_loop_cond

main__end:
	jr	$ra

	.data
flag:
	.byte '#', '#', '#', '#', '#', '.', '.', '#', '#', '#', '#', '#'
	.byte '#', '#', '#', '#', '#', '.', '.', '#', '#', '#', '#', '#'
    	.byte'.', '.', '.', '.', '.', '.', '.', '.', '.', '.', '.', '.'
	.byte'.', '.', '.', '.', '.', '.', '.', '.', '.', '.', '.', '.'
    	.byte'#', '#', '#', '#', '#', '.', '.', '#', '#', '#', '#', '#'
    	.byte'#', '#', '#', '#', '#', '.', '.', '#', '#', '#', '#', '#'