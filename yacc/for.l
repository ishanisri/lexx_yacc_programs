alpha [A-Za-z]
digit [0-9]
%%
[ \t\n]  
for    return FOR;
"{" return OPEN;
"}" return CLOSE;
"(" return POPEN;
")" return PCLOSE;
"," return COMMA;
";" return SCOLON;
"break" return BREAK;
"continue" return CONTINUE;

"+" return PLUS;
"-" return MINUS;
"*" return MUL;
"/" return DIV;
"^" return EXPO;
"<" return LT;
"<=" return LE;
">" return GT;
">=" return GE;
"!=" return NE;
"=" return EQ;

"||" return OR;
"&&" return AND;
"!" return NOT;
"true" return TRUE;
"false" return FALSE;

[-]?{DIGIT}+  return NUM;
({ALPHA}|{US})({ALPHA}|{DIGIT}|{US})*  return ID;
.    {};
%%