# r0 can be any number, it is the input
# Assuming a x16 architecture, using r5 as counter for the loop
.main: 
	# 511 = 2^9 - 1, first number to have more 1 than 0's, expected result: 1 in r2
	# 127 = 2^7 - 1, a number with more 0 than 1's, expected result: 0 in r2
	mov r0, 511
	# r3 counter for 0's, r4 counter for 1's
	mov r3, 0
	mov r4, 0
	
	mov r5, 0
	.loop:
		mod r1, r0, 2
		cmp r1, 0
		beq .evenbit
		b .oddbit

		.evenbit:
			add r3, r3, 1
			b .increment

		.oddbit:
			add r4, r4, 1
			b .increment

		.increment:
			div r0, r0, 2 
			add r5, r5, 1
			cmp r5, 16
			beq .endloop
			b .loop

.endloop:
	# r2 will store the result
	mov r2, 0
	cmp r3, r4
	bgt .end
	mov r2, 1
.end:
.print r2