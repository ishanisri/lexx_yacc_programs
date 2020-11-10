%{
// declarations.
int count = 0;
%}
%%
([a-zA-Z])* {check();}
"\n" {printf("\n%d\n", count); count = 0;} 
%%
int yywrap(void){} 
void check() {
  int vowelCount = 0;
  for(int i=0;i<yyleng;i++)
  {  if(yytext[i]=='a'|| yytext[i]=='e' || yytext[i]=='i' || yytext[i]=='o' || yytext[i]=='u' 
       || yytext[i]=='A' || yytext[i] == 'E' || yytext[i] == 'I' || yytext[i] == 'O' || yytext[i] == 'U')
       vowelCount++;  }
   if(vowelCount>=2)
    { printf("%s",yytext);
     count++;
}
  
}
int main()
{
  printf("Enter the string:");
  yylex(); // Start lexical analysis.
  return 0;
}
