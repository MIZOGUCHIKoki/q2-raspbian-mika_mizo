  .section  .text
  .global   _start

_start:
  ldr r1, =data1
  ldr r2, =ndata
loop:
  subs  r2, r2, #1
  bmi   endp
  ldr   r3,   [r1], #4
  cmp   r3,   r0
  bls   lsp
  ins:
    mov r0, r3
  lsp:
    b loop
endp:
  mov r7, #1
  swi #0

  .section  .data
data1:  .word 10,2,1,20
.equ  ndata,  4
