	.text
main:
	# i - $t0
	li	$v0, 4			#printf("Enter a number: ");
	la 	$a0, print_str
	syscall

	# scanf("%d", &x);
	li	$v0, 5
	syscall
	move	$t0, $v0		# t0

	# f (x > 100 && x < 1000) {
	ble 	$t0, 100, else
	bge	$t0, 1000, else

	# printf("medium\n");
	li 	$v0, 4
	la 	$a0, medium
	syscall

	b 	end

else:
	# printf("small/big\n");
	li 	$v0, 4
	la 	$a0, small
	syscall
end:
	jr	$ra

	.data
print_str:
	.asciiz "Enter a number: "
medium:
	.asciiz "medium\n"
small:
	.asciiz "small/big\n"