	.text
main:
	# get the output of the function - print it out
	# we need to use $a is input
	push	$ra
	la	$a0, array
	li	$a1, 4
	jal	max
	move	$t0, $v0	# $t0 - output of max(array, 4)
	# print int
	li	$v0, 1
	move	$a0, $t0
	syscall

	# print the new line
	li	$v0, 11
	li	$a0, '\n'
	syscall
	pop	$ra
	jr	$ra

max:
    # Frame:    [$ra, $s0, $s1] 	# the whole things you psuh and pop
    # Uses:     [$ra, $s0, $s1, $a0, $a1, $v0, $t0....]			# all the reg you use in the function including $a0, $v0, $t0, $s0...
    # Clobbers: [$a0, $a1, $v0, $t0....]			# clobers = uses - frame
    #
    # Locals: 
    #   - $s0 - first_element
    #   - $s1 - max_so_far
    #	- $t0 - ..... address of what, value of what....
    # Structure:
    #   max
    #   -> [max__prologue]
    #       -> max__body
    #       -> max__else
    #       -> max__return_else
    #   -> [max__epilogue]
max__prologue:
	begin
	push	$ra
	push	$s0		# $s0 - first_element
	push 	$s1		# $s1 - max_so_far

max__body:
	# int first_element = array[0];
	lw 	$s0, ($a0)
	# if condition
	bne	$a1, 1, max__else
	# reture the value - save in the $v0, v1.....
	move	$v0, $s0
	b	max__epilogue

max__else:
	# int max_so_far = max(&array[1], length - 1);
	addi	$a0, $a0, 4
	# move	$a0, $t1
	addi	$a1, $a1, -1
	jal	max
	move	$s1, $v0	# $s1 - max_so_far

	# if (first_element > max_so_far) {
	ble	$s0, $s1, max__return_else
	# max_so_far = first_element;
	move	$s1, $s0

max__return_else:
	move 	$v0, $s1
	b	max__epilogue

max__epilogue:
	pop	$s1
	pop	$s0
	pop	$ra
	end
	jr	$ra


	.data
array:
	.word 1, 2, 5, 4