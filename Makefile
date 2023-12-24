PROG = paint
SRC = ${PROG}.c
OBJ = ${SRC:.c=.o}

CC = cc
INCS = -I/usr/include/X11
LIBS = -L/usr/X11R6/lib -lX11

LDFLAGS = ${LIBS}
CFLAGS = -Wall -Wextra -O0 ${INCS}

all: ${PROG}

${PROG}: ${OBJ}
	${CC} -o $@ ${OBJ} ${LDFLAGS}

%.o: %.c
	${CC} -c $< ${CFLAGS}

clean:
	-rm ${OBJ} ${PROG}

.PHONY: all clean
