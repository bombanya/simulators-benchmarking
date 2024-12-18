include common/Makefile

OBJS         = boot.o common/syscalls.o main.o core_list_join.o core_main.o core_matrix.o core_portme.o core_state.o core_util.o cvt.o ee_printf.o
# core_list_join.o core_main.o core_matrix.o core_portme.o core_state.o core_util.o cvt.o ee_printf.o

all: main.elf

main.elf: $(OBJS) $(LNK_SCRIPT) Makefile
	$(CC) $(LNK_FILE_OPT) -o $@ $(OBJS) $(LNK_OPT)

boot.o: Makefile
	$(CPP) boot.s $(CFLAGS) | $(AS) $(ASFLAGS) -o boot.o

clean: 
	rm -f *.o *.elf 

