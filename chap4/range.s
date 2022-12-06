	.section .text
	.global _start

_start:
	ldr r1, =N
	mov r2, #ndata
	ldr r3, =data1

loop0:
	ldrsb r4, [r3]
	eor r5, r4, r4, asr #31
	sub r6, r5, r4, asr #31  @r6 = abs
	cmp r1, r6
	addpl r8, r8, #1
	subs r2, r2, #1
	beq end
	add r3, r3, #4
	b loop0

end:
	mov r7, #1
	mov r0, r8
	swi #0
	
	


	.section .data
data1:	.word 0, -1, -123, 54, 39
.equ    ndata, 5
.equ    N, 40
