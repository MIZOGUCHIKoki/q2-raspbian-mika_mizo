  .equ  N,  1932
  .section  .text
  .global   _start

_start:
  ldr r10,=N  @; 出力数値
  mov r0, #10 @; 割る数
  mov r1, #1  @; 桁数

countK: @; 桁数Counter
  mov   r2, #0
  udiv  r3, r10,  r0  @;  1932 / 10 = 193
  cmp   r3, #0
  addne r1, r1, #1      @;  桁数++
  movne r10,r3
  bne   countK



endp:
  mov r0, r1
  mov r7, #1
  swi #0

@;  .section  .data
@;buf:  times 100 db  0   @;  100Byte
@;      db  0x0a          @;  Return
