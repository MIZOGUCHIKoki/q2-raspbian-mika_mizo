	.equ N, 41
	
	.section .text
	.global _start

	
_start:
	ldr r1, =N
	mov r2, #1

loop0:
	mul r3, r2, r2
	add r2, r2, #1
	cmp r1, r3
	bls loop1
	b loop0

loop1:
	cmp r2, #1
	beq prime
	udiv r4, r1, r2
	mul r5, r2, r4
	subs r6, r1, r5
	beq notprime
	sub r2, r2, #1
	b loop1

prime:	mov r8, #1
	b end

notprime:
	mov r8, #0
	b end

end:
	mov r7, #1
	mov r0, r8
	swi #0
