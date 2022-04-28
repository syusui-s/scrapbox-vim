" Scrapbox Syntax Plugin
" Maintainer: Syusui Moyatani <syusui.s[a]gmail.com>
" License: Creative Commons Zero 1.0 Universal
" Version: 1.0.0

syn match scrapboxTitle     /^\%1l.*$/

syn match  scrapboxDLink    /https\?:\/\/\S\{1,}/
syn match  scrapboxTag      /#\S\{1,}/

""" Brackets
syn cluster scrapboxSBracketContent contains=scrapboxBig,scrapboxItalic,scrapboxStrike,scrapboxUnder,scrapboxBody
syn cluster scrapboxSBracketLink    contains=scrapboxSLink1,scrapboxSLink2,scrapboxSLink3
syn region  scrapboxSBracket        keepend start=/\[/ms=s+1 end=/\]/me=e-1 contains=@scrapboxSBracketContent,@scrapboxSBracketLink,scrapboxPageLink oneline transparent
syn region  scrapboxSLink           keepend start=/\[/ms=s+1 end=/\]/me=e-1 contains=@scrapboxSBracketLink                                           oneline transparent contained

" [[Scrapbox]]
syn match  scrapboxStrong   /\[\[[^]]\{1,}\]\]/
" [Scrapbox]
syn match  scrapboxPageLink /.\{1,}/    contained
" [-*/_ Scrapbox]
syn match  scrapboxBody     /\s\{1,}.*/ contained contains=@scrapboxSLink transparent
" [- Scrapbox]
syn match  scrapboxStrike   /-\{1,}.*/  contained contains=@scrapboxSBracketContent,@scrapboxSBracketLink
" [/ Scrapbox]
syn match  scrapboxItalic   /\/\{1,}.*/ contained contains=@scrapboxSBracketContent,@scrapboxSBracketLink
" [* Scrapbox]
syn match  scrapboxBig      /\*\{1,}.*/ contained contains=@scrapboxSBracketContent,@scrapboxSBracketLink
" [_ Scrapbox]
syn match  scrapboxUnder    /_\{1,}.*/  contained contains=@scrapboxSBracketContent,@scrapboxSBracketLink

" [https://scrapbox.io/]
syn match  scrapboxSLink1   /https\?:\/\/\S\{1,}/              contained
" [https://scrapbox.io/ Scrapbox]
syn match  scrapboxSLink2   /https\?:\/\/\S\{1,}\s\{1,}.\{1,}/ contained
" [Scrapbox https://scrapbox.io/]
syn match  scrapboxSLink3   /.\{1,}\s\{1,}https\?:\/\/\S\{1,}/ contained

""" Line Start
" > Scrpabox
syn match  scrapboxQuote    /^\s*>.*$/   contains=scrapboxSBracket
" > 1. Scrapbox
syn match  scrapboxNumber   /^\s*\d\.\s/ contains=scrapboxSBracket

""" Code
" `"scrapbox"`
syn region scrapboxCode     start=/`/ end=/`/ skip=/\\`/ oneline
" $ ./scrapbox.sh or % ./scrapbox.sh
syn region scrapboxCode     start=/^\s*\$/ start=/^\s*%/ end=/$/
" code:_
syn region scrapboxCode     start=/^\z(\s*\)code:\(\S\+\)/ skip=/^\z1\s/ end=/^/

""" Highlight

hi def link scrapboxTitle    Function
hi def link scrapboxSBracketLink   Underlined
hi def link scrapboxSLink1   Underlined
hi def link scrapboxSLink2   Underlined
hi def link scrapboxSLink3   Underlined
hi def link scrapboxTag      Underlined
hi def link scrapboxPageLink Underlined
hi def link scrapboxDLink    Underlined
hi def link scrapboxBig      Type
hi def link scrapboxStrong   Type
hi def link scrapboxItalic   Special
hi def link scrapboxUnder    Underlined
hi def link scrapboxNumber   Type
hi def link scrapboxCode     String
hi def link scrapboxQuote    Comment
hi def link scrapboxStrike   Comment
""hi scrapboxStrike term=strikethrough gui=strikethrough
