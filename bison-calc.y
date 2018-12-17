%token  LF
%token  NUMBER
%left   ADD SUB
%left   MUL DIV
%%
list : /* empty */
     | list expr LF { printf("%d\n",$2); }
     ;
expr : expr ADD expr { $$ = $1 + $3; }
     | expr SUB expr { $$ = $1 - $3; }
     | expr MUL expr { $$ = $1 * $3; }
     | expr DIV expr { $$ = $1 / $3; }
     | NUMBER
     ;
%%
#include "bison-calc.h"
main(){
    yyparse();
}
