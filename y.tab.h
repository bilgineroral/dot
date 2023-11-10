/* A Bison parser, made by GNU Bison 3.5.1.  */

/* Bison interface for Yacc-like parsers in C

   Copyright (C) 1984, 1989-1990, 2000-2015, 2018-2020 Free Software Foundation,
   Inc.

   This program is free software: you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation, either version 3 of the License, or
   (at your option) any later version.

   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.

   You should have received a copy of the GNU General Public License
   along with this program.  If not, see <http://www.gnu.org/licenses/>.  */

/* As a special exception, you may create a larger work that contains
   part or all of the Bison parser skeleton and distribute that work
   under terms of your choice, so long as that work isn't itself a
   parser generator using the skeleton or a modified version thereof
   as a parser skeleton.  Alternatively, if you modify or redistribute
   the parser skeleton itself, you may (at your option) remove this
   special exception, which will cause the skeleton and the resulting
   Bison output files to be licensed under the GNU General Public
   License without this special exception.

   This special exception was added by the Free Software Foundation in
   version 2.2 of Bison.  */

/* Undocumented macros, especially those whose name start with YY_,
   are private implementation details.  Do not rely on them.  */

#ifndef YY_YY_Y_TAB_H_INCLUDED
# define YY_YY_Y_TAB_H_INCLUDED
/* Debug traces.  */
#ifndef YYDEBUG
# define YYDEBUG 0
#endif
#if YYDEBUG
extern int yydebug;
#endif

/* Token type.  */
#ifndef YYTOKENTYPE
# define YYTOKENTYPE
  enum yytokentype
  {
    INT = 258,
    INT_ARR = 259,
    FUNC = 260,
    ECHO = 261,
    READ = 262,
    IF = 263,
    ELSE = 264,
    RETURN = 265,
    FOR = 266,
    WHILE = 267,
    IDENTIFIER = 268,
    SC = 269,
    LP = 270,
    RP = 271,
    LSB = 272,
    RSB = 273,
    LCB = 274,
    RCB = 275,
    COMMA = 276,
    NOT = 277,
    PLUS = 278,
    MINUS = 279,
    MUL = 280,
    DIV = 281,
    MOD = 282,
    EXP = 283,
    OR = 284,
    AND = 285,
    EQ = 286,
    NOTEQ = 287,
    LTE = 288,
    GTE = 289,
    LT = 290,
    GT = 291,
    ASSIGN = 292,
    CONST = 293,
    STR = 294,
    COMMENT = 295,
    NL = 296,
    SPECHAR = 297
  };
#endif
/* Tokens.  */
#define INT 258
#define INT_ARR 259
#define FUNC 260
#define ECHO 261
#define READ 262
#define IF 263
#define ELSE 264
#define RETURN 265
#define FOR 266
#define WHILE 267
#define IDENTIFIER 268
#define SC 269
#define LP 270
#define RP 271
#define LSB 272
#define RSB 273
#define LCB 274
#define RCB 275
#define COMMA 276
#define NOT 277
#define PLUS 278
#define MINUS 279
#define MUL 280
#define DIV 281
#define MOD 282
#define EXP 283
#define OR 284
#define AND 285
#define EQ 286
#define NOTEQ 287
#define LTE 288
#define GTE 289
#define LT 290
#define GT 291
#define ASSIGN 292
#define CONST 293
#define STR 294
#define COMMENT 295
#define NL 296
#define SPECHAR 297

/* Value type.  */
#if ! defined YYSTYPE && ! defined YYSTYPE_IS_DECLARED
typedef int YYSTYPE;
# define YYSTYPE_IS_TRIVIAL 1
# define YYSTYPE_IS_DECLARED 1
#endif


extern YYSTYPE yylval;

int yyparse (void);

#endif /* !YY_YY_Y_TAB_H_INCLUDED  */
