
CC	= gcc
TARGETS = lightposition
LDLIBS = -lglut -lGLU -lGL -lm
CFLAGS = -O2 -std=c90 


lightposition	:  lightposition.o glm.o 
	$(CC) -o lightposition lightposition.o  glm.o  $(LDLIBS)

lightposition.o	:	lightposition.c
	$(CC) -c $(CFLAGS) lightposition.c

glm.o	:	glm.c
	$(CC) -c $(CFLAGS) glm.c


clean :
	rm *.o
	touch *.c
