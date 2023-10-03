# r0 can be any number, it is the input
# For input 16 the expected answer is 1
.main: 
	mov r0, 16
	# module operation
	mov r1, 1
	mod r2, r0, 2
	# Compare the module operation with 0
	cmp r2, 0
	# if equal we are done
	beq .end
	# if not equal the number is odd
	mov r1, 0
.end:
.print r1