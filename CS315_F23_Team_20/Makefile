parser: y.tab.c lex.yy.c y.tab.h
	gcc -o parser y.tab.c
y.tab.c: CS315_F23_Team20.yacc
	yacc -d CS315_F23_Team20.yacc
lex.yy.c: CS315_F23_Team20.lex
	lex CS315_F23_Team20.lex
clean:
	rm -f lex.yy.c y.tab.h y.tab.c parser
