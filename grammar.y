MAIN    = { stmt } ;
stmt    = call
        | loop
        | cond
        | func ;

cond    = "if" expr block ;
loop    = "repeat" num block ;
call    = id [ expr ] ;
func    = "to" id { arg } { stmt } "end" ;

block   = "[" { stmt } "]" ;

expr    = unary
        | binary
        | unit ;

unary   = op unit ;
binary  = unit op unit ;
unit    = num | arg | symbol ;

arg     = ":", id ;
char    = 'a' .. 'z' ;
id      = { char } ;
digit   = 0 .. 9 ;
num     = [ "-" ] { digit } ;
symbol  = """ id ;
