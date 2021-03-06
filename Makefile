CC= gcc
CFLAGS= -Wall -Wextra -Werror -std=c99 -O2
EXEC= stein

SOURCES= list.c dungeon.c extract.c main.c
OBJECTS= ${SOURCES:.c=.o}

all: ${EXEC}
	
${EXEC}: ${OBJECTS}
	${CC} ${CFLAGS} -o ${EXEC} ${OBJECTS}

clean:
	rm -f *.o
	rm -f ${EXEC}
