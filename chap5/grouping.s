	.section .text
	.global grouping

grouping:
push:	
	str r13, [sp, #-4]!
	str r12, [sp, #-4]!
	str r11, [sp, #-4]!
	str r10, [sp, #-4]!
	str r9, [sp, #-4]!
	str r8, [sp, #-4]!
	str r7, [sp, #-4]!
	str r6, [sp, #-4]!
	str r5, [sp, #-4]!
	str r4, [sp, #-4]!
	str r3, [sp, #-4]!
	str r2, [sp, #-4]!
	str r1, [sp, #-4]!

	ldr r3, r14
	mov r4, r2

call:
	cmp r1, r4
	movcc r6, #0
	bcc end
	cmp r2, #1
	moveq r5, #1
	bcc end
	mul r7, r6, r4
	add r8, r5, r6
	sub r1, r1, #1
	sub r2, r2, #1
	bl call
	
	
	
	


end:
	
	ldr r1, [sp], #4
	ldr r2, [sp], #4
	ldr r3, [sp], #4
	ldr r4, [sp], #4
	ldr r5, [sp], #4
	ldr r6, [sp], #4
	ldr r7, [sp], #4
	ldr r8, [sp], #4
	ldr r9, [sp], #4
	ldr r10, [sp], #4
	ldr r11, [sp], #4
	ldr r12, [sp], #4
	ldr r13, [sp], #4
	bx r14
	
