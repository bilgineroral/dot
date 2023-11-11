parser: y.tab.c lex.yy.c y.tab.h
	gcc -o parser y.tab.c
y.tab.c: dotyacc.y
	yacc -d dotyacc.y
lex.yy.c: dot.l
	lex dot.l
clean:
	rm -f lex.yy.c y.tab.h y.tab.c parser
