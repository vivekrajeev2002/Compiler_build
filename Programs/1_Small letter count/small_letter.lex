%{
int count = 0;
%}
%%
[a-z] {printf("%s small letters \n",yytext);count++;}
. {printf("%s not a small letter\n",yytext);}
\n {return 0;}
%%
int main()
{
yylex();
printf("\nNumber of Small letters in the given input - %d\n",count);
return 0;
}
