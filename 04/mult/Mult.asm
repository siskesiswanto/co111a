// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)
//
// This program only needs to handle arguments that satisfy
// R0 >= 0, R1 >= 0, and R0*R1 < 32768.

// Put your code here.
// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Fill.asm

// Runs an infinite loop that listens to the keyboard input.
// When a key is pressed (any key), the program blackens the screen,
// i.e. writes "black" in every pixel;
// the screen should remain fully black as long as the key is pressed. 
// When no key is pressed, the program clears the screen, i.e. writes
// "white" in every pixel;
// the screen should remain fully clear as long as no key is pressed.

// Put your code her//a = R0
//b = R1
//R2 = 0
//while(a > 0){
//  R2 = R2 + b
//  a --}

@R0
D=M
@a
M=D //a=R0

@R1
D=M
@b
M=D //b=R1

@0
D=A
@R2
M=D //R2=0


@a
D=M //load R0
@END
D;JLE //if a<=0 goto END      

@b
D=M //D=b
@R2
M=D+M //sum=sum+b
@1
D=A //D=1
@a
M=M-D //a=a-1    

@LOOP
0;JMP //jump to loop start

@END
0;JMP //program end