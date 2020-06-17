PIC_LD=ld

ARCHIVE_OBJS=
ARCHIVE_OBJS += _37219_archive_1.so
_37219_archive_1.so : archive.0/_37219_archive_1.a
	@$(AR) -s $<
	@$(PIC_LD) -shared  -m elf_i386  -Bsymbolic  -o .//../simv.daidir//_37219_archive_1.so --whole-archive $< --no-whole-archive
	@rm -f $@
	@ln -sf .//../simv.daidir//_37219_archive_1.so $@





O0_OBJS =

$(O0_OBJS) : %.o: %.c
	$(CC_CG) $(CFLAGS_O0) -c -o $@ $<
 

%.o: %.c
	$(CC_CG) $(CFLAGS_CG) -c -o $@ $<
CU_UDP_OBJS = \
objs/udps/T7p0B.o objs/udps/ebwif.o objs/udps/bJgqF.o objs/udps/TUnRF.o objs/udps/hUPIp.o  \
objs/udps/jSW2F.o objs/udps/Fdess.o 

CU_LVL_OBJS = \
SIM_l.o 

MAIN_OBJS = \
objs/amcQw_d.o 

CU_OBJS = $(MAIN_OBJS) $(ARCHIVE_OBJS) $(CU_UDP_OBJS) $(CU_LVL_OBJS)

