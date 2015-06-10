/*
 *  A very basic introduction of Lexers and Parsers
 *  http://www.theendian.com/blog/category/general/
 * */
 
grammar Drink;

//Parser rules

drinkSentence : ARTICLE ? DRINKING_VESSEL OF drink;
drink : TEXT;

//Lexer rules
ARTICLE : 'the' | 'an' | 'a' ;
OF : 'of' ;
DRINKING_VESSEL : 'cup' | 'pint' | 'shot' | 'mug' | 'glass'; 
TEXT : ('a'..'z')+;
WHITESPACE :  ( '\t' | ' ' | '\r' | '\n'| '\u000C' )+ -> skip ;