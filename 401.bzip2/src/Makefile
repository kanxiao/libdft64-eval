
SOURCES= spec.c blocksort.c bzip2.c bzlib.c compress.c crctable.c \
	 decompress.c huffman.c randtable.c

OBJECTS=$(SOURCES:.c=.o)

CC=gcc
LFLAGS=
CFLAGS= -lm -DSPEC_CPU -DNDEBUG
FLAGS= $(LFLAGS) -g -O0 -mno-avx -fno-stack-protector $(CFLAGS)#-nostartfiles
T= 401.bzip2
O= $(T)_$(CC)

all: $(O)
	objdump -d $(O) > $(O).asm

$(O): $(OBJECTS)
	$(CC) -o $(O) $(OBJECTS) $(FLAGS)

clean:
	rm -rf $(O) *.o $(O).asm

sweep:
	rm -rf *.o $(O).asm

