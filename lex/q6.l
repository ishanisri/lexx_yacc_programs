%{ 
#include<stdio.h> 
#include<string.h> 
int words = 0, lines = 0, characters = 0, numbers = 0, spaces = 0, comma = 0, fullstop = 0;
%} 
  
%% 
([a-zA-Z])+  {characters += yyleng; words++;}
[0-9] {numbers++;}
" " {spaces++;}
"," {comma++;}
"." {fullstop++;}  
\n {return 0;} 
%% 
  
int yywrap(void){} 
  
int main() 
{   
    printf("Enter your input: ");
    yylex(); 
    printf("\nThe number of words in this paragraph = %d", words);
    printf("\nThe number of lines in this paragraph = %d", fullstop);
    printf("\nThe number of characters in this paragraph = %d", characters);
    printf("\nThe number of numbers in this paragraph = %d", numbers);
    printf("\nThe number of spaces in this paragraph = %d", spaces);
    printf("\nThe number of comma in this paragraph = %d", comma);
    printf("\nThe number of fullstop in this paragraph = %d", fullstop);
    return 0; 
} 