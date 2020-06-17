PIC_LD=ld

ARCHIVE_OBJS=
ARCHIVE_OBJS += _79762_archive_1.so
_79762_archive_1.so : archive.7/_79762_archive_1.a
	@$(AR) -s $<
	@$(PIC_LD) -shared  -m elf_i386  -Bsymbolic  -o .//../simv.daidir//_79762_archive_1.so --whole-archive $< --no-whole-archive
	@rm -f $@
	@ln -sf .//../simv.daidir//_79762_archive_1.so $@


ARCHIVE_OBJS += _prev_archive_1.so
_prev_archive_1.so : archive.7/_prev_archive_1.a
	@$(AR) -s $<
	@$(PIC_LD) -shared  -m elf_i386  -Bsymbolic  -o .//../simv.daidir//_prev_archive_1.so --whole-archive $< --no-whole-archive
	@rm -f $@
	@ln -sf .//../simv.daidir//_prev_archive_1.so $@



VCS_ARC0 =_csrc0.so

VCS_OBJS0 =objs/amcQw_d.o 


O0_OBJS =

$(O0_OBJS) : %.o: %.c
	$(CC_CG) $(CFLAGS_O0) -c -o $@ $<
 

%.o: %.c
	$(CC_CG) $(CFLAGS_CG) -c -o $@ $<

$(VCS_ARC0) : $(VCS_OBJS0)
	$(PIC_LD) -shared  -m elf_i386  -Bsymbolic  -o .//../simv.daidir//$(VCS_ARC0) $(VCS_OBJS0)
	rm -f $(VCS_ARC0)
	@ln -sf .//../simv.daidir//$(VCS_ARC0) $(VCS_ARC0)
	@-if [ $(shell /usr/bin/stat -f -c %T $(VCS_OBJS0) | grep -c nfs) = 0 -a $(shell /usr/sbin/sestatus | grep -c                enabled) = 1 ]; then /usr/bin/chcon -t textrel_shlib_t .//../simv.daidir//$(VCS_ARC0); fi

CU_UDP_OBJS = \
objs/udps/T7p0B.o objs/udps/ebwif.o objs/udps/bJgqF.o objs/udps/TUnRF.o objs/udps/hUPIp.o  \
objs/udps/jSW2F.o objs/udps/Fdess.o 

CU_LVL_OBJS = \
SIM_l.o 

MAIN_OBJS = \


CU_OBJS = $(MAIN_OBJS) $(ARCHIVE_OBJS) $(VCS_ARC0) $(CU_UDP_OBJS) $(CU_LVL_OBJS)

