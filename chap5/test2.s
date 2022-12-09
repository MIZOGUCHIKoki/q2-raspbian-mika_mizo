	.section .text
	.global _start

_start:
	mov r1, #4
	mov r2, #2
	bl grouping
	mov r7, #1
	mov r0, #0
	swi #0
	
