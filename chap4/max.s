  .section  .text
  .global   _start

_start:
  ldr r0, =data1
  ldr r1, =ndata
  
loop:

endp:

  .section  .data
data1:  .word 1, 2, 3, 4, 5, 6, 7, 9, 8, 10
.equ  ndata,  10
