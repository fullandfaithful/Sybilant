" Sybilant
" Language: Shen
" Maintainer: fullandfaithful

if exists("b:current_syntax")
  finish
endif

" Syntax: {{{

syn keyword todo TODO XXX
syn region comment start='\\\\' end='\n' contains=todo
syn region bcomment start='\\*' end='*\\' fold transparent

syn match funcallSymbol '\((\s*\)\@<=\<[^() \t]\+\>'
syn match exteriorSymbol '\<[^() \t]\+:\{1,2}[^() \t]\+\>'
syn match exteriorFuncallSymbol '\((\s*\)\@<=\<[^() \t]\+:\{1,2}[^() \t]\+\>'
syn match functionNamespace '#\'[^() \t]\+'
syn match variable '[A-Z][^ \(\)\[\]<>"]*'
syn match rule '->'

syn match defSymbol '\<def[^() \t]\+\>'
syn match exteriorDefSymb '\<[^() \t]\+:def[^() \t]\+\>'
syn match withSymbol '\<with[^() \t]\+\>'
syn match exteriorWithSymb '\(\<[^() \t]\+\):with[^() \t]\+\>'
syn match string '\([''"]\)\(.\{-}\)\1'

syn region sexpr start='(' end=')' fold transparent

" }}}
" Highlighting Groups: {{{

hi def link funcallSymbol SybilFunction
hi def link exteriorSymbol SybilExtSymb
hi def link exteriorFuncallSymbol SybilExtFunSymb
hi def link functionNamespace SybilFunName
hi def link rule SybilLLI
hi def link comment SybilComment
hi def link variable SybilKey
hi def link string SybilString


hi def link defSymbol SybilDefSymb
hi def link exteriorDefSymb SybilExtDefSymb
hi def link withSymbol SybilWSymb
hi def link exteriorWithSymb SybilExtWSymb
hi def link todo SybilTodo

" }}}

let b:current_syntax = 'lisp'

" vim: set foldmethod=marker
