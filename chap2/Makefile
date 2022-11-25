AS = arm-none-eabi-as 
LD = arm-none-eabi-ld
LDFRAGS = -T ../raspbian.lds -m armelf

.PHONY: clean mov_mizo mov_mika
mov: mov.o
	$(LD) $(LDFRAGS) $+ -o $@

%.o: %.s
	$(AS) $< -o $@

mov_mizo: mov
	scp $< 172.21.43.173:

mov_mika: mov
	scp $< 172.21.43.172:

clean:
	rm -f *.o *~ *.out mov
