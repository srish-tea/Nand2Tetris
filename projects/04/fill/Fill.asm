
	(LOOP)
	
	// addr = SCREEN address
	@SCREEN
	D=A
	@addr
	M=D

	// check for key press and jump to FILLW
	@KBD
	D=M
	@FILLW
	D			;JEQ

	// loop to fill screen
	(FILL)
	@addr
	A=M
	M=-1

	// addr++
	@addr
	M=M+1

	// if addr < KBD jump to FILL
	@addr
	D=M
	@KBD
	D=D-A
	@FILL
	D			;JLT
	@LOOP
	0			;JMP

	// reset the screen to white
	(FILLW)
	@addr
	A=M
	M=0

	// addr++
	@addr
	M=M+1

	// if addr < KBD jump to FILLW
	@addr
	D=M
	@KBD
	D=D-A
	@FILLW
	D			;JLT

	// goes back to the beginning
	@LOOP
	0			;JMP
	
	
	
	
