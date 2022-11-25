AS = arm-none-eabi-as 
LD = arm-none-eabi-ld
LDFRAGS = -T ../raspbian.lds -m armelf

.PHONY: clean test copy-hello
hello: hello.o
	$(LD) $(LDFRAGS) $+ -o $@

%.o: %.s
	$(AS) $< -o $@

copy-hello: hello
	scp $< 172.21.43.173:

clean:
	rm -f *.o *~ *.out 

test:	hello
	./$+ | cat -v

