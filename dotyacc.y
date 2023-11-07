%{
#include <stdio.h>
#include <stdlib.h>
int yylex(void);
void yyerror(char* s);
extern int yylineno;
%}

%token INT
%token INT_ARR
%token FUNC
%token ECHO
%token READ
%token IF
%token ELSE
%token RETURN
%token FOR
%token WHILE
%token IDENTIFIER
%token SC
%token LP
%token RP
%token LSB
%token RSB
%token LCB
%token RCB
%token COM
%token NOT
%token PLUS
%token MINUS
%token MUL
%token DIV
%token MOD
%token EXP
%token OR
%token AND
%token EQUALS
%token EQ
%token NOT_EQUALS
%token LTE
%token GTE
%token LT
%token GT
%token ASSIGN
%token CONST
%token STR
%token DQ
%token COMMENT
%%

program:
	stmt_list {printf("\rProgram is valid.\n");};

stmt_list: stmt SC
         | stmt SC stmt_list
         | COMMENT 
         | COMMENT stmt_list

stmt     : assign_stmt
         | declaration_stmt
         | if_stmt
         | while_stmt
         | for_stmt
         | func_dec_stmt
         | io_stmt
         | expression_stmt
         | return_stmt

block    : LCB stmt_list RCB

assign_stmt     : id EQ expression_stmt
               | id LSB expression_stmt RSB EQ 
   | expression_stmt

declaration_stmt: dec_w_assign
               | dec_wo_assign

dec_w_assign    : INT assign_stmt
               | INT_ARR id LSB CONST RSB EQ expression_stmt

dec_wo_assign   : INT id
               | INT_ARR id LSB CONST RSB

return_stmt    : RETURN expression_stmt

expression_stmt: arit_expr

io_stmt        : input_exp
               | output_exp

if_stmt        : IF LP expression_stmt RP block
               | IF LP expression_stmt RP block ELSE block

while_stmt     : WHILE LP expression_stmt RP block

for_stmt       : FOR LP dec_w_assign SC expression_stmt SC assign_stmt RP
               | FOR LP assign_stmt SC expression_stmt SC assign_stmt RP

arit_expr: arit_expr OR l7_expr
         | l7_expr

l7_expr  : l7_expr AND l6_expr
         | l6_expr

l6_expr  : l6_expr EQUALS l5_expr
         | l6_expr NOT_EQUALS l5_expr
         | l5_expr

l5_expr  : l5_expr LT l4_expr
         | l5_expr LTE l4_expr
         | l5_expr GT l4_expr
         | l5_expr GTE l4_expr
         | l4_expr

l4_expr  : l4_expr PLUS l3_expr
         | l4_expr MINUS l3_expr
         | l3_expr

l3_expr  : NOT l3_expr
         | l2_expr

l2_expr  : l2_expr MUL l1_expr
         | l2_expr DIV l1_expr
         | l2_expr MOD l1_expr
         | l1_expr

l1_expr  : l1_expr EXP l1_expr
         | l0_expr

l0_expr  : LP arit_expr RP
         | id
         | signed_int
         | func_call
         | input_exp
         | id LSB expression_stmt RSB

input_exp  : READ LP RP
          

output_exp : ECHO LP DQ complex_str DQ RP
           | ECHO LP expression_stmt RP

func_dec_stmt: FUNC id LP fd_parameters RP block
            | FUNC id LP RP block

func_call   : id LP fc_parameters RP
            | id LP RP

params      : INT id
            | INT_ARR id LSB RSB
            | INT id COM fd_parameters
            | INT_ARR id LSB RSB COM fd_parameters

fd_parameters: /* empty */
            | params

fc_parameters: /* empty */
	    | expression_stmt
            | expression_stmt COM fc_parameters

id          : STR 

int_arr     : LSB integer_group RSB

integer_group: signed_int
            | signed_int COM integer_group

signed_int  : pos_int
            | neg_int

neg_int     : MINUS CONST 

pos_int     : PLUS CONST
            | CONST

%%



void yyerror(char *s) {
	fprintf(stdout, "line %d: %s\n", yylineno,s);
}
int main(void){
 yyparse();
if(yynerrs < 1){
		printf("Parsing is successful\n");
	}
 return 0;
}
