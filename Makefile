all: constants build

constants:
	gcc -E -P constants.c > constants.txt

build:
	fasm server.asm
	ld server.o -o server

clean:
	rm -f server server.o constants.txt
