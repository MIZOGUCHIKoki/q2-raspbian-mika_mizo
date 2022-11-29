	.equ N, -255
	

	.section .text
	.global _start
_start:
	mov r1, #N
	mov r2, r1
	eor r3, r1, r2, asr #31
	sub r0, r3, r2, asr #31
	

	mov r7, #1
	swi #0
 
