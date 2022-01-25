
CFLAGS  = -Wall -g
LDFLAGS = -g
LDLIBS_CMOCKA = -lcmocka

all : target

target:
	gcc main.c -o Target

test:
	gcc test.c $(LDLIBS_CMOCKA) -o Test

.PHONY: run
run : target
	./Target

.PHONY: test_mocka
test_mocka : test
	./Test

.PHONY: clean
clean:
	rm -f Target
	rm -f *.o
