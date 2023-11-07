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
int 		return INT;
int_arr 	return INT_ARR;
func 		return FUNC;
echo 		return ECHO;
read 		return READ;
if 		    return IF;
else 		return ELSE;
return 		return RETURN;
for 		return FOR;
while 		return WHILE;
{comment} 	return COMMENT;
{identifier} 	return IDENTIFIER;
\; 		return SC;
\( 		return LP;
\) 		return RP;
\[ 		return LSB;
\] 		return RSB;
\{ 		return LCB;
\} 		return RCB;
\, 		return COMMA;
\!      return NOT_OP;
\+      return PLUS_OP;
\-      return MINUS_OP;
\*      return MULT_OP;
\/      return DIV_OP;
\%      return MOD_OP;
\*\*    return EXP_OP;
\|      return OR_OP;
\&      return AND_OP;
\=\=    return EQ_OP;
\!\=    return NOTEQ_OP;
\<\=    return LEQ_OP;
\>\=    return GEQ_OP;
\<      return LT_OP;
\>      return GT_OP;
= 		return ASSIGN;
{integer} 	return CONST;
{string} 	return STR;
