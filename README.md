### Logo Programming

> The Logo Programming Language, a dialect of Lisp, was designed as a tool for
> learning. Its features - interactivity, modularity, extensibility,
> flexibility of data types - follow from this goal. 

```ebnf
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
```

- http://el.media.mit.edu/logo-foundation/what_is_logo/index.html
- http://el.media.mit.edu/logo-foundation/what_is_logo/logo_primer.html
- http://el.media.mit.edu/logo-foundation/what_is_logo/logo_programming.html
