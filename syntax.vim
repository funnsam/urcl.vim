if exists("b:current_syntax")
    finish
endif

syn match UrclLabel /\v\c\.[_a-z0-9]+/
syn match UrclLabel /\v\c\~[\+\-]?(0x\x+|0b[0-1]+|0o[0-7]+|\d+)/
syn match UrclLdSym /\v\c![_a-z0-9]+/
syn match UrclIdent /\v\c[_a-z0-9]+/

syn match UrclComment "\v//.*$"
syn region UrclComment start="/\*" end="\*/"

syn match UrclMacro /\v\c\@[_a-z0-9]+/
syn keyword UrclHeader minreg minheap bits run minstack
syn match UrclRegister /\v\c((r|\$)\d+|pc|sp)/
syn match UrclHeap /\v\c(m|\#)\d+/
syn match UrclPort /\v\%[_a-zA-Z0-9]+/

syn match UrclImm /\v\c[\+\-]?(0x\x+|0b[0-1]+|0o[0-7]+|\d+)/
syn match UrclImm /\v\d+\.\d*/
syn match UrclImm /\v\d*\.\d+/

syn match UrclEscape /\v\\(u\x{4}|x\x{2}|.)/
syn region UrclStr start=/"/ end=/"/ end=/$/ skip=/\v\\./ contains=UrclEscape
syn region UrclChr start=/'/ end=/'/ end=/$/ skip=/\v\\./ contains=UrclEscape

syn match UrclInst /\v\c^\s*[a-z]+/

hi def link UrclChr Character
hi def link UrclComment Comment
hi def link UrclEscape @string.escape
hi def link UrclHeader Keyword
hi def link UrclHeap Type
hi def link UrclIdent Normal
hi def link UrclImm Number
hi def link UrclInst Keyword
hi def link UrclLabel Label
hi def link UrclLdSym Function
hi def link UrclMacro Define
hi def link UrclPort Constant
hi def link UrclRegister Identifier
hi def link UrclStr String

let b:current_syntax = "urcl"
