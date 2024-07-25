%{
int count = 0;
%}
%%
[a-zA-Z]* {if(yyleng>5 && yyleng<100){count++;printf("%s letters greter than five \n",yytext);}}
.
\n {return 0;}
%%
int main()
{
yylex();
printf("\nNumber of words with letter greater than five - %d\n",count);
return 0;
}
