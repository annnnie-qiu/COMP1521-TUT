	.text

main:
	# number - $t0, i - $t1

	# printf("Enter a number: ");
	li	$v0, 4			#printf("Enter a number: ");
	la 	$a0, print_str
	syscall

	# scanf("%d", &numer);
	li	$v0, 5
	syscall
	move	$t0, $v0

	# i = 1
	li 	$t1, 1
	# while
while:
	bgt	$t1, $t0, end
	# print int
	# printf("%d", y);
	li 	$v0, 1
	move 	$a0, $t1
	syscall

	# print out new line
	li 	$v0, 11
	li 	$a0, '\n'
	syscall

	#  i = i + 1;
	addi 	$t1, $t1, 1
	b 	while

end:
	li	$v0, 0
	jr 	$ra



	.data
print_str:
	.asciiz "Enter a number: "