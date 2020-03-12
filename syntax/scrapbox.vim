" Scrapbox Syntax Plugin
" Maintainer: Syusui Moyatani <syusui.s[a]gmail.com>
" License: Creative Commons Zero 1.0 Universal

syn match  scrapboxStrong   /\[\*\{1,} [^]]*\]/ contains=scrapboxLink
syn match  scrapboxEmphasis /\[\/\{1,} [^]]*\]/ contains=scrapboxLink
syn region scrapboxCode     start=/^\z([ \t]*\)code:[^.]\{1,}\(.[^ ]*\)$/ end=/^\z1$/

syn match  scrapboxLink     /\[[^]]*\]/ contained
syn match  scrapboxLink     /\(\s\{1,}\)\@<=#[^ ]*/ contained
syn match  scrapboxLink     /^#[^ ]*/ contained
syn match  scrapboxCode     /\`[^`]*\`/

hi def link scrapboxLink     Underlined
hi def link scrapboxStrong   Special
hi def link scrapboxEmphasis Special
hi def link scrapboxCode     String

