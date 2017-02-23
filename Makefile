	CC = gcc
	CFLAGS = -g -Wall -c
	LDFLAGS = -g -Wall

all: checker

checker : checker.o hashtable.o
	$(CC) $(LDFLAGS) -o checker checker.o hashtable.o

checker.o : checker.c checker.h hashtable.h
	$(CC) $(CFLAGS) checker.c

hashtable.o : hashtable.c hashtable.h
	$(CC) $(CFLAGS) hashtable.c

clean :
	rm *.o

test : clean checker
	touch testOutput
	cat sampleInput | ./philspel sampleDictionary >	 testOutput
	@echo The following should be empty if there are no problems
	diff sampleOutput testOutput 2> /dev/null
	@echo Testing complete

