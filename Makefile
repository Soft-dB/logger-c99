################################################################################
#
# logger-c99
#
################################################################################

all: logger.a

logger.a: logger.o
	$(AR) rc $@ $<
	$(RM) $<

logger.o: src/log.c
	$(CC) $(CFLAGS) -c -o $@ $<