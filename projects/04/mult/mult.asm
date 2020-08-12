// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)

	// m = R0
	@R0
	D=M
	@m
	M=D

	// n = R1
	@R1
	D=M
	@n
	M=D

	// i = 0
	@i
	M=0

	// prod = R2 and initialize to 0
	@R2
	M=0
	D=M
	@prod
	M=D
	
	(LOOP)
	// if i-n==0, jump to END
	@i
	D=M
	@n
	D=D-M
	@END
	D			;JEQ

	// prod = prod + m
	@prod
	D=M
	@m
	D=D+M
	@prod
	M=D

	// i++
	@i
	M=M+1

	// jump to the beginning of the loop
	@LOOP
	0			;JMP

	(END)
	// store the value of prod in R2
	@prod
	D=M
	@R2
	M=D
	@END
	0			;JMP
	
	
