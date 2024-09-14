// Program: Signum.asm
// Computes: if R0>0
//              R1=1
//           else
//              R1=0


@RO
D=M  //  D = RAM[0]

@POSITIVE
D; JGT  // If R0>0 goto 8

@R1
M=0  // RAM[1] = 0
@10
0; JMP  // end of progress

(POSITIVE)
@R1
M=1  // R1=1

(END)
@END
0; JMP