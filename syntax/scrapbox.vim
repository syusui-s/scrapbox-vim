" Scrapbox Syntax Plugin
" Maintainer: Syusui Moyatani <syusui.s[a]gmail.com>
" License: Creative Commons Zero 1.0 Universal

syn match  scrapboxStrong   /\[\*\{1,} [^]]*\]/ contains=scrapboxLink
syn match  scrapboxStrong   /\[\[[^]]*\]\]/     contains=scrapboxLink
syn match  scrapboxEmphasis /\[\/\{1,} [^]]*\]/ contains=scrapboxLink
syn match  scrapboxStrike   /\[-\{1,} [^]]*\]/  contains=scrapboxLink

syn match  scrapboxLink     /\[https\?:\/\/[^]]*\]/
syn match  scrapboxLink     /\[https\?:\/\/[^ ]*\s\{1,}[^]]*\]/
syn match  scrapboxLink     /\[[^]]\{-}\s\{1,}https\?:\/\/[^]]*\]/
syn match  scrapbokLink     /\[\(\h\w\s*\)\{1,}\]/
syn match  scrapboxLink     /^#[^ ]*/

syn region scrapboxCode     start=/^\z(\s*\)code:\([^ ]*\)/ skip=/^\z1\s/ end=/^/
syn match  scrapboxCode     /\`[^`]*\`/

syn match  scrapboxQuote    /^\s*>.*$/ contains=scrapboxLink,scrapboxCode,scrapboxStrong,scrapboxEmphasis

hi def link scrapboxLink     Underlined
hi def link scrapboxStrong   Special
hi def link scrapboxEmphasis Todo
hi def link scrapboxCode     String
hi def link scrapboxQuote    Comment

hi scrapboxStrike term=strikethrough,underline gui=strikethrough,underline
