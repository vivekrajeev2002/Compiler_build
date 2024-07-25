%{
int pcount = 0;
int ncount = 0;
%}
%%
\+?[1-9]* {pcount++;}
-[1-9]* {ncount++;}
\n {return 0;}
%%
int main()
{
yylex();
printf("\nNumber of Positive number = %d\nNumber of negative number in the given input - %d\n",pcount,ncount);
return 0;
}
