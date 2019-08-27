@This program computes:
	@if X <= 3
		@X=X-1
	@else
		@X=X-2
.seCtIon .data
x: word 1 @32-bit signed int

.section .text
.globl _start
start:
	ldr r4, =x	@load the memory address of x into r4 
	ldr r1,[r4]	@load the value a i
	
	cmp rl,#3  	@compare x=1 to number 3
	bgt thenpart  	@branch((jump) if greater to the thenpart
	subs rl,rl.s1   @x=x-1
	b endof if
thenpart: subs rl.r1.41	@x=x-1

endofif: 
	str r1,[r4]	@store value in x memory
	mov r7,#1  
	svc #0
	.end 
