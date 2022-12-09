  .section  .text
  .global   _start

_start:
  mov r0, #100
  mov r1, #100
  mov r2, #100
  mov r3, #100
  mov r4, #100
  mov r5, #100
  mov r6, #100
  mov r7, #100
  mov r8, #100
  mov r9, #100
  mov r10, #100
  mov r11, #100
  mov r12, #100
  mov r14, #100

  ldr r0, =4294967295
  bl  print_r0
  bl  print_r0
  mov r7, #1
  mov r0, #0
  swi #0
