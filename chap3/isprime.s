	.equ N, 18
	
	.section .text
	.global _start

	
_start:
	ldr r1, =N
	ldr r2, =N
	mov r0, #1

loop1:
	subs r2, r2, #1
	cmp r2, #1
	moveq r0, #0
	beq end
	udiv r4, r1, r2
	mul r5, r2, r4
	subs r6, r1, r5
	bne loop1

end:
	mov r7, #1
	swi #0
