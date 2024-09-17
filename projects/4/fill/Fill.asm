// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/4/Fill.asm

// Runs an infinite loop that listens to the keyboard input. 
// When a key is pressed (any key), the program blackens the screen,
// i.e. writes "black" in every pixel. When no key is pressed, 
// the screen should be cleared.

    @8192
    D=A 
    @ENDSCREEN
    M=D
(BEGIN)
    @0
    D=A
    @i
    M=D
(LOOP)
    // Increment of i
    @i 
    M=M+1

    // Restart if needed
    D=M
    @ENDSCREEN
    D=M-D
    @BEGIN
    D;JEQ

    @KBD
    D=M
    @FILLSCREEN
    D;JNE

(CLEARSCREEN)  
    @i
    D=M
    @SCREEN
    A=A+D  
    M=0
    @LOOP
    0;JMP

(FILLSCREEN)
    @i
    D=M
    @SCREEN
    A=A+D  
    M=-1
    @LOOP
    0;JMP