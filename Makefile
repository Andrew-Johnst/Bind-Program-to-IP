CC=gcc

all:
	$(CC) -nostartfiles -fpic -shared bind.c -o bind.so -ldl -D_GNU_SOURCE
	strip bind.so

install:
	cp bind.so /usr/lib/

uninstall:
	rm -f /usr/lib/bind.so

clean:
	rm -f bind.so

fresh: clean uninstall
