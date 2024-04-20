Oper: opersys.o fib.o
	gcc opersys.o fib.o -o Oper

opersys.o : opersys.cpp
	gcc -c opersys.cpp -o opersys.o

fib.o : fib.cpp
	gcc -c fib.cpp -o fib.o
