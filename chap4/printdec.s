  .equ  N,  1932
  .equ  ndigit, 100
  .section  .text
  .global   _start

_start:
  ldr r10,=N  @; $BF~NO?tCM(B
  mov r0, #10 @; $B3d$k?t(B
  mov r8, #1  @; $B7e?t(B

countK: @; $B7e?t(BCounter
  mov   r2, #0
  udiv  r3, r10,  r0    @;  1932 / 10 = 193
  cmp   r3, #0
  addne r8, r8, #1      @;  $B7e?t(B++
  movne r10,r3
  bne   countK
@; r8  :: $B7e?t(B
@; r10 :: $BF~NO?tCM(B
writeProcess:
  ldr   r10,  =N
  ldr   r2,   =buf+ndigit  @; r2 = buf + ndigit $BKvHxHVCO(B
  sub   r2, r2, #1
wloop:
  udiv  r4, r10,  r0  @; N / 10 = r4
  cmp   r4, #0
  beq   write
  @; A divid by B = R mod Q <=> A - BR = Q
  mul   r5, r0,   r4  @; BR
  sub   r5, r10,  r5  @; r5 = N % 10
  add   r5, r5,   #'0'
  strb  r5, [r2, #-1]!      @;  [r2] <- r5 (0$B3HD%(B); r2--
  b     wloop

write:
  add r8, r8, #1  @;  Return Code
  mov r7, #4
  mov r0, #0
  mov r1, r2      @;  $B@hF,HVCO(B
  mov r2, r8      @;  $BD9$5(B
  swi #0
endp:
  mov r7, #1
  mov r0, #0
  swi #0

  .section  .data
buf:  .space ndigit  @;  100Byte
      .word  0x0a    @;  Return Code
