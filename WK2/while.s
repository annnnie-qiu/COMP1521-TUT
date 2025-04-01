	.text
main:
	# number - $t0
	# i - $t1

	# printf("Enter a number: ");
	li 	$v0, 4
	la 	$a0, print_str
	syscall

	# scanf("%d", &x);
	li 	$v0, 5
	syscall
	move	$t0, $v0

	li 	$t1, 1

while_con:
	# while
	bgt 	$t1, $t0, end

	# print
	li 	$v0, 1
	move 	$a0, $t1
	syscall

	# print new line
	li  	$v0, 11
	li 	$a0, '\n'
	syscall

	addi 	$t1, $t1, 1
	b 	while_con

end:
	li 	$v0, 0
	jr 	$ra


	.data
print_str:
	.asciiz "Enter a number: "
medium:
	.asciiz "medium\n"
small_big:
	.asciiz "small/big\n"