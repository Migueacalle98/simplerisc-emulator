# r0 can be any number, it is the input
# Third bit is 2^2 =4, doing an or with 4 solves it
.main: 
	mov r0, 16
	mov r1, 4
	or r0, r0, r1 
.end:
.print r0