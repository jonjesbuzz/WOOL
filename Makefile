CC=gcc
CFLAGS=-I.
DEPS = wool.h
OBJ = wool.o main.o

%.o: %.c $(DEPS)
	$(CC) -c -o $@ $< $(CFLAGS)

wooltest: $(OBJ)
	gcc -o $@ $^ $(CFLAGS)