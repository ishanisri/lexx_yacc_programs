%{
// declarations.
int count = 0;
%}
%%
[aeiouAEIOU] {count++;}
[a-zA-Z.,] {printf("");}
"\n" {printf("\n%d\n", count); count = 0;} 
%%
int yywrap(void){} 
int main()
{
  printf("Enter the string:");
  yylex(); // Start lexical analysis.
  return 0;
}
