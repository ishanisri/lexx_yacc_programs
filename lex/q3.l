%{ 
#include<stdio.h> 
#include<string.h> 
int keywords = 0, identifiers = 0, operators = 0, specialSymbols = 0;
%} 
  
%%
auto|include|stdio|main|double|int|struct|break|else|long|switch|case|enum|register|typedef|char|extern|return|union|continue|for|signed|void|do|if|static|while|default|goto|sizeof|volatile|const|float|short|printf|scanf     {keywords++;} 	

[$@#;]                                     {specialSymbols++;}

[+-/=*%^]                                  {operators++;}	

([a-zA-Z][0-9])+|[a-zA-Z]*                 {identifiers++;}    

. {}

\n {return 0;}  															
%%
  
int yywrap(void){} 
  
int main() 
{   
    printf("Enter the C program\n");
    yylex(); 
    printf("\n The number of special symbols = %d\n", specialSymbols);
    printf("\n The number of operators = %d\n", operators);
    printf("\n The number of keywords = %d\n", keywords);
    printf("\n The number of identifiers = %d\n", identifiers);
    return 0; 
} 