package src;
import src.Token;
%%

%{
	private void imprimir(String descricao, String lexema){
		System.out.println(lexema + "-" + descricao);
	}
%}
%class AnalisadorLexico
%type Token

branco = [ |\n|\r]*
tabulacao = [\t]+
letra = [a-zA-Z]+
digito = [0-9]+
espaco = [ ]

%%

"."		{imprimir("Ponto", yytext());}
","		{imprimir("Vírgula", yytext());}
";"		{imprimir("Ponto e vírgula", yytext());}
"("		{imprimir("Abre parêntese", yytext());}
")"		{imprimir("Fecha parêntese", yytext());}
"["		{imprimir("Abre colchete", yytext());}
"]"		{imprimir("Fecha colchete", yytext());}
"+"		{imprimir("Operador de adição", yytext());}
"-" 	{imprimir("Operador de subtração", yytext());}
"'"		{imprimir("Aspas simples", yytext());}
"|"		{imprimir("Pipe", yytext());}
"!"		{imprimir("Exclamação", yytext());}
"*"		{imprimir("Multiplicação", yytext());}
"^"		{imprimir("Potenciação", yytext());}
">" 	{imprimir("Maior", yytext());}
"<" 	{imprimir("Menor", yytext());}
"<>" 	{imprimir("Diferente", yytext());}
"<=" 	{imprimir("Menor igual", yytext());}
">=" 	{imprimir("Maior igual", yytext());}
" \%" 	{imprimir("Resto da divisão", yytext());}
"=" 	{imprimir("Atribuição", yytext());}
"==" 	{imprimir("Igualdade", yytext());}
"/" 	{imprimir("Divisão", yytext());}

. { throw new RuntimeException("Caractere invalido" + yytext()); }
