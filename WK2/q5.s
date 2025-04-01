	.text
SQUARE_MAX = 46340

main:
	# x - $t0, y - $t1
	li	$v0, 4			#printf("Enter a number: ");
	la 	$a0, print_str
	syscall

	# scanf("%d", &x);
	li	$v0, 5
	syscall
	move	$t0, $v0		# t0 = x

	# if (x > SQUARE_MAX) {
	ble 	$t0, SQUARE_MAX, else_con

	# print too big
	li	$v0, 4
	la 	$a0, too_big
	syscall

	b 	end


else_con:
	mul 	$t1, $t0, $t0	#t1 = y = x * x

	# printf("%d", y);
	li 	$v0, 1
	move 	$a0, $t1
	syscall

	# print out new line
	li 	$v0, 11
	li 	$a0, '\n'
	syscall

end:
	li 	$v0, 0
	jr 	$ra

	.data
print_str:
	.asciiz "Enter a number: "
too_big:
	.asciiz "square too big for 32 bits\n"