	.section .text
	.global grouping

grouping:
push:
	str r14, [sp, #-4]!
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

	mov r4, r1
	mov r5, r2

call: 
	cmp r1, r2
	bcc end
	cmp r4, r5
	bcc end
	sub r1, r1, #1
	sub r2, r2, #1
	bl call           @S(r1-1, r2-1)
	str r0, [sp, #0]

	sub r4, r4, #1
	bl call           @S(r4-1, r5)
	ldr r6, [sp, #0]

	mul r7, r6, r5
	add r0, r0, r7
	
	
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
	ldr r14, [sp], #4
	bx r14
	
