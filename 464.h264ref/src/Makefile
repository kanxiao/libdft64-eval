
SOURCES= annexb.c biariencode.c block.c cabac.c configfile.c context_ini.c \
	 decoder.c explicit_gop.c fast_me.c filehandle.c fmo.c header.c image.c \
	 intrarefresh.c leaky_bucket.c lencod.c loopFilter.c macroblock.c \
	 mb_access.c mbuffer.c memalloc.c mv-search.c nal.c nalu.c nalucommon.c \
	 output.c parset.c parsetcommon.c q_matrix.c q_offsets.c ratectl.c \
	 rdopt.c rdopt_coding_state.c rdpicdecision.c refbuf.c rtp.c sei.c \
	 slice.c transform8x8.c vlc.c weighted_prediction.c specrand.c

OBJECTS=$(SOURCES:.c=.o)

CC=gcc
LFLAGS=
CFLAGS= -lm -DSPEC_CPU -DNDEBUG
FLAGS= $(LFLAGS) -g -O0 -mno-avx -fno-stack-protector $(CFLAGS)#-nostartfiles
T= 464.h264ref
O= $(T)_$(CC)

all: $(O)
	objdump -d $(O) > $(O).asm

$(O): $(OBJECTS)
	$(CC) -o $(O) $(OBJECTS) $(FLAGS)

clean:
	rm -rf $(O) *.o $(O).asm

sweep:
	rm -rf *.o $(O).asm


