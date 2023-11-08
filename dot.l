%{
#include <stdio.h>
#include "y.tab.h"
void yyerror(char *);
%}

%option main
digit 		[0-9]
integer 	{digit}+
normal_char 	[A-Za-z_]
alphanumeric 	({normal_char}|{digit})
operators 	(!|\+|\-|<|>|==|!=|\*\*|\+|-|\/|%|\*|\||&)
special_chars 	[\?!@#\$%\^\&\*\(\)\+=/-\;\'\"\|\{\}\[\]\:\.\,<>~\-\\]
string 		\"({alphanumeric}|{special_chars}|" "|\\n)*\"
identifier 	[A-Za-z_]+
hash 		#
comment 	{hash}([^\n])*{hash}
%%
int 		    return INT;
int_arr 	    return INT_ARR;
func 		    return FUNC;
echo 		    return ECHO;
read 		    return READ;
if 		        return IF;
else 		    return ELSE;
return 		    return RETURN;
for 		    return FOR;
while 		    return WHILE;
{comment} 	    return COMMENT;
{identifier} 	return IDENTIFIER;
\; 		        return SC;
\( 		        return LP;
\) 		        return RP;
\[ 		        return LSB;
\] 		        return RSB;
\{ 		        return LCB;
\} 		        return RCB;
\, 		        return COMMA;
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
= 		        return ASSIGN;
{integer} 	    return CONST;
{string} 	    return STR;

%%

int yywrap(void){
    return 1;
}
