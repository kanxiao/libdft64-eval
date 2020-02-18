
SOURCES= attacks.c book.c crazy.c draw.c ecache.c epd.c eval.c leval.c \
	 moves.c neval.c partner.c proof.c rcfile.c search.c see.c seval.c \
	 sjeng.c ttable.c utils.c

OBJECTS=$(SOURCES:.c=.o)

CC=gcc
LFLAGS=
CFLAGS= -lm -DSPEC_CPU -DNDEBUG
FLAGS= $(LFLAGS) -g -O0 -mno-avx -fno-stack-protector $(CFLAGS)#-nostartfiles
T= 458.sjeng
O= $(T)_$(CC)

all: $(O)
	objdump -d $(O) > $(O).asm

$(O): $(OBJECTS)
	$(CC) -o $(O) $(OBJECTS) $(FLAGS)

clean:
	rm -rf $(O) $(OBJECTS).o $(O).asm

sweep:
	rm -rf *.o $(O).asm

