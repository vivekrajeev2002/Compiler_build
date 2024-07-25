%{
int count = 0;
%}
%%
if|else|main|int|char|printf  {printf("Keyword  - %s \n",yytext);}
[+|-|*|/|%] {printf("Operator - %s\n",yytext);}
["{","}",";",":","(",")",","" ","\t"] {printf("Delimiter %s\n",yytext);}
[a-zA-Z1-9]* {printf("Identifier %s\n",yytext);}
\n {return 0;}
%%
int main()
{
yylex();
return 0;
}
