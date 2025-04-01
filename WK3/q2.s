    .data
a:  .word   42			// word = 4 bytes , allcate 4 bytes
b:  .space  4			# allocate 4 bytes space
c:  .asciiz "abcde"		# 5 bytes string + 1 byte \0' = 6 bytes
    .align  2			# align = 2 ^ n = 2 ^2 = 4 - starting od adress d / 4
d:  .half			# allocate 2 bytes
.double				# allocate 8 bytes
d:  .byte   1, 2, 3, 4
e:  .word   1, 2, 3, 4
f:  .space  1




starting : 0x10010020
b: 0x10010024
c: 0x10010028
end of c: 0x10010028 + 6 = 34 
d: 36



123456789ABCDEF

