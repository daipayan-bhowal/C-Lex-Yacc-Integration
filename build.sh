!/bin/sh

flex lex.l
bison -d parser.y
gcc -c lex.yy.c -lfl
gcc -c parser.tab.c
gcc lex.yy.o parser.tab.o -o compiler.o 