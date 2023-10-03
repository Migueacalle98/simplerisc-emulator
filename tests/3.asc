# r0, r1 can be any number, it is the input if r0 and r1 are both 0 or 1, 
# the output is similar to a one bit NAND. If either r0 or r1 are any 
# other number the output is a logical NAND in output stored in r5
.main: 
	mov r0, 1
	mov r1, 2
	# invert Inputs
	not r2, r0 
	not r3, r1
	# And operation
	and r4, r2, r3
	#invert the result
	not r5, r4
.end:
.print r5