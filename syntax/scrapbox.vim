" Scrapbox Syntax Plugin
" Maintainer: Syusui Moyatani <syusui.s[a]gmail.com>
" License: Creative Commons Zero 1.0 Universal

syn match scrapboxTitle     /^\%1l.*$/ skipnl

syn match  scrapboxStrong   /\[\*\{1,}\s[^]]*\]/ contains=scrapboxLink
syn match  scrapboxStrong   /\[\[[^]]\{1,}\]\]/  contains=scrapboxLink
syn match  scrapboxEmphasis /\[\/\{1,}\s[^]]*\]/ contains=scrapboxLink
syn match  scrapboxStrike   /\[-\{1,}\s[^]]*\]/  contains=scrapboxLink

syn match  scrapboxLink     /\[https\?:\/\/[^]]*\]/
syn match  scrapboxLink     /\[https\?:\/\/[^ ]*\s\{1,}[^]]*\]/
syn match  scrapboxLink     /\[[^]]\{-}\s\{1,}https\?:\/\/[^]]*\]/
""syn match  scrapbokLink     /\[[^!"#%&'()*+,-./{|}<>_~[][^]]*\]/
syn match  scrapboxLink     /^#[^ ]*/

syn region scrapboxCode     start=/^\z(\s*\)code:\([^\s]*\)/ skip=/^\z1\s/ end=/^/
syn match  scrapboxCode     /\`[^`]*\`/

syn match  scrapboxQuote    /^\s*>.*$/ contains=scrapboxLink,scrapboxCode,scrapboxStrong,scrapboxEmphasis,scrapboxStrike

hi def link scrapboxTitle    Function
hi def link scrapboxLink     Underlined
hi def link scrapboxStrong   Type
hi def link scrapboxEmphasis Special
hi def link scrapboxCode     String
hi def link scrapboxQuote    Comment
hi def link scrapboxStrike   Comment
""hi scrapboxStrike term=strikethrough gui=strikethrough
