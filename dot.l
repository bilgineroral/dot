%{
#include <stdio.h>
#include "y.tab.h"
void yyerror(char *);
%}

digit 		[0-9]
integer 	{digit}+
normal_char 	[A-Za-z_]
alphanumeric 	({normal_char}|{digit})
special_chars 	[\?!@#\$%\^\&\*\(\)\+=/-\;\'\"\|\{\}\[\]\:\.\,<>~\-\\]
string 		\"({alphanumeric}|{special_chars}|" ")*\"
identifier 	{normal_char}+
hash 		#
comment 	{hash}([^\n])*{hash}
nl              \n

%option yylineno
%%
int 		    return INT;
int_arr 	    return INT_ARR;
func 		    return FUNC;
echo 		    return ECHO;
read 		    return READ;
if 		    return IF;
else 		    return ELSE;
return 		    return RETURN;
for 		    return FOR;
while 		    return WHILE;
{comment} 	    return COMMENT;
{identifier} 	    return IDENTIFIER;
\; 		    return SC;
\( 		    return LP;
\) 		    return RP;
\[ 		    return LSB;
\] 		    return RSB;
\{ 		    return LCB;
\} 		    return RCB;
\, 		    return COMMA;
\!      	    return NOT;
\+      	    return PLUS;
\-      	    return MINUS;
\*      	    return MUL;
\/      	    return DIV;
\%      	    return MOD;
\*\*    	    return EXP;
\|      	    return OR;
\&      	    return AND;
\=\=    	    return EQ;
\!\=    	    return NOTEQ;
\<\=    	    return LTE;
\>\=    	    return GTE;
\<      	    return LT;
\>      	    return GT;
= 		    return ASSIGN;
{integer} 	    return CONST;
{string} 	    return STR;
{nl}         	    { extern int lineno; lineno++;
                          return NL;
                    }

%%

int yywrap(void){
	return 1;
}
