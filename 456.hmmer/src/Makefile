
SOURCES= alphabet.c core_algorithms.c debug.c display.c emit.c emulation.c \
	 fast_algorithms.c histogram.c hmmio.c hmmcalibrate.c hmmsearch.c \
	 mathsupport.c masks.c misc.c modelmakers.c plan7.c plan9.c postprob.c \
	 prior.c tophits.c trace.c ucbqsort.c a2m.c aligneval.c alignio.c \
	 clustal.c cluster.c dayhoff.c eps.c file.c getopt.c gki.c gsi.c \
	 hsregex.c iupac.c msa.c msf.c phylip.c revcomp.c rk.c selex.c \
	 seqencode.c shuffle.c sqerror.c sqio.c squidcore.c sre_ctype.c \
	 sre_math.c sre_random.c sre_string.c ssi.c stack.c stockholm.c \
	 translate.c types.c vectorops.c weight.c

OBJECTS=$(SOURCES:.c=.o)

CC=gcc
LFLAGS=
CFLAGS= -lm -DSPEC_CPU -DNDEBUG
FLAGS= $(LFLAGS) -g -O0 -mno-avx -fno-stack-protector $(CFLAGS)#-nostartfiles
T= 456.hmmer
O= $(T)_$(CC)

all: $(O)
	objdump -d $(O) > $(O).asm

$(O): $(OBJECTS)
	$(CC) -o $(O) $(OBJECTS) $(FLAGS)

clean:
	rm -rf $(O) $(OBJECTS).o $(O).asm

sweep:
	rm -rf *.o $(O).asm

