" Xeto syntax highlighting

if exists("b:current_syntax")
  finish
endif

syn match  xetoComment "//.*"
syn region xetoString  start=+"+ end=+"+
syn match  xetoId      "@[a-zA-Z0-9_]*\>"
syn match  xetoQname   "\<[a-z][a-zA-Z0-9_]*\>\(\.\<[a-z][a-zA-Z0-9_]*\>\)*::"
syn match  xetoType    "\<[A-Z][a-zA-Z0-9_]*\>"

hi def link xetoComment Comment
hi def link xetoString  String
hi def link xetoId      Identifier
hi def link xetoQname   PreProc
hi def link xetoType    Type

let b:current_syntax = 'xeto'
