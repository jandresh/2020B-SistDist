objmaxrand:
	gcc -c maxrand.c
libmaxrand: objmaxrand
	ar rc libmaxrand.a maxrand.o
main: libmaxrand
	gcc -L . S2FiboStatus.c -o S2FiboStatus -lmaxrand
clean:
	rm -f maxrand.o libmaxrand.a S2FiboStatus
