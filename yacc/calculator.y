%{ 
/* Definition section */
#include<stdio.h> 
int flag=0; 
%} 

%token NUMBER 

%left '|'

%left '^'

%left '&'

/* Rule Section */
%% 

S: E{ 

		printf("\nResult=%d\n", $$); 

		return 0; 

		}; 
E:E'&'E {$$=(int)$1&(int)$3;} 

|E'^'E {$$=(int)$1^(int)$3;} 

|E'|'E {$$=(int)$1|(int)$3;} 

| NUMBER {$$=$1;} 

; 

%% 

//driver code 
void main() 
{ 
printf("\nEnter Any Arithmetic Expression:\n"); 

yyparse(); 
if(flag==0) 
printf("\nEntered arithmetic expression is Valid\n\n"); 
} 

void yyerror() 
{ 
printf("\nEntered arithmetic expression is Invalid\n\n"); 
flag=1; 
} 
