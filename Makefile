#make file to build the code

CC=gcc
CFLAGS=-Wall -I./src

all: test

build/test_hello: src/hello.c tests/test_hello.c
	mkdir -p build
	$(CC) $(CFLAGS) -o $@ $^ -lcmocka

test: build/test_hello
	./build/test_hello

clean:
	rm -rf build/*

