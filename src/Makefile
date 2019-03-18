DBD_INCLUDES+=-I/usr/local/include -I./headers -I. -I./os_xml -I./os_regex

all:
	make osshared

osshared:
	cc $(DBD_INCLUDES) -o shared/debug_op.o -c shared/debug_op.c
	cc $(DBD_INCLUDES) -o shared/file-queue.o -c shared/file-queue.c
	cc $(DBD_INCLUDES) -o shared/file_op.o -c shared/file_op.c
	cc $(DBD_INCLUDES) -o shared/hash_op.o -c shared/hash_op.c
	cc $(DBD_INCLUDES) -o shared/math_op.o -c shared/math_op.c
	cc $(DBD_INCLUDES) -o shared/mem_op.o -c shared/mem_op.c
	cc $(DBD_INCLUDES) -o shared/privsep_op.o -c shared/privsep_op.c
	cc $(DBD_INCLUDES) -o shared/sig_op.o -c shared/sig_op.c
	cc $(DBD_INCLUDES) -o shared/validate_op.o -c shared/validate_op.c

osconfig:
	cc $(DBD_INCLUDES) -o config/dbd-config.o -c config/dbd-config.c
	cc $(DBD_INCLUDES) -o config/global-config.o -c config/global-config.c

osmain:
	cc $(DBD_INCLUDES) -DARGV0=\"ossec-dbd\" -o ossec-dbd *.c shared/*.o

clean:
	rm shared/*.o ./*.o config/*.o

