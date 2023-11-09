%option main
digit 		[0-9]
integer 	{digit}+
normal_char 	[A-Za-z_]
alphanumeric 	({normal_char}|{digit})
special_chars 	[\?!@#\$%\^\&\*\(\)\+=/-\;\'\"\|\{\}\[\]\:\.\,<>~\-\\]
complexstring 	\"({alphanumeric}|{special_chars}|" ")*\"
string 	        {normal_char}+
hash 		#
comment 	{hash}([^\n])*{hash}
%%
int 		printf("INT");
int_arr 	printf("INT_ARR");
func 		printf("FUNC ");
echo 		printf("ECHO ");
read 		printf("READ ");
if 		    printf("IF ");
else 		printf("ELSE ");
return 		printf("RETURN ");
for 		printf("FOR ");
while 		printf("WHILE ");
{comment} 	printf("COMMENT ");
{string} 	printf("IDENTIFIER ");
\; 		        printf( "SC ");
\( 		        printf( "LP ");
\) 		        printf( "RP ");
\[ 		        printf( "LSB ");
\] 		        printf( "RSB ");
\{ 		        printf( "LCB ");
\} 		        printf( "RCB ");
\, 		        printf( "COMMA ");
\!      	    printf( "NOT ");
\+      	    printf( "PLUS ");
\-      	    printf( "MINUS ");
\*      	    printf( "MUL ");
\/      	    printf( "DIV ");
\%      	    printf( "MOD ");
\*\*    	    printf( "EXP ");
\|      	    printf( "OR ");
\&      	    printf( "AND ");
\=\=    	    printf( "EQ ");
\!\=    	    printf( "NOTEQ ");
\<\=    	    printf( "LTE ");
\>\=    	    printf( "GTE ");
\<      	    printf( "LT ");
\>      	    printf( "GT ");
= 		printf("ASSIGN ");
{integer} 	printf("CONST ");
{complexstring} 	printf("STR ");

