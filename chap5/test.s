  .section  .text
  .global   _start

_start:
  ldr r0, =1234
  bl  print_r0
  mov r7, #1
  mov r0, #0
  swi #0
