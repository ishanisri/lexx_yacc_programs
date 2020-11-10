%{
// declarations.
%}
%%
[a-z] {printf("%c",yytext[yyleng-1]-32);}
%%
int yywrap(void){} 
int main()
{
  printf("Enter the string:");
  yylex(); // Start lexical analysis.
  return 0;
}
