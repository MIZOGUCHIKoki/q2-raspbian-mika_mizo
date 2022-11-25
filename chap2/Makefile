AS = arm-none-eabi-as 
LD = arm-none-eabi-ld
LDFRAGS = -T ../raspbian.lds -m armelf

.PHONY: clean copy-mov clean
mov: mov.o
	$(LD) $(LDFRAGS) $+ -o $@

%.o: %.s
	$(AS) $< -o $@

copy-mov: mov
	scp $< 172.21.43.173:

c-mov_sm: mov
	scp $< 172.21.43.172:

clean:
	rm -f *.o *~ *.out mov
test: mov
  ./mov
  make clean
