
SOURCES= attrs.c av.c Base64.c Cwd.c deb.c doio.c doop.c dump.c Dumper.c DynaLoader.c \
	 globals.c gv.c HiRes.c Hostname.c hv.c IO.c locale.c MD5.c mg.c \
	 numeric.c op.c Opcode.c pad.c Parser.c Peek.c perl.c perlapi.c \
	 perlio.c perlmain.c perly.c poll.c pp.c pp_ctl.c pp_hot.c pp_pack.c pp_sort.c \
	 pp_sys.c regcomp.c regexec.c run.c scope.c specrand.c stdio.c Storable.c sv.c \
	 taint.c toke.c universal.c utf8.c util.c xsutils.c #hparser.c parser-util.c


OBJECTS=$(SOURCES:.c=.o)

CC=gcc
LFLAGS=
CFLAGS= -lm -DSPEC_CPU -DPERL_CORE -DNDEBUG -I. -DI_TIME #-D_GNU_SOURCE 
FLAGS= $(LFLAGS) -g -O0 -mno-avx -fno-stack-protector $(CFLAGS)#-nostartfiles
T= 400.perlbench
O= $(T)_$(CC)

all: $(O)
	objdump -d $(O) > $(O).asm

$(O): $(OBJECTS)
	$(CC) -o $(O) $(OBJECTS) $(FLAGS)

clean:
	rm -rf $(O) $(OBJECTS).o $(O).asm

sweep:
	rm -rf *.o $(O).asm

