
all: Bonusexe
    
Bonusexe: Bonusobj
	gcc -o p6 p6.o -L/usr/lib/x86_64-linux-gnu/ -lgsl -lgslcblas -lm
	del .\p6.o
    
Bonusobj: ./src/p6.c
	gcc -c -o p6.o ./src/p6.c -I/usr/include
     
clean:
	del .\p6.exe