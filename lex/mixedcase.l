%{
// declarations.
int count = 0;
%}
%%
([a-z])+ {printf("");} 
([A-Z])+ {printf("");}
[a-zA-Z]+ {printf("%s",yytext);count++;}
"\n" {printf("\n%d\n", count); count = 0;} 
%%
int yywrap(void){} 
int main()
{
  printf("Enter the string:");
  yylex(); // Start lexical analysis.
  return 0;
}
