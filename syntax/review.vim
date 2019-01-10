if exists('b:current_syntax')
  finish
endif
let b:current_syntax = 'review'

syn case match

syn match reviewCaption1  "^=\s\+.\+"
syn match reviewCaption2  "^==\s\+.\+"
syn match reviewCaption3  "^===\s\+.\+"
syn match reviewCaption4  "^====\s\+.\+"
syn match reviewColumn    "^=\+\[column\]\s\+.\+"

syn match reviewUnorderedList "^\s\+\*\s\+.*"
syn match reviewOrderedList   "^\s\+[0-9]\+\.\s\+.*"
syn match reviewDefinitions   "^\s\+\:\s\+.*"

syn match reviewBlockBegin "^//[a-z]\+\(\[.*\]\)*{"
syn match reviewBlockEnd "^//}"
syn match reviewSingle "^//[a-z]\+\(\[.*\]\)*"
syn match reviewRef "@<[a-z]\+>{.\{-\}}"

syn match reviewComment "^#@#.*"
syn match reviewWarn "^#@warn(.*)"
syn match reviewRequire "^#@require\s"
syn match reviewProvide "^#@provide\s"
syn region reviewMapfile start="^#@mapfile(.*)" end="#@end"
syn region reviewMaprange start="^#@maprange(.*)" end="#@end"
syn region reviewMapoutput start="^#@mapoutput(.*)" end="#@end"

hi def link reviewCaption1 Title
hi def link reviewCaption2 Constant
hi def link reviewCaption3 Identifier
hi def link reviewCaption4 Statement
hi def link reviewColumn Statement

hi def link reviewUnorderedList Special
hi def link reviewOrderedList Special
hi def link reviewDefinitions Special

hi def link reviewBlockBegin Type
hi def link reviewBlockEnd Type
hi def link reviewSingle Type
hi def link reviewRef Label

hi def link reviewComment Comment
hi def link reviewWarn WarningMsg
hi def link reviewRequire WarningMsg
hi def link reviewProvide WarningMsg
hi def link reviewMapfile WarningMsg
hi def link reviewMaprange WarningMsg
hi def link reviewMapoutput WarningMsg
