	.equ N, 29
	
	.section .text
	.global _start

	
_start:
	ldr r1, =N
	mov r2, #1
	mov r3, #1

loop0:
	cmp r1, r3
	bls loop1
	mul r3, r2, r2
	add r2, r2, #1
	b loop0

loop1:
	udiv r4, r1, r3
	mul r5, r3, r4
	subs r6, r1, r5
	beq notprime
	subs r3, r3, #2
	beq prime
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
