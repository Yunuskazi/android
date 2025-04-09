CC=gcc
CFLAGS=-Wall -I./src

all: build/test_hello

build/test_hello: src/hello.c tests/test_hello.c
	$(CC) $(CFLAGS) -o $@ $^ -lcmocka

test: build/test_hello
	./build/test_hello

clean:
	rm -rf build/*

