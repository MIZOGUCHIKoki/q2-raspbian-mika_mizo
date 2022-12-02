  .section  .text
  .global   _start

_start:
  mov r1, #1  @; n-1
  mov r2, #0  @; n-2
  mov r3, #13  @; n
calc:
  subs  r3, #1
  cmp r3, #0
  beq endp
  add r0, r1, r2
  mov r2, r1
  mov r1, r0

  b calc
endp:   @; EXIT Processing
  mov r7, #1
  swi #0
