	.text
main:
	li 	$t0, 1		#t0 = i = 1
	# while
while:
	bgt 	$t0, 10, end
	li 	$t1, 0		# t1 = j = 0

	# while
second_while:
	bgt 	$t1, 10, print_new_line
	
	# printf("*");

	# j = j + 1
	addi 	$t1, $t1, 1
	b	second_while

print_new_line:
	# printf("\n");

	# i = i +1
	addi 	$t0, $t0, 1
	b 	while

end:
	# return 0
	li	$v0, 0
	jr 	$ra
	.data