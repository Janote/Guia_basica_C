CC = gcc
CFLAGS = -Wall

all: helloWorld

helloWorld: helloWorld.o
		$(CC) $(CFLAGS) helloWorld.o -o helloWorld

helloWorld.o: helloWorld.c
	$(CC) $(CFLAGS) -c helloWorld.c -o helloWorld.o

clean:
	rm -f *.o helloWorld

ejecutar:
	@./helloWorld

.PHONY: all clean
