.section .text 
_ globl _start 
_start: 
	ldr r1, =x 	@load the memory address Of x into r1
	ldr rl, [r1] 	@load the value x i
	
	cmp r1, #0
	beq thenpart	@branch (jump) if (Z==1) to the thenpart
	b endofif 	@branch (jump) if false to the of if statement body (branch always)
thenpart: 
	move r2, #1	
	ldr r3, #y	@load the memory address of y into r3
	str  r2,[r3]	@Store r2 register value y memory address
endofif: 
	mov r7, #1	@Program Termination: exit syscall
	svc #0		@Program Termination: wake kernel
	.end

