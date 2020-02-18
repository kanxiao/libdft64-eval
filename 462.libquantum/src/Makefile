
SOURCES= classic.c complex.c decoherence.c expn.c gates.c matrix.c \
	 measure.c oaddn.c objcode.c omuln.c qec.c qft.c qureg.c shor.c version.c \
	 specrand.c

OBJECTS=$(SOURCES:.c=.o)

CC=gcc
LFLAGS=
CFLAGS= -lm -DSPEC_CPU -DSPEC_CPU_LINUX # -DNDEBUG 
FLAGS= $(LFLAGS) -g -O0 -mno-avx -fno-stack-protector $(CFLAGS)#-nostartfiles
T= 462.libquantum
O= $(T)_$(CC)

all: $(O)
	objdump -d $(O) > $(O).asm

$(O): $(OBJECTS)
	$(CC) -o $(O) $(OBJECTS) $(FLAGS)

clean:
	rm -rf $(O) $(OBJECTS).o $(O).asm

sweep:
	rm -rf *.o $(O).asm

