" Scrapbox Syntax Plugin
" Maintainer: Syusui Moyatani <syusui.s[a]gmail.com>
" License: Creative Commons Zero 1.0 Universal

syn match scrapboxTitle     /^\%1l.*$/

syn cluster scrapboxSBracketContent contains=scrapboxBig,scrapboxItalic,scrapboxStrike,scrapboxBody
syn cluster scrapboxSBracketLink    contains=scrapboxSLink1,scrapboxSLink2,scrapboxSLink3,scrapboxSLink4
syn region  scrapboxSBracket        keepend start=/\[/ms=s+1 end=/\]/me=e-1           contains=@scrapboxSBracketContent,@scrapboxSBracketLink oneline transparent
syn region  scrapboxSLink           keepend start=/\[/ms=s+1 end=/\]/me=e-1 contained contains=@scrapboxSBracketLink                          oneline transparent

syn match  scrapboxStrong   /\[\[[^]]\{1,}\]\]/
syn match  scrapboxBig      /\*\{1,}.*/ contained contains=@scrapboxSBracketContent,@scrapboxSBracketLink
syn match  scrapboxItalic   /\/\{1,}.*/ contained contains=@scrapboxSBracketContent,@scrapboxSBracketLink
syn match  scrapboxStrike   /-\{1,}.*/  contained contains=@scrapboxSbracketContent,@scrapboxSBracketLink
syn match  scrapboxBody     /\s\{1,}.*/ contained contains=scrapboxSLink transparent
syn match  scrapbokSLink4   /.\{1,}/                           contained
syn match  scrapboxSLink1   /https\?:\/\/.\{1,}/               contained
syn match  scrapboxSLink2   /https\?:\/\/\S\{1,}\s\{1,}.\{1,}/ contained
syn match  scrapboxSLink3   /.\{1,}\s\{1,}https\?:\/\/\S\{1,}/ contained

syn match  scrapboxDLink    /https\?:\/\/\S\{1,}/
syn match  scrapboxTag      /#\S\{1,}/

syn region scrapboxCode     start=/^\z(\s*\)code:\(\S*\)/ skip=/^\z1\s/ end=/^/
syn match  scrapboxCode     /\`[^`]*\`/

syn match  scrapboxQuote    /^\s*>.*$/   contains=scrapboxSBracket
syn match  scrapboxNumber   /^\s*\d\.\s/ contains=scrapboxSBracket

hi def link scrapboxTitle    Function
hi def link scrapboxSBracketLink   Underlined
hi def link scrapboxSLink1   Underlined
hi def link scrapboxSLink2   Underlined
hi def link scrapboxSLink3   Underlined
hi def link scrapboxSLink4   Underlined
hi def link scrapboxTag      Underlined
hi def link scrapboxDLink    Underlined
hi def link scrapboxBig      Type
hi def link scrapboxStrong   Type
hi def link scrapboxItalic   Special
hi def link scrapboxNumber   Type
hi def link scrapboxCode     String
hi def link scrapboxQuote    Comment
hi def link scrapboxStrike   Comment
""hi scrapboxStrike term=strikethrough gui=strikethrough
