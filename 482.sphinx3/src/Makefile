
SOURCES= spec_main_live_pretend.c parse_args_file.c live.c agc.c \
	 approx_cont_mgau.c ascr.c beam.c bio.c case.c ckd_alloc.c cmd_ln.c cmn.c \
	 cmn_prior.c cont_mgau.c dict.c dict2pid.c err.c feat.c fillpen.c glist.c \
	 gs.c hash.c heap.c hmm.c io.c kb.c kbcore.c lextree.c lm.c lmclass.c \
	 logs3.c mdef.c new_fe.c new_fe_sp.c profile.c specrand.c str2words.c \
	 subvq.c tmat.c unlimit.c utt.c vector.c vithist.c wid.c

OBJECTS=$(SOURCES:.c=.o)

CC=gcc
LFLAGS=
CFLAGS= -lm -DSPEC_CPU -DHAVE_CONFIG_H -I. -Ilibutil 
FLAGS= $(LFLAGS) -g -O0 -mno-avx -fno-stack-protector $(CFLAGS)#-nostartfiles
T= 482.sphinx3
O= $(T)_$(CC)

all: $(O)
	objdump -d $(O) > $(O).asm

$(O): $(OBJECTS)
	$(CC) -o $(O) $(OBJECTS) $(FLAGS)

clean:
	rm -rf $(O) *.o $(O).asm

sweep:
	rm -rf *.o $(O).asm

