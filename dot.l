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
int 		printf("INT ");
int_arr 	printf("INT_ARR ");
func 		printf("FUNC ");
echo 		printf("ECHO ");
read 		printf("READ ");
if 		    printf("IF ");
else 		printf("ELSE ");
return 		printf("RETURN ");
for 		printf("FOR ");
while 		printf("WHILE ");
{comment} 	printf("COMMENT ");
{identifier} 	printf("IDENTIFIER ");
\; 		printf("SC ");
\( 		printf("LP ");
\) 		printf("RP ");
\[ 		printf("LSB ");
\] 		printf("RSB ");
\{ 		printf("LCB ");
\} 		printf("RCB ");
\, 		printf("COMMA ");
\!      printf("OP ");
\+      printf("OP ");
\-      printf("OP ");
\*      printf("OP ");
\/      printf("OP ");
\%      printf("OP ");
\*\*    printf("OP ");
\|      printf("OP ");
\&      printf("OP ");
\=\=    printf("OP ");
\!\=    printf("OP ");
\<\=    printf("OP ");
\>\=    printf("OP ");
\<      printf("OP ");
\>      printf("OP ");
= 		printf("ASSIGN ");
{integer} 	printf("CONST ");
{string} 	printf("STR ");
