  .equ  N,  1932
  .section  .text
  .global   _start

_start:
  ldr r10,=N  @; $B=PNO?tCM(B
  mov r0, #10 @; $B3d$k?t(B
  mov r1, #1  @; $B7e?t(B

countK: @; $B7e?t(BCounter
  mov   r2, #0
  udiv  r3, r10,  r0  @;  1932 / 10 = 193
  cmp   r3, #0
  addne r1, r1, #1      @;  $B7e?t(B++
  movne r10,r3
  bne   countK



endp:
  mov r0, r1
  mov r7, #1
  swi #0

@;  .section  .data
@;buf:  times 100 db  0   @;  100Byte
@;      db  0x0a          @;  Return
